import 'package:flutter/material.dart';

class StoryBuilder extends StatelessWidget {
  const StoryBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const SizedBox(
            height: 120,
            width: 85,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/profile.JPG'),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Abdelgawad Mahmoud',
                    style: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.bold),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: 10);
  }
}
