import 'package:flutter/material.dart';

class SupportChatScreen extends StatelessWidget {
  const SupportChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff497D74),
        title: const Text(
          'Support',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextFormField(
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                  fontSize: 20,
                  letterSpacing: 2),
              decoration: const InputDecoration(
                  hintText: 'type a message...',
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontSize: 20,
                      letterSpacing: 2),
                  fillColor: Color(0xffF1F0E9),
                  filled: true,
                  suffixIcon: Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF1F0E9)),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffF1F0E9)),
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
