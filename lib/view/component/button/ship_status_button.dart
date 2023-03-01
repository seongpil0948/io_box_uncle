part of "./index.dart";

List<Widget> shipStatusBtns(BuildContext context, ShipOrder p) {
  final shipBloc = context.read<ShipmentBloc>();
  final appBloc = context.read<AppBloc>();
  return [
    if (p.order.state == OrderState.beforePickup)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(StartPickup(shipOrder: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "픽업시작 처리 하시겠습니까?");
          },
          child: const Text("픽업시작")),
    if (p.order.state == OrderState.beforePickup)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(RequestTossOrder(s: p));
              context.read<AppBloc>().add(DisSelectPickup());
            }, "해당 주문건을 다른 근로자에게 토스 하시겠어요?");
          },
          child: const Text("토스요청")),
    if (p.order.state == OrderState.ongoingPickup)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              if (!p.shipment.amountMeasurable) {
                showErrorSnack(context, '배송 제원정보가 누락 되었습니다.');
              } else if (p.ioOrder.shipAmount != null &&
                  p.ioOrder.shipAmount!.pendingAmount < p.shipment.amount) {
                showErrorSnack(context,
                    '산정된 배송비(${p.shipment.amount})원은 배송 보류금액(${p.ioOrder.shipAmount!.pendingAmount})보다 높습니다.');
              } else {
                // pickComplete(p, context);
                p = p.copyWith.ioOrder(
                    shipAmount:
                        p.ioOrder.shipAmount!.defrayPending(p.shipment.amount));

                appBloc.add(DisSelectPickup());
                shipBloc.add(DonePickup(shipOrder: p));
                showSuccessSnack(context, "픽업 완료~!");
              }
            }, "픽업완료 처리 하시겠습니까?");
          },
          child: const Text("픽업완료")),
    if (p.order.state == OrderState.pickupComplete)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(ToBeforeShip(shipOrder: p));
              appBloc.add(DisSelectPickup());
            }, "배송전 처리 하시겠습니까?");
          },
          child: const Text("배송전")),
    if (p.order.state == OrderState.beforeShip)
      OutlinedButton(
          onPressed: () {
            showConfirmClose(context, () {
              shipBloc.add(StartShip(shipOrder: p));
              appBloc.add(DisSelectPickup());
            }, "배송시작 처리 하시겠습니까?");
          },
          child: const Text("배송시작")),
    if (p.order.state == OrderState.shipping) ShipDoneBtn(p: p),
  ];
}

Future<void> showConfirmClose(
    BuildContext context, void Function() onConfirm, String content) {
  return showDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
            title: const Text("배송상태 변경"),
            content: Text(content),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("취소")),
              CupertinoDialogAction(
                  onPressed: () {
                    onConfirm();
                    Navigator.of(context).pop();
                  },
                  child: const Text("승인")),
            ],
          ));
}

// ignore: must_be_immutable
class ShipDoneBtn extends StatefulWidget {
  ShipOrder p;

  ShipDoneBtn({super.key, required this.p});

  @override
  State<ShipDoneBtn> createState() => _ShipDoneBtnState();
}

class _ShipDoneBtnState extends State<ShipDoneBtn> {
  late TextEditingController _controller;
  List<File> files = [];
  FirebaseStorage storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  Future<List<String>> uploadFiles(Reference baseRef) async {
    List<String> urls = [];
    for (var file in files) {
      final fileName = p.basename(file.path);
      try {
        final ref = baseRef.child(fileName);
        await ref.putFile(file);
        urls.add(await ref.getDownloadURL());
        debugPrint("$fileName: ${ref.fullPath}, ${ref.storage.app.toString()}");
      } catch (e) {
        showErrorSnack(context, '파일 업로드 실패.($fileName)');
      }
    }
    return urls;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final shipBloc = context.read<ShipmentBloc>();
    return OutlinedButton(
        onPressed: () {
          files = [];
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              useSafeArea: true,
              builder: (context) {
                final T = Theme.of(context).textTheme;
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 20,
                        left: 10,
                        right: 10,
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "배송 확인 이미지 첨부.",
                          style: T.headlineSmall,
                        ),
                        const SizedBox(height: 10),
                        Text("소매처에 전달 될 이미지를 저장해주세요.", style: T.bodyLarge),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            for (var i = 0; i < 3; i++)
                              SingleImageInput(
                                  key: ValueKey("single_img_input_$i"),
                                  onChangeFile: (file) {
                                    if (!files
                                        .any((el) => el.path == file.path)) {
                                      files.add(file);
                                    }
                                  }),
                          ],
                        ),
                        const SizedBox(height: 10),
                        TextField(
                            controller: _controller,
                            keyboardType: TextInputType.multiline,
                            maxLines: 4,
                            decoration: const InputDecoration(
                                hintText: "배송 하신 위치를 자세히 작성해주세요.",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                        width: 1, color: Colors.black38)))),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ConstrainedBox(
                              constraints: const BoxConstraints(minWidth: 120),
                              child: ElevatedButton(
                                  onPressed: () {
                                    final memo = _controller.text;
                                    final appBloc = context.read<AppBloc>();
                                    final scaffold =
                                        ScaffoldMessenger.of(context);
                                    if (memo.isEmpty) {
                                      showErrorAlert(
                                          context, "실패", "메모를 입력 해주십시오.");
                                      return;
                                    } else if (files.isEmpty) {
                                      showErrorAlert(
                                          context, "실패", "이미지를 첨부 해주십시오.");
                                      return;
                                    }
                                    uploadFiles(storage
                                            .ref('order/shipDoneImages/')
                                            .child(
                                                widget.p.shipment.shippingId))
                                        .then((urls) {
                                      widget.p = widget.p.copyWith.shipment(
                                          doneInfo: ShipDoneInfo(
                                              memo: memo, photos: urls));
                                      if (widget.p.shipment.shipDoneAble) {
                                        debugPrint("===> ship done!!!!!!");
                                        shipBloc
                                            .add(DoneShip(shipOrder: widget.p));
                                        Navigator.of(context).pop();
                                        appBloc.add(DisSelectPickup());
                                      } else {
                                        scaffold.showSnackBar(const SnackBar(
                                            content: Text('누락된 데이터가 있습니다.')));
                                      }
                                    });
                                  },
                                  child: Text("제출", style: T.labelLarge)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              });
        },
        child: const Text("배송완료"));
  }
}

