import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.screen,
    required this.color,
  });
  final String title;
  final VoidCallback screen;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(color),
          ),
          onPressed: screen,
          child: Text(
            title,
            style: const TextStyle(
                color: Color(0xff497D74),
                fontSize: 22,
                fontWeight: FontWeight.bold),
          )),
    );
  }
}
