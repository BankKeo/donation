import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AwesomeDialog warningDialog({
  required String des,
  required BuildContext context,
  Function()? btnCancelOnPress,
  Function()? btnOkOnPress,
}) {
  return AwesomeDialog(
    context: context,
    btnCancelText: "cancel".tr,
    btnOkText: "okay".tr,
    dialogType: DialogType.warning,
    animType: AnimType.bottomSlide,
    title: 'notice'.tr,
    desc: des,
    btnCancelOnPress: btnCancelOnPress,
    btnOkOnPress: btnOkOnPress,
  )..show();
}
