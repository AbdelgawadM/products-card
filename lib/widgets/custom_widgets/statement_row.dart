import 'package:flutter/material.dart';

class StatementRow extends StatelessWidget {
  const StatementRow({
    super.key,
    required this.statement1,
    required this.statement2,
    required this.screen,
  });
  final String statement1, statement2;
  final VoidCallback screen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            statement1,
            style: const TextStyle(fontSize: 22, color: Colors.white),
          ),
          TextButton(
              onPressed: screen,
              child: Text(
                '$statement2 Now',
                style: const TextStyle(fontSize: 24, color: Color(0xffEFE9D5)),
              ))
        ],
      ),
    );
  }
}
