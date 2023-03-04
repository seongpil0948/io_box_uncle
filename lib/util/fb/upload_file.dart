import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:io_box_uncle/util/io.dart';

Future<IoFile?> uploadFilePathsToFirebase(
    {required IoFile f, required String path}) async {
  // /uploads/$p
  var storeRef = FirebaseStorage.instance.ref().child(path);
  SettableMetadata metadata = SettableMetadata(
    // cacheControl: 'max-age=60',
    customMetadata: <String, String>{
      'ioMime': f.fileType.toCustomString(),
    },
  );
  var task = storeRef.putFile(File(f.file!.path), metadata);

  task.snapshotEvents.listen((TaskSnapshot snapshot) {
    // debugPrint('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
  }, onError: (e) {
    // debugPrint(task.snapshot.toString());
  });

  try {
    await task;
    var meta = await storeRef.getMetadata();
    final info = {
      "url": await storeRef.getDownloadURL(),
      "ioMime": meta.customMetadata!['ioMime']
    };
    if (info.containsKey('url') && info.containsKey('ioMime')) {
      return IoFile.fromCdn(url: info['url']!, fileType: info['ioMime']!);
    }
  } on FirebaseException catch (e) {
    if (e.code == 'permission-denied') {
      // debugPrint('User does not have permission to upload to this reference.');
    }
    // ...
  }
  return null;
}
