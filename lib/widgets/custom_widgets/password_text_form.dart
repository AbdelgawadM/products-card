import 'package:flutter/material.dart';

class PasswordTextForm extends StatefulWidget {
  const PasswordTextForm(
      {super.key,
      required this.fieldType,
      required this.icon,
      required this.onPress});
  final String fieldType;
  final IconData icon;
  final VoidCallback onPress;

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: TextFormField(
        obscureText: hidePass,
        keyboardType: TextInputType.visiblePassword,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            suffixIconColor: Colors.white,
            suffixIcon: IconButton(
                onPressed: () {
                  hidePass = !hidePass;
                  setState(() {});
                },
                icon: const Icon(size: 25, Icons.remove_red_eye_outlined)),
            labelStyle: const TextStyle(color: Colors.white),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Color(0xff27445D)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            prefixIcon: IconButton(
              icon: Icon(widget.icon),
              color: Colors.white,
              onPressed: widget.onPress,
            ),
            label: Text(
              widget.fieldType,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.all(Radius.circular(15)))),
      ),
    );
  }
}
