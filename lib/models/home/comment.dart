import 'package:voip_chat/models/user/user.dart';

class Comment {
  final User user;
  final String text;
  final Set<User>? likes;
  final List<Comment>? replies;

  Comment({required this.user, required this.text, this.likes, this.replies});
}
