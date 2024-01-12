import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImageUpload {
  static String imageUrl ="";

  static Future uploadImageToStorage() async {
    ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.camera);
    if (kDebugMode) {
      print("${file?.path}");
    }

    if (file == null) return;
    // Generate unique file name
    String uniqueFileName = DateTime.now().microsecondsSinceEpoch.toString();

    //References
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child("images");
    Reference referenceImageToUpload  = referenceDirImages.child(uniqueFileName);

    // Uploading Image
    try {
      await referenceImageToUpload.putFile(File(file.path));
      imageUrl = await referenceImageToUpload.getDownloadURL();
    } catch(error) {
      //handle error
    }
  }

}