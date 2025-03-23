import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:session_task1/screens/login_screen.dart';
import 'package:session_task1/screens/search_screen.dart';
import 'package:session_task1/widgets/avatar.dart';
import 'package:session_task1/widgets/bottom_part.dart';
import 'package:session_task1/widgets/custom_text_form.dart';
import 'package:session_task1/widgets/password_text_form.dart';

class RegistScreen extends StatelessWidget {
  const RegistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff497D74),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            const Avatar(image: 'assets/sign up.png'),
            CustomTextForm(
                onPress: () {},
                fieldType: 'Name',
                icon: Icons.person_3_outlined),
            CustomTextForm(
                onPress: () {}, fieldType: 'Email', icon: Icons.email_outlined),
            PasswordTextForm(
                onPress: () {},
                fieldType: 'Password',
                icon: Icons.lock_outline_rounded),
            PasswordTextForm(
                onPress: () {},
                fieldType: 'confirm Password',
                icon: Icons.lock_outline_rounded),
            const SizedBox(
              height: 40,
            ),
            BottomPart(
              color: Colors.white,
              screenShifter: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ));
              },
              screen: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ));
              },
              buttonText: 'Sign Up',
              statement1: 'already have account ?',
              statement2: 'Login',
              facebook: Icons.facebook,
              google: FontAwesomeIcons.google,
              x: FontAwesomeIcons.xTwitter,
            )
          ],
        ),
      ),
    );
  }
}
