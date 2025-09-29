import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class PartFour extends StatelessWidget {
  const PartFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 50.h,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              text: 'Soc'.toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.sp,
                fontFamily: GoogleFonts.dmSerifText().fontFamily,
              ),
              children: [
                TextSpan(
                  text: 'ial'.toUpperCase(),
                  style: TextStyle(
                    color: Colors.tealAccent,
                    fontSize: 30.sp,
                    fontFamily: GoogleFonts.dmSerifText().fontFamily,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
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
              icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.github, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
