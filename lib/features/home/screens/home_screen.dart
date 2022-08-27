import 'package:flutter/material.dart';
import 'package:voip_chat/common/utils/colors.dart';
import 'package:voip_chat/common/widgets/post.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        backgroundColor: backgroundColor,
        elevation: 10,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_outlined),
          )
        ],
        leading: const Icon(Icons.camera_alt),
      ),
      body: ListView.builder(itemBuilder: (ctx, i) => PostBox()),
    );
  }
}
