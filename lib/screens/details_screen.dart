import 'package:flutter/material.dart';
import 'package:session_task1/models/details_model.dart';
import 'package:session_task1/screens/support_chat_screen.dart';
import 'package:session_task1/scrolling/scrolling_options.dart';
import 'package:session_task1/widgets/item_widgets/description_item.dart';

// ignore: must_be_immutable
class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key});

  DetailsModel detailModel = DetailsModel(
      image: 'assets/shoes.jpg',
      title: 'Pegasus 40',
      description:
          'Experience unmatched comfort and performance with our premium running shoes, designed to enhance every step you take.\n\n'
          'Performance: Engineered with responsive cushioning and a lightweight design to maximize speed and endurance.\n\n'
          'Comfort: Breathable mesh upper keeps your feet cool, while the padded insole provides all-day support.\n\n'
          'Durability: High-quality rubber outsole ensures excellent grip and long-lasting wear, perfect for any terrain.\n\n'
          'Design: Sleek, modern look with a secure lace-up fit for stability and confidence in every stride.\n\n'
          'Technology: Advanced shock absorption reduces impact on joints, making it ideal for runners of all levels.\n\n'
          'Take your running to the next level with these high-performance shoes');

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
                            builder: (context) => const SupportChatScreen(),
                          ));
                        },
                        icon:
                            const Icon(size: 40, Icons.support_agent_outlined))
                  ],
                ),
                DescriptionItem(
                  description: detailModel.description,
                  image: detailModel.image,
                  title: detailModel.title,
                ),
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
