import 'package:flutter/material.dart';
import 'package:session_task1/widgets/item_widgets/chat_item.dart';

class ChatBuilder extends StatelessWidget {
  const ChatBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) {
        return const ChatItem();
      },
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: 10,
    );
  }
}
