import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_chat_app/presentation/onboarding_screen/onbarding_screen.dart';
import 'package:simple_chat_app/presentation/theme/color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onPrepairData();
    });

    super.initState();
  }

  Future<void> onPrepairData() async {
    await Future.delayed(const Duration(seconds: 2)).whenComplete(
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return const OnboardingScreen();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 812.h,
        width: 375.w,
        padding: EdgeInsets.only(top: 275.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              AppColor.pink100,
              AppColor.pink200,
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              "assets/images/logo.svg",
              fit: BoxFit.fitWidth,
              width: 174.w,
              height: 100.h,
            ),
            SizedBox(
              width: 375.w,
              height: 184.h,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    child: SvgPicture.asset(
                      "assets/images/footer_splash_screen.svg",
                      fit: BoxFit.fitHeight,
                      width: 375.w,
                      height: 184.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
