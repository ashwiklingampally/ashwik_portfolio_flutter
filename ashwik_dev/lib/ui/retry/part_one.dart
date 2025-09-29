import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PartOne extends StatelessWidget {
  const PartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      verticalDirection : VerticalDirection.up,
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      children: [
        SizedBox(
          width: 1300.h,
          child: RichText(
            text: TextSpan(
              text: 'Hello,'.toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontFamily: GoogleFonts.dmSerifText().fontFamily,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: ' My Name is\n'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 30.sp,
                    fontFamily: GoogleFonts.dmSerifText().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Ashwik\n'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 100.sp,
                    color: Colors.white,
                    fontFamily: GoogleFonts.dmSerifText().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Lingampally\n'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 90.sp,
                    color: Colors.white,
                    fontFamily: GoogleFonts.trainOne().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'Iam a Mobile Application developer'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 40.sp,
                    color: Colors.white,
                    fontFamily: GoogleFonts.sarala().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text:
                      '\nBased out from Hyderabad. As a seasoned Mobile App Developer with 8 years of dedicated experience, I\'ve cultivated a profound passion for crafting intuitive and high-performance mobile solutions. My journey has been driven by the thrill of transforming complex ideas into seamless user experiences that delight and engage. I thrive on the challenges of staying at the forefront of mobile technology, constantly exploring new frameworks and methodologies to push the boundaries of what\'s possible on handheld devices. My commitment extends beyond just writing code; I\'m deeply invested in solving real-world problems and creating impactful applications that truly make a difference in users lives.',
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.white,
                    fontFamily: GoogleFonts.sarala().fontFamily,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 650.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0x2F333732),
          ),
          child: Image.asset('images/updated_ashwik_avatar_removebg.png'),
        ),
      ],
    );
  }
}
