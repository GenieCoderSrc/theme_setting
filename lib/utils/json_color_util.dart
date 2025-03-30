import 'package:flutter/material.dart';

class JsonColorUtil {
  static Color convertJsonToColor(Map<String, dynamic> json) =>
      json['color'] as Color? ?? Colors.black;

  static Map<String, dynamic> convertColorToJson(Color? color) =>
      {'color': color ?? Colors.black};

  ///Singleton factory
  static final JsonColorUtil _instance = JsonColorUtil._internal();

  factory JsonColorUtil() {
    return _instance;
  }

  JsonColorUtil._internal();
}
