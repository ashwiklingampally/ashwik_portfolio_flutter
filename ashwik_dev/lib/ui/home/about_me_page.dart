import 'package:ashwik_dev/utils/const_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceAround,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        FlutterLogo(size: 200.w,),
        Container(
          color: Colors.white,
          padding: EdgeInsets.all(50.w),
          width: 600.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Me :",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 40.sp,
                  color: Colors.black,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.black,
                ),
              ),
              Text(
                aboutMeFirst,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.black,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
