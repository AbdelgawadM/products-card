import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage('assets/shoes.jpg'))),
          ),
        ),
        Row(
          children: [
            const Text(
              'Rinning Shoes',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xff497D74))),
                onPressed: () {},
                child: const Text(
                  'Add to cart',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ))
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'description',
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF66D2CE)),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Experience unmatched comfort and performance with our premium running shoes, designed to enhance every step you take.\n\n'
          'Performance: Engineered with responsive cushioning and a lightweight design to maximize speed and endurance.\n\n'
          'Comfort: Breathable mesh upper keeps your feet cool, while the padded insole provides all-day support.\n\n'
          'Durability: High-quality rubber outsole ensures excellent grip and long-lasting wear, perfect for any terrain.\n\n'
          'Design: Sleek, modern look with a secure lace-up fit for stability and confidence in every stride.\n\n'
          'Technology: Advanced shock absorption reduces impact on joints, making it ideal for runners of all levels.\n\n'
          'Take your running to the next level with these high-performance shoes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
