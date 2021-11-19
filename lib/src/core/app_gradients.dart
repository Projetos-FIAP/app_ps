import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: const [
    Color(0xFF37DEAF),
    Color.fromRGBO(55, 222, 175, 0.5),
  ], stops: const [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
