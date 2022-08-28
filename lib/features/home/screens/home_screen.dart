import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voip_chat/common/utils/colors.dart';
import 'package:voip_chat/common/widgets/post.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mil Ke Baithange",
        ),
        backgroundColor: tabColor,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.chat_outlined,
            ),
          ),
        ],
        leading: const Icon(
          Icons.camera_alt,
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (ctx, i) => const PostBox(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: tabColor,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home", backgroundColor: tabColor),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: "Notifications",
              activeIcon: Icon(CupertinoIcons.heart_fill)),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
