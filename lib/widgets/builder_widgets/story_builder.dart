import 'package:flutter/material.dart';
import 'package:session_task1/widgets/item_widgets/story_item.dart';

class StoryBuilder extends StatelessWidget {
  const StoryBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const StoryItem();
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: 10);
  }
}
