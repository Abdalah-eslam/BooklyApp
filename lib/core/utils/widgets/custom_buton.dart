import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      this.style,
      required this.borderRadius,
      this.onpressed});
  final String text;
  final Color color;
  final TextStyle? style;
  final BorderRadiusGeometry borderRadius;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(borderRadius: borderRadius)),
            onPressed: onpressed,
            child: Text(
              text,
              style: style,
            )),
      ),
    );
  }
}
