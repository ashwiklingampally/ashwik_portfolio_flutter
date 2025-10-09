import 'package:ashwik_dev/ui/home/part_four.dart';
import 'package:ashwik_dev/ui/home/part_one.dart';
import 'package:ashwik_dev/ui/home/part_three.dart';
import 'package:ashwik_dev/ui/home/part_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageNormal extends StatelessWidget {
  const HomePageNormal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 0,
              forceElevated: false,
              floating: true,
              snap: false,
              expandedHeight: 100.h,
              pinned: true,
              //innerBoxIsScrolled = true means the appbar is normal and pinned
              flexibleSpace: innerBoxIsScrolled
                  ? Container(color: Colors.transparent)
                  : Container(color: Theme.of(context).scaffoldBackgroundColor),
              title: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    getLetterFromIcon(FontAwesomeIcons.a, context: context),
                    getLetterFromIcon(FontAwesomeIcons.s, context: context),
                    getLetterFromIcon(FontAwesomeIcons.h, context: context),
                    getLetterFromIcon(FontAwesomeIcons.w, context: context),
                    getLetterFromIcon(FontAwesomeIcons.i, context: context),
                    getLetterFromIcon(FontAwesomeIcons.k, context: context),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: OutlinedButton.icon(
                    onPressed: () => openDriveLink(
                      "https://drive.google.com/file/d/1EnGQCEkpm7k4mxh9ulwC6qQuX4fFzfVn/view",
                    ),
                    icon: Icon(
                      Icons.get_app,
                      color: Theme.of(context).cardColor,
                    ),
                    label: Text(
                      "Resume",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Theme.of(context).cardColor,
                      ),
                    ),
                    style: Theme.of(context).outlinedButtonTheme.style,
                  ),
                ),
              ],
            ),
          ];
        },
        body: ListView(
          padding: EdgeInsets.all(32.h),
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 50.h),
              child: PartOne(),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50.h),
              child: PartTwo(),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50.h),
              child: PartThree(),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 50.h),
              child: PartFour(),
            ),
          ],
        ),
      ),
    );
  }

  FaIcon getLetterFromIcon(IconData icon, {required BuildContext context}) =>
      FaIcon(icon, color: Theme.of(context).cardColor);
}

Future<void> openDriveLink(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
