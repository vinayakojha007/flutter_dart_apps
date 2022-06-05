import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/constants.dart';

class IconControl extends StatelessWidget {
  final IconData iconData;
  final String iconText;
  const IconControl({Key? key, required this.iconData, required this.iconText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 80.0, color: Colors.white),
        const SizedBox(
          height: 15.0,
        ),
        Text(iconText, style: klabelTextStyle)
      ],
    );
  }
}
