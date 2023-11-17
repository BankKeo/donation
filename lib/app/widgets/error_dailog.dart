import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AwesomeDialog errorDialog({
  required String des,
  required BuildContext context,
  Function()? btnCancelOnPress,
  Function()? btnOkOnPress,
}) {
  return AwesomeDialog(
    context: context,
    btnCancelText: "cancel".tr,
    btnOkText: "okay".tr,
    dialogType: DialogType.error,
    animType: AnimType.bottomSlide,
    title: 'error'.tr,
    desc: des,
    btnCancelOnPress: btnCancelOnPress,
    btnOkOnPress: btnOkOnPress,
  )..show();
}
