// ignore_for_file: prefer_const_constructors

import 'package:app_ps/src/core/app_colors.dart';
import 'package:app_ps/src/core/app_gradients.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  labelText: "SEU EMAIL",
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Flexible(
              child: TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  labelText: "SUA SENHA",
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: AppColors.green),
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    "/relatorios",
                  );
                },
                child: Text(
                  "Fazer Login",
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
