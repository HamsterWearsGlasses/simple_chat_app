import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_chat_app/presentation/theme/color.dart';

class OnboardingContentWidget extends StatelessWidget {
  const OnboardingContentWidget({
    super.key,
    this.padding,
    this.imagePngPath,
    this.title,
    this.content,
  });

  final EdgeInsetsGeometry? padding;
  final String? imagePngPath;
  final String? title;
  final String? content;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: padding ?? const EdgeInsets.only(left: 0),
            child: Image.asset(
              imagePngPath ?? "assets/images/obd_1.png",
              fit: BoxFit.fitWidth,
              width: 327.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36.h, left: 76.w, right: 76.w),
            child: Text(
              title ?? "",
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                color: AppColor.pink150,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 36.h, left: 76.w, right: 76.w),
            child: Text(
              content ?? "",
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: "Poppins",
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
