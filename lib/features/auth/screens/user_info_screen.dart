import 'package:flutter/material.dart';

class UserInformationScreen extends StatefulWidget {
  static const String routeName = '/userinfo-screen';
  const UserInformationScreen({Key? key}) : super(key: key);

  @override
  State<UserInformationScreen> createState() => _UserInformationScreenState();
}

class _UserInformationScreenState extends State<UserInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
      ),
    );
  }
}
