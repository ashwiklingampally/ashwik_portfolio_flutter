import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_network/particles_network.dart';

class DetailsSlide extends StatelessWidget {
  const DetailsSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ParticleNetwork(
          touchActivation: true,
          particleCount: 200,
          maxSpeed: 0.5,
          maxSize: 3.5,
          lineDistance: 100.h,
          particleColor: Colors.white,
          lineColor: Colors.greenAccent,
          touchColor: Colors.amber,
          drawNetwork: true,
          fill: true,
          isComplex: true,
        ),
        Container(
          margin: EdgeInsets.only(left: 300.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ashwik'.toUpperCase(),
                style: TextStyle(
                  fontSize: 150.sp,
                  color: Colors.white,
                  fontFamily: GoogleFonts.dmSerifText().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lingampally'.toUpperCase(),
                style: TextStyle(
                  fontSize: 130.sp,
                  color: Colors.white,
                  fontFamily: GoogleFonts.trainOne().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '- Mobile Application Developer with 8+ years of Experience',
                style: TextStyle(
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontFamily: GoogleFonts.sarala().fontFamily,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h, left: 20.w),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.phone, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ParticleNetwork(
// touchActivation: true,
// particleCount: 200,
// maxSpeed: 0.5,
// maxSize: 3.5,
// lineDistance: 100.h,
// particleColor: Colors.white,
// lineColor: Colors.greenAccent,
// touchColor: Colors.amber,
// drawNetwork: true,
// fill: true,
// isComplex: true,
// ),

// SizedBox(
// child: DefaultTextStyle(
// style: TextStyle(
// fontSize: 150.sp,
// fontFamily: GoogleFonts.roboto().fontFamily,
// color: Colors.white,
// fontWeight: FontWeight.bold,
// ),
// child: AnimatedTextKit(
// pause: const Duration(milliseconds: 100),
// animatedTexts: [
// TypewriterAnimatedText(
// 'Ashwik',
// speed: const Duration(milliseconds: 100),
// cursor: "",
// textStyle: TextStyle(fontSize: 150.sp)
// ),
// ],
// ),
// ),
// ),
