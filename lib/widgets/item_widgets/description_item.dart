import 'package:flutter/material.dart';

class DescriptionItem extends StatelessWidget {
  const DescriptionItem(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image, title, description;

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
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(image))),
          ),
        ),
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
        Text(
          description,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
