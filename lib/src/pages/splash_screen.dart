import 'package:app_ps/src/core/app_gradients.dart';
import 'package:app_ps/src/core/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 1),
      () {
        Navigator.pushReplacementNamed(context, "/login");
      },
    );

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 200),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                "Bem vindo, somos a ONG Terra, planeta Água",
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Image.asset(
                AppImages.earth,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
