import 'package:flutter/widgets.dart';
import 'package:watsapp/core/colors/colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          text: 'Read our ',
          style: TextStyle(height: 1.5, color: AppColors.greyDark),
          children: [
            TextSpan(
                text: 'Privacy policy. ',
                style: TextStyle(color: AppColors.blueDark)),
            TextSpan(text: 'Tap "Agree and continue" to accept the '),
            TextSpan(
                text: 'Terms of services. ',
                style: TextStyle(color: AppColors.blueDark)),
          ],
        ),
      ),
    );
  }
}
