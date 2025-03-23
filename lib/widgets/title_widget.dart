import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 50),
      ),
    );
  }
}
