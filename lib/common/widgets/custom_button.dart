import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voip_chat/common/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String os = Platform.operatingSystem;
    return os == 'ios'
        ? CupertinoButton(
            onPressed: onPressed,
            child: Text(
              text,
              style: const TextStyle(
                color: tabColor,
              ),
            ),
          )
        : ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: tabColor,
              minimumSize: const Size(double.infinity, 50),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: blackColor,
              ),
            ),
          );
  }
}
