import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class RegisterViewModel extends ChangeNotifier{
  final String defaultProfileImage = "assets/images/default_profile.png";
  File? image;

  Future<void> pickImage() async {
    final picker=ImagePicker();
    
    final pickedFile=await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile!=null){
      image=File(pickedFile.path);
      notifyListeners();
    }
  }

}