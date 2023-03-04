part of 'index.dart';

const defaultUrl = "https://inout-box.com/logo.png";
Widget getAvatar(double? radius, String? imgUrl) => CircleAvatar(
    radius: radius,
    backgroundImage: CachedNetworkImageProvider(imgUrl ?? defaultUrl));

// ignore: must_be_immutable
class IoEditAvatar extends StatefulWidget {
  final double? radius;
  IoUser user;
  IoEditAvatar({
    Key? key,
    this.radius,
    required this.user,
  }) : super(key: key);
  @override
  State<IoEditAvatar> createState() => _IoEditAvatarState();
}

class _IoEditAvatarState extends State<IoEditAvatar> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    if (loading) return const Center(child: CircularProgressIndicator());
    return InkWell(
        onTap: () async {
          setState(() {
            loading = true;
          });
          final appBloc = context.read<AppBloc>();
          if (appBloc.state.user != widget.user) return;
          final picker = ImagePicker();
          final f = await picker.pickImage(source: ImageSource.gallery);
          if (f == null) return;
          final pyFile = IoFile.fromXFile(f: f, fileType: IoFileType.image);
          final uploaded = await uploadFilePathsToFirebase(
              f: pyFile,
              path:
                  'users/${widget.user.userInfo.userId}/${pyFile.file.hashCode}');
          if (uploaded != null) {
            setState(() {
              widget.user =
                  widget.user.copyWith.userInfo(profileImg: uploaded.url);
            });
            await widget.user.update();
          }
          setState(() {
            loading = false;
          });
        },
        child: getAvatar(widget.radius, widget.user.userInfo.profileImg));
  }
}
