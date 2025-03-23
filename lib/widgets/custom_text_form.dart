import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.fieldType,
    required this.icon,
    required this.onPress,
  });
  final String fieldType;
  final IconData icon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.white),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color(0xff27445D)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            prefixIcon: IconButton(
              icon: Icon(icon),
              color: Colors.white,
              onPressed: onPress,
            ),
            label: Text(
              fieldType,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
