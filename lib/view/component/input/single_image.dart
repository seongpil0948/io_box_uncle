import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// ignore: must_be_immutable
class SingleImageInput extends StatefulWidget {
  void Function(File file) onChangeFile;
  SingleImageInput({super.key, required this.onChangeFile});

  @override
  State<SingleImageInput> createState() => _SingleImageInputState();
}

class _SingleImageInputState extends State<SingleImageInput> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  void _setImageFromFile(XFile? value) {
    _imageFile = value;
    if (value != null) {
      widget.onChangeFile(File(value.path));
    }
  }

  dynamic _pickImageError;
  String? _retrieveDataError;

  final defaultIcon = const Icon(
    Icons.add,
    color: Colors.black,
    size: 15,
  );

  Widget _previewImages() {
    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    if (_imageFile != null) {
      return Semantics(
        label: 'image_picker_picked_image',
        child: kIsWeb
            ? Image.network(_imageFile!.path)
            : Image.file(File(_imageFile!.path)),
      );
    } else if (_pickImageError != null) {
      return Text(
        '이미지 선택 에러: $_pickImageError',
        textAlign: TextAlign.center,
      );
    } else {
      return defaultIcon;
    }
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        if (response.files == null && response.files!.isNotEmpty) {
          _setImageFromFile(response.file);
        } else {
          _imageFile = response.files!.first;
        }
      });
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IoCard(
      onTap: () async {
        try {
          final XFile? pickedFile =
              await _picker.pickImage(source: ImageSource.gallery);
          setState(() {
            _setImageFromFile(pickedFile);
          });
        } catch (e) {
          setState(() {
            _pickImageError = e;
          });
        }
      },
      child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
          ? FutureBuilder<void>(
              future: retrieveLostData(),
              builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                  case ConnectionState.waiting:
                    return const CircularProgressIndicator.adaptive();
                  case ConnectionState.done:
                    return _previewImages();
                  case ConnectionState.active:
                    if (snapshot.hasError) {
                      return Text(
                        '이미지 선택 에러: ${snapshot.error}',
                        textAlign: TextAlign.center,
                      );
                    } else {
                      return defaultIcon;
                    }
                }
              },
            )
          : _previewImages(),
    );
  }
}

// ignore: must_be_immutable
class IoCard extends StatelessWidget {
  void Function() onTap;
  Widget child;
  IoCard({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    final BorderRadius baseBorderRadius = BorderRadius.circular(3);
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: baseBorderRadius),
      child: InkWell(
        borderRadius: baseBorderRadius,
        onTap: onTap,
        child: Container(
          width: size.width / 5,
          height: size.width / 5,
          decoration: BoxDecoration(
            borderRadius: baseBorderRadius,
            color: Colors.transparent,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}
