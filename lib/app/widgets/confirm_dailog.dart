import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future showConfirmDialog({
  required BuildContext context,
  required String title,
  required GestureTapCallback pressed,
}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      final Size size = MediaQuery.of(context).size;
      return SizedBox(
        width: size.width * 0.9,
        child: AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          title: Text(title),
          actions: [
            TextButton(
              style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
              child: Text('not'.tr, style: const TextStyle(color: Colors.black)),
              onPressed: () => Navigator.of(context).pop(),
            ),
            TextButton(
              style: TextButton.styleFrom(textStyle: Theme.of(context).textTheme.labelLarge),
              onPressed: pressed,
              child: Text('yes'.tr, style: const TextStyle(color: Colors.black)),
            ),
          ],
        ),
      );
    },
  );
}
