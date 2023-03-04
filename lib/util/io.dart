import 'dart:io';

import 'package:image_picker/image_picker.dart';

enum IoFileType { video, image }

extension ParseToString on IoFileType {
  String toCustomString() {
    return toString().split('.').last;
  }
}

IoFileType fileTypeFromString(String fileType) {
  switch (fileType) {
    case "video":
      return IoFileType.video;
    case "image":
      return IoFileType.image;
    default:
      return IoFileType.image;
  }
}

class IoFile {
  File? file;
  String? url;
  late IoFileType fileType;

  IoFile.fromXFile({required XFile f, required this.fileType})
      : file = File(f.path);
  IoFile.fileName({required String fileName, required this.fileType})
      : file = File(fileName);
  IoFile.file({required this.file, required this.fileType});

  IoFile.fromCdn({required String this.url, required String fileType}) {
    switch (fileType) {
      case "image":
        fileType = IoFileType.image.name;
        break;
      case "video":
        fileType = IoFileType.video.name;
        break;
    }
  }

  String? get fName => file != null ? file!.path.split("/").last : url;
  bool get isUploaded => url != null;

  Map<String, dynamic> toJson() => {
        'url': url,
        'file': file?.path,
        'fileType': fileType.toCustomString(),
      };

  IoFile.fromJson(j)
      : url = j['url'],
        fileType = fileTypeFromString(j['fileType']);
}

// Widget loadFile({required IoFile f, required BuildContext context}) {
//   final mq = MediaQuery.of(context);
//   switch (f.fileType) {
//     case IoFileType.image:
//       return f.file != null
//           ? Image.file(
//               f.file!,
//               fit: BoxFit.cover,
//               width: mq.size.width,
//             )
//           : CachedNetworkImage(
//               imageUrl: f.url!,
//               fit: BoxFit.cover,
//               width: mq.size.width,
//             );

//     case IoFileType.video:
//       final c = f.file != null
//           ? VideoPlayerController.file(f.file!)
//           : VideoPlayerController.network(f.url!);
//       return VideoW(controller: c);
//   }
// }
