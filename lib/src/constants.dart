import 'package:flutter/material.dart';
import 'models/token.dart';

class Constants {
  static const appName = "Gestion UH";
  static const primaryColor = const Color.fromARGB(255, 91, 1, 1);
  static const secondaryColor = const Color.fromARGB(160, 91, 1, 1);
  static const TestMode = false;
}

class SampleData {
  static const user = "user";
  static const userMail = "user@uh.cu";
  static const userPassword = "password";
  static const authToken = """
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX""";
  static const refreshToken = """
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX""";
  static const userQuota = 3670016000;
  static const userBonus = 3670016000;
  static const userConsumedQuota = 71093682;
}