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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            key: const Key('homePage_logout_iconButton'),
            icon: const Icon(Icons.exit_to_app),
            onPressed: () => context.read<AppBloc>().add(AppLogoutRequested()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1.5 / 1),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return DashBoardCard(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Size: ${size.height}',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.grey.shade500)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text('Item $index',
                              style: textTheme.headline5
                                  ?.copyWith(color: Colors.amber)),
                        )
                      ],
                    ),
                  );
                }),
            DashBoardCard(
                padding: const EdgeInsets.all(24),
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
                              style: textTheme.caption
                                  ?.copyWith(color: Colors.amber.shade300)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('999,999원',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.amber)),
                      )
                    ])),
            DashBoardCard(
                padding: const EdgeInsets.all(24),
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
                              style: textTheme.caption
                                  ?.copyWith(color: Colors.amber.shade300)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('999,999원',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.amber)),
                      )
                    ])),
            DashBoardCard(
                padding: const EdgeInsets.all(24),
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
                              style: textTheme.caption
                                  ?.copyWith(color: Colors.amber.shade300)),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text('999,999원',
                            style: textTheme.headline5
                                ?.copyWith(color: Colors.amber)),
                      )
                    ])),
            const SizedBox(height: 5),
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
                        child: DashBoardCard(
                            padding: const EdgeInsets.symmetric(
                                vertical: 24.0, horizontal: 12.0),
                            child: Text(
                              "픽업 시작!",
                              style: textTheme.titleLarge,
                            )),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  IoUser user;
  UserProfile({Key? key, required this.user}) : super(key: key);

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
          Text(user.userInfo.displayName ?? user.userInfo.userName,
              style: textTheme.titleLarge)
        ],
      ),
      const SizedBox(height: 4),
      if (user.companyInfo != null)
        Text(
            user.companyInfo?.companyPhone ??
                user.companyInfo?.managerPhone ??
                "",
            style: textTheme.titleLarge),
      const SizedBox(height: 4),
      Text(user.userInfo.email ?? '', style: textTheme.caption),
      const SizedBox(height: 4),
      Text("활동상태:  활동중", style: textTheme.overline),
    ];
    return DashBoardCard(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
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
    required this.padding,
  }) : super(key: key);

  final Widget child;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Padding(padding: padding, child: Center(child: child)),
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
