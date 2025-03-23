import 'package:flutter/material.dart';
import 'package:session_task1/screens/support_screen.dart';
import 'package:session_task1/scrolling/scrolling_options.dart';
import 'package:session_task1/widgets/description_widget.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollingOptions(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButton(),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SupportScreen(),
                          ));
                        },
                        icon:
                            const Icon(size: 40, Icons.support_agent_outlined))
                  ],
                ),
                const DescriptionWidget(),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
