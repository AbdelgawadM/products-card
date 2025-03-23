import 'package:flutter/material.dart';
import 'package:session_task1/widgets/custom_button.dart';
import 'package:session_task1/widgets/statement_row.dart';

class BottomPart extends StatelessWidget {
  const BottomPart({
    super.key,
    required this.statement1,
    required this.statement2,
    required this.buttonText,
    required this.facebook,
    required this.google,
    required this.x,
    required this.screen,
    required this.screenShifter,
    required this.color,
  });

  final String statement1, statement2, buttonText;
  final IconData facebook, google, x;
  final VoidCallback screenShifter;
  final VoidCallback screen;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          color: color,
          title: buttonText,
          screen: screen,
        ),
        StatementRow(
          screen: screenShifter,
          statement1: statement1,
          statement2: statement2,
        ),
        const SizedBox(
          width: 100,
          height: 80,
          child: Divider(
            color: Colors.white,
            thickness: 3,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              facebook,
              size: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Icon(
                google,
                size: 60,
              ),
            ),
            Icon(
              x,
              size: 60,
            ),
          ],
        ),
      ],
    );
  }
}
