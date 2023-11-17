import 'package:donation/app/constants/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/wallpaper.jpg"),
                fit: BoxFit.cover,
                opacity: 0.7,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 180,
            child: Container(
              height: 200,
              width: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image/blood-drop.png"),
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 130,
            child: Container(
              height: 200,
              width: 200,
              color: redMain,
            ),
          ),
        ],
      ),
    );
  }
}
