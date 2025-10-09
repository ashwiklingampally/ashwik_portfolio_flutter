import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartOne extends StatelessWidget {
  const PartOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      verticalDirection : VerticalDirection.up,
      alignment: WrapAlignment.spaceEvenly,
      runAlignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        SizedBox(
          width: 1300.h,
          child: RichText(
            text: TextSpan(
              text: 'Hello,'.toUpperCase(),
              style: Theme.of(context).textTheme.headlineSmall,
              children: <TextSpan>[
                TextSpan(
                  text: ' My Name is\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                TextSpan(
                  text: 'Ashwik\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                TextSpan(
                  text: 'Iam a Mobile Application developer'.toUpperCase(),
                  style: Theme.of(context).textTheme.headlineMedium,

        ),
                TextSpan(
                  text:
                      '\nBased out from Hyderabad. As a seasoned Mobile App Developer with 8 years of dedicated experience, I\'ve cultivated a profound passion for crafting intuitive and high-performance mobile solutions. My journey has been driven by the thrill of transforming complex ideas into seamless user experiences that delight and engage. I thrive on the challenges of staying at the forefront of mobile technology, constantly exploring new frameworks and methodologies to push the boundaries of what\'s possible on handheld devices. My commitment extends beyond just writing code; I\'m deeply invested in solving real-world problems and creating impactful applications that truly make a difference in users lives.',
                  style: Theme.of(context).textTheme.bodyLarge,

                ),
              ],
            ),
          ),
        ),
        Container(
          height: 650.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: Color(0x2F333732),
          ),
          child: Image.asset('assets/images/updated_ashwik_avatar_removebg.png'),
        ),
      ],
    );
  }
}
