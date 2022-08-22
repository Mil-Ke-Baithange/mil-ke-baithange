import 'package:flutter/material.dart';
import 'package:voip_chat/common/utils/colors.dart';
import 'package:voip_chat/common/widgets/custom_button.dart';
import 'package:voip_chat/features/auth/screens/login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);
  void navigateToLoginScreen(BuildContext context) {
    Navigator.pushNamed(context, LoginScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Text(
                  'ਮਿਲ ਕੇ ਬੈਠਾਂਗੇ ਵਿੱਚ ਸਵਾਗਤ ਹੈ',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Welcome to Mil k baithange",
                )
              ],
            ),
            Image.asset(
              'assets/images/1.png',
              height: 340,
              width: 340,
            ),
            Column(children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Read our Privacy Policy. Tap "Agree and continue" to accept the Terms of Service.',
                  style: TextStyle(color: greyColor),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: size.width * 0.75,
                child: CustomButton(
                  text: 'AGREE AND CONTINUE',
                  onPressed: () => navigateToLoginScreen(context),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
