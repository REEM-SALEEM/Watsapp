import 'package:flutter/material.dart';
import 'package:watsapp/widgets/custom_elevated_btn.dart';
import 'package:watsapp/widgets/lang_btn.dart';
import 'package:watsapp/widgets/privacy_terms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0ff111b2),
      body: Column(children: [
        Expanded(
            child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Image.asset(
              'assets/images/circle.png',
              // color: context.theme.circleImageColor,
            ),
          ),
        )),
        const SizedBox(height: 40.0),
        Expanded(
          child: Column(children: [
            const Text(
              'Welcome to WhatsApp',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const PrivacyAndTerms(),
            CustomElevButton(
              onPressed: () {},
              text: 'AGREE AND CONTINUE',
            ),
            const SizedBox(height: 50.0),
            const LanguageButton()
          ]),
        ),
      ]),
    );
  }
}
