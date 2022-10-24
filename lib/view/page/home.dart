part of './index.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page<void> page() => const MaterialPage<void>(child: HomePage());
  @override
  State<HomePage> createState() => _HomePageState();
}

const cardElevation = 12.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final user = context.select((AppBloc bloc) => bloc.state.user)!;
    final size = MediaQuery.of(context).size;
    final customColors = Theme.of(context).extension<CustomColors>()!;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/logo/1024x1024.png",
          fit: BoxFit.contain,
          width: 30,
        ),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: size.height * 0.75),
        child: BlocBuilder<ShipmentBloc, ShipmentState>(
          builder: (context, state) {
            final pickCnt =
                state.shipOrders.where((e) => e.order.isPickup).length;
            final shipCnt =
                state.shipOrders.where((e) => e.order.isShip).length;
            final tossCnt =
                state.tossData.where((e) => e.shipment.uncleId == null).length;
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => context
                      .read<AppBloc>()
                      .add(const SelectModule(ModulePage.pickupList)),
                  child: DashBoardCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('픽업목록',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.grey.shade500)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('$pickCnt 건',
                              style: textTheme.headline5?.copyWith(
                                  color: Theme.of(context).primaryColor)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () => context
                      .read<AppBloc>()
                      .add(const SelectModule(ModulePage.shipList)),
                  child: DashBoardCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('배송목록',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.grey.shade500)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('$shipCnt 건',
                              style: textTheme.headline5?.copyWith(
                                  color: Theme.of(context).primaryColor)),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    final bloc = context.read<AppBloc>();
                    bloc.add(const SelectModule(ModulePage.tossList));
                  },
                  child: DashBoardCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('미배정 배송목록',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.grey.shade500)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('$tossCnt 건',
                              style: textTheme.headline5?.copyWith(
                                  color: Theme.of(context).primaryColor)),
                        )
                      ],
                    ),
                  ),
                ),
                DashBoardCard(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('정산 예정액',
                              style: textTheme.headline5
                                  ?.copyWith(color: Colors.grey.shade500)),
                          Text('카카오뱅크 3333-17-170009',
                              style: textTheme.caption?.copyWith(
                                  color: customColors.primaryCloudy)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('999,999원',
                            style: textTheme.headline5?.copyWith(
                                color: Theme.of(context).primaryColor)),
                      )
                    ])),
                SizedBox(
                  height: size.height / 5,
                  child: Row(
                    children: [
                      Expanded(child: UserProfile(user: user)),
                      const SizedBox(width: 5),
                      Expanded(
                        child: LayoutBuilder(builder: (context, constraint) {
                          return SizedBox(
                            height: constraint.maxHeight,
                            width: constraint.maxWidth,
                            child:
                                ConnectState(textTheme: textTheme, user: user),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      )),
    );
  }
}

class ConnectState extends StatelessWidget {
  const ConnectState({
    Key? key,
    required this.textTheme,
    required this.user,
  }) : super(key: key);

  final TextTheme textTheme;
  final IoUser user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        final newUser =
            user.copyWith(workState: user.inWork ? "inactive" : "active");
        context.read<AppBloc>().add(AppUserChanged(newUser));
        await newUser.update(refreshUpdatedAt: false);
      },
      child: DashBoardCard(
          child: Text(
        user.inWork ? "퇴근!" : "업무시작!",
        style: textTheme.titleLarge,
      )),
    );
  }
}

class UserProfile extends StatelessWidget {
  final IoUser user;
  const UserProfile({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final children = <Widget>[
      Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Avatar(photo: user.userInfo.profileImg),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              user.userInfo.displayName ?? user.userInfo.userName,
              style: textTheme.titleLarge,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
      const SizedBox(height: 4),
      if (user.userInfo.phone != null)
        Text(user.userInfo.phone ?? "", style: textTheme.titleLarge),
      const SizedBox(height: 4),
      Text(user.userInfo.email ?? '', style: textTheme.caption),
      const SizedBox(height: 4),
      Text("활동상태: ${user.inWork ? '업무중' : '퇴근'}", style: textTheme.overline),
    ];
    return DashBoardCard(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children));
  }
}

class DashBoardCard extends StatelessWidget {
  const DashBoardCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
          child: Center(child: child)),
    );
  }
}

const _avatarSize = 24.0;

class Avatar extends StatelessWidget {
  const Avatar({super.key, this.photo});

  final String? photo;

  @override
  Widget build(BuildContext context) {
    final photo = this.photo;
    return CircleAvatar(
      radius: _avatarSize,
      backgroundImage: photo != null ? NetworkImage(photo) : null,
      child: photo == null
          ? const Icon(Icons.person_outline, size: _avatarSize)
          : null,
    );
  }
}
