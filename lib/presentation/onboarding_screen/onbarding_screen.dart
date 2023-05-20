import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_chat_app/presentation/onboarding_screen/widgets/content_widget.dart';
import 'package:simple_chat_app/presentation/theme/color.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 812.h,
        width: 375.w,
        color: AppColor.purple,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 620.h,
              width: 375.w,
              child: PageView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                children: [
                  OnboardingContentWidget(
                    padding: EdgeInsets.only(left: 48.w),
                    imagePngPath: "assets/images/obd_1.png",
                    title: "Get Paid! Playing Video Game",
                    content:
                        "Earn points and real cash when \nyou win a battle with no delay \nin cashing out",
                  ),
                  OnboardingContentWidget(
                    padding: EdgeInsets.only(left: 27.w),
                    imagePngPath: "assets/images/obd_2.png",
                    title: "Schedule Games With Friends ",
                    content:
                        "Easily create an upcoming \nevent and get ready for battle. \nYeah! real combat fella.",
                  ),
                  OnboardingContentWidget(
                    padding: EdgeInsets.symmetric(horizontal: 30.w),
                    imagePngPath: "assets/images/obd_3.png",
                    title: "Text, Audio and Video Chat",
                    content:
                        "Intuitive real life experience on mobile. Chat with fellow gamers before and after combat for free!",
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (index != 2)
                    Text(
                      "Skip",
                      style: TextStyle(
                        color: AppColor.pink150,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1.5,
                      ),
                    )
                  else
                    Container(
                      width: 210.w,
                      height: 58.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(29.h),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomLeft,
                          colors: [
                            AppColor.pink100,
                            AppColor.pink200,
                          ],
                        ),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(29.h),
                          splashColor: AppColor.pink200,
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              "Let’s Combat!",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: index == 2 ? 36.h : 68.h,
                  ),
                  DotsIndicator(
                    dotsCount: 3,
                    position: index,
                    decorator: DotsDecorator(
                      color: AppColor.pink150.withAlpha(51),
                      activeColor: AppColor.pink150,
                      size: const Size.square(10.0),
                      activeSize: const Size(10.0, 10.0),
                      activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 45.h,
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
