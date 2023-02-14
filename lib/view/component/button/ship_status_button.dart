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
                    '산정된 배송비(${p.shipment.amount})원은 배송 보류금액(${p.ioOrder.shipAmount!.amount})보다 높습니다.');
              } else {
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
  final TextEditingController _controller = TextEditingController();
  List<File> files = [];
  FirebaseStorage storage = FirebaseStorage.instance;
  @override
  void initState() {
    super.initState();
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
