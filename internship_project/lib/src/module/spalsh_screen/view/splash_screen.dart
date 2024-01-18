import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:internship_project/src/module/skip_screen/view/skip_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context)=> const FirstSkipScreen()),
              (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0xffFFFFFF).withOpacity(.2),
            const Color(0xffE46081).withOpacity(.13),
            const Color(0xffD81D4C).withOpacity(.10)
          ])
        ),
        child: Center(
          child: SizedBox(
            width: 242.52.w,
            height: 68.95.h,
              child: Image.asset('assets/icons/main_logo.png')),
        ),
      ),
    );
  }
}
