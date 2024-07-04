import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_remote_app/shared/text_styles.dart';
import 'package:mobile_remote_app/widgets/single_child_button.dart';

class TwoChildButton extends StatelessWidget {
  final String btnNum;
  final String btnText;
  final VoidCallback onPressed;
  const TwoChildButton({
    super.key,
    required this.btnNum,
    required this.btnText,
    required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SingleChildButton(
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(btnNum,style: TextStyles.numPadNumberTextStyle()),
            Text(btnText, style: TextStyles.numPadTextTextStyle(),)
          ],
        ),
    );
  }
}
