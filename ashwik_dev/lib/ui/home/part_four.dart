import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
              style: Theme.of(context).textTheme.headlineSmall,
              children: [
                TextSpan(
                  text: 'ial'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
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
              icon: FaIcon(FontAwesomeIcons.whatsapp),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.instagram),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.google),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.phone),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.facebook),
            ),
            IconButton(
              onPressed:(){} ,
              icon: FaIcon(FontAwesomeIcons.twitter),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.github),
            ),
          ],
        ),
      ],
    );
  }



  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
