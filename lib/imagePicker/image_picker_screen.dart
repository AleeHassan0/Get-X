import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/imagePicker/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  //dependacy injection
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Image Picker'),
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 42,
                    backgroundImage: imagePickerController.imagePath.isNotEmpty
                        ? FileImage(
                            File(imagePickerController.imagePath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    imagePickerController.getImage();
                  },
                  child: const Text("Select Image"))
            ],
          );
        }));
  }
}
