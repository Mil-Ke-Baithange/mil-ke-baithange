import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostBox extends StatelessWidget {
  const PostBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
          ),
          top: BorderSide(
            width: 1.0,
          ),
          left: BorderSide(
            width: 1.0,
          ),
          right: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      // padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/1.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: Text(
                    "harsh.johar",
                  ),
                ),
                const Icon(
                  Icons.more_vert_outlined,
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/2.png",
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.text_bubble,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.arrow_turn_up_right,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
