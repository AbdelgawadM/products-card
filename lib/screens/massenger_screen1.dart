import 'package:flutter/material.dart';
import 'package:session_task1/scrolling/scrolling_options.dart';
import 'package:session_task1/widgets/builder_widgets/chat_builder.dart';
import 'package:session_task1/widgets/custom_widgets/search_text_form.dart';
import 'package:session_task1/widgets/builder_widgets/story_builder.dart';

class MassengerScreen extends StatelessWidget {
  const MassengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollingOptions(
      child: Scaffold(
        backgroundColor: const Color(0xff497D74),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon:
                  const Icon(size: 30, color: Colors.white, Icons.arrow_back)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                size: 30,
                color: Colors.white,
                Icons.list,
              ),
            ),
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          title: const Text(
            'Support Chat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [
              SearchTextForm(),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(
                child: SliverToBoxAdapter(
                  child: SizedBox(
                    height: 110,
                    width: double.infinity,
                    child: StoryBuilder(),
                  ),
                ),
              ),
              ChatBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
