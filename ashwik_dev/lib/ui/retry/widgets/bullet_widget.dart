import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


enum BulletType {
  dot,
  arrow,
  hyphen,
}


class BulletWidget extends StatelessWidget {
  final BulletType bulletType;
  final String detail;

  const BulletWidget({
    super.key,
    required this.bulletType,
    required this.detail,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '\u2022',
          style: TextStyle(
            fontSize: 16,
            height: 1.55,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            detail,
            textAlign: TextAlign.left,
            softWrap: true,
            style: TextStyle(
                fontSize: 16,
                color: Colors.black
            ),
          ),
        ),
      ],
    );
  }
}
