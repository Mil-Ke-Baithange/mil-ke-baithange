import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:voip_chat/common/utils/colors.dart';
import 'package:voip_chat/common/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login-screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
  Country? country;

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  void pickCountry() {
    showCountryPicker(
        context: context,
        onSelect: (Country _country) {
          setState(() {
            country = _country;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter your phone number'),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('We need to verify your phone number.'),
              const SizedBox(height: 10),
              TextButton(
                onPressed: pickCountry,
                child: const Text(
                  'Pick Country',
                  style: TextStyle(color: tabColor),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (country != null) Text('+${country!.phoneCode}'),
                  if (country == null) const Text('+91'),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: size.width * 0.7,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      cursorColor: tabColor,
                      controller: phoneController,
                      decoration: const InputDecoration(
                        hintText: 'phone number',
                        focusedBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.6),
              SizedBox(
                width: 90,
                child: CustomButton(
                  onPressed: () {},
                  text: 'NEXT',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