// Future<void> pickComplete(ShipOrder p, BuildContext context) {
//   return showCupertinoDialog(
//       context: context,
//       builder: (context) =>
//           PickCompleteForm(key: const ValueKey("pickComplete"), p: p));
// }

// class PickCompleteForm extends StatefulWidget {
//   final ShipOrder p;
//   const PickCompleteForm({super.key, required this.p});

//   @override
//   State<PickCompleteForm> createState() => _PickCompleteFormState();
// }

// class _PickCompleteFormState extends State<PickCompleteForm> {
//   // none || partial || complete
//   PickState pickState = PickState.complete;
//   int pickCnt = 0;
//   @override
//   void initState() {
//     pickCnt = widget.p.ioOrder.orderCnts;
//     super.initState();
//   }

//   final _formKey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoAlertDialog(
//       title: const Text("픽업 완료 처리"),
//       content: Form(
//         key: _formKey,
//         autovalidateMode: AutovalidateMode.always,
//         child: Column(children: [
//           // CupertinoTextFormFieldRow(),
//           DropdownButtonFormField<PickState>(
//               value: pickState,
//               decoration: InputDecoration(
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.blue, width: 2),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 border: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.blue, width: 2),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 filled: true,
//                 fillColor: Colors.blueAccent,
//               ),
//               dropdownColor: Colors.amberAccent,
//               icon: const Icon(Icons.playlist_add_check_outlined),
//               style: const TextStyle(color: Colors.amber, fontSize: 25),
//               onChanged: (PickState? newValue) {
//                 setState(() {
//                   if (newValue != null) {
//                     pickState = newValue;
//                   }
//                 });
//               },
//               items: const [
//                 DropdownMenuItem(value: PickState.none, child: Text("전체미송")),
//                 DropdownMenuItem(value: PickState.partial, child: Text("부분미송")),
//                 DropdownMenuItem(
//                     value: PickState.complete, child: Text("전체완료")),
//               ]),
//           if (pickState == PickState.partial)
//             TextFormField(
//               keyboardType: TextInputType.number,
//               decoration: const InputDecoration(labelText: "픽업 개수 입력"),
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//               validator: (value) =>
//                   value == null || value.isEmpty || int.parse(value) < 1
//                       ? "0 이상 입력 해주세요"
//                       : null,
//               initialValue: pickCnt.toString(),
//               onChanged: (value) {
//                 final cnt = int.tryParse(value);
//                 if (cnt != null) {
//                   pickCnt = cnt;
//                 }
//               },
//             ),
//         ]),
//       ),
//       actions: [
//         CupertinoDialogAction(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             child: const Text("취소")),
//         CupertinoDialogAction(
//             onPressed: () async {
//               if (_formKey.currentState == null ||
//                   !_formKey.currentState!.validate()) {
//                 return showErrorSnack(context, "다시 시도해주세요.");
//               }
//               _formKey.currentState!.save();

//               // switch (pickState) {
//               //   case PickState.partial:
//               //     final returnCnt = widget.p.ioOrder.orderCnts - pickCnt;
//               //     final returnPrice =
//               //         widget.p.vendorGarment.vendorPrice * returnCnt;
//               //     final shopPay =
//               //         await getIoPay(widget.p.shopUser.userInfo.userId);
//               //     final unclePay =
//               //         await getIoPay(widget.p.managerUser.userInfo.userId);
//               //     if (shopPay != null && unclePay != null) {
//               //       await shopPay.updateIoPay(
//               //           PayHistState.returnPickupAmount, returnPrice, 0, null);
//               //       await unclePay.updateIoPay(
//               //           PayHistState.returnPickupAmount, 0, -returnPrice, null);
//               //     }
//               //   case PickState.none
//               context.read<AppBloc>().add(DisSelectPickup());
//               context.read<ShipmentBloc>().add(DonePickup(
//                   shipOrder: widget.p.copyWith.ioOrder(
//                       shipAmount: widget.p.ioOrder.shipAmount!
//                           .defrayPending(widget.p.shipment.amount))));
//               Navigator.of(context).pop();
//             },
//             child: const Text("승인")),
//       ],
//     );
//   }
// }

// enum PickState { none, partial, complete }
