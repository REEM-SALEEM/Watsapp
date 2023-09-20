import 'package:flutter/material.dart';

class CustomElevButton extends StatelessWidget {
  final double? width;
  final VoidCallback onPressed;
  final String text;
  const CustomElevButton(
      {super.key, this.width, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: width ?? MediaQuery.of(context).size.width - 100,
      child: ElevatedButton(
        onPressed: onPressed,
        style:
            ElevatedButton.styleFrom(backgroundColor: const Color(0xFF00A884)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
