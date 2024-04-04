import 'package:cart/screen/account_details.dart';
import 'package:cart/screen/forget_password.dart';
import 'package:cart/screen/loginscreen.dart';
import 'package:cart/screen/otpverify_sereen.dart';
import 'package:cart/screen/signup_personal.dart';
import 'package:cart/screen/signup_screen.dart';
import 'package:cart/screen/slide_page1.dart';
import 'package:cart/screen/splashscreen1.dart';
import 'package:cart/screen/upload_document.dart';
import 'package:cart/screen/vehicle_information.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/slidepage":(context) => SlidePage(),
        "/signup": (context) => SignupScreen(),
        "/loginscreen": (context) => LogIn(),
        "/forgetPassword": (context) => ForgetPassword(),
        "/OTPVerify": (context) => OTPVerify(),
        "/signupPersonal": (context) => SignupPersonalInfo(),
        "/vehicleInformation": (context) => VehicleInfo(),
        "/accountdetails": (context) => AccountDetails(),
        "/uploaddocuments": (context) => UploadDocument(),
      },
    );
  }
}
