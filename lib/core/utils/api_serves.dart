import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ApiServes {
  static const String baseUrl = 'http://10.0.2.2:8000/api/';
}

class UploadImageHelper {
  static Future<XFile?> pickerImage() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image;
  }

  static Future<MultipartFile> uploadSingleImage({
    required XFile image,
  }) async {
    Uint8List byteData = await image.readAsBytes();
    List<int> imageData = byteData.buffer.asUint8List();
    MultipartFile file = MultipartFile.fromBytes(
      imageData,
      filename: image.name,
    );

    return file;
  }

  ///upload Multi Image
  static Future<List<MultipartFile>> uploadMultiImage({
    required List<XFile> images,
  }) async {
    List<MultipartFile> files = [];

    for (XFile image in images) {
      Uint8List byteData = await image.readAsBytes();
      List<int> imageData = byteData.buffer.asUint8List();
      MultipartFile file = MultipartFile.fromBytes(
        imageData,
        filename: image.name,
      );
      files.add(file);
    }
    return files;
  }
}

Future<MultipartFile> uploadSingleImageAdmin({
  required XFile image,
}) async {
  Uint8List byteData = await image.readAsBytes();
  List<int> imageData = byteData.buffer.asUint8List();
  MultipartFile file = MultipartFile.fromBytes(
    imageData,
    filename: image.name,
  );

  return file;
}

Future<MultipartFile> uploadSingleImage() async {
  late MultipartFile file;
  XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

  Uint8List byteData = await image!.readAsBytes();
  List<int> imageData = byteData.buffer.asUint8List();
  file = MultipartFile.fromBytes(
    imageData,
    filename: image.name,
  );

  return file;
}
