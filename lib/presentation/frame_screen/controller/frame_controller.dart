import '/core/app_export.dart';
import 'package:gautam_kumar_cs_39_s_application1/presentation/frame_screen/models/frame_model.dart';
import 'package:flutter/material.dart';

class FrameController extends GetxController {
  TextEditingController groupThreeController = TextEditingController();

  Rx<FrameModel> frameModelObj = FrameModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupThreeController.dispose();
  }
}
