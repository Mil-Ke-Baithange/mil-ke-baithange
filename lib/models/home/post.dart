import 'package:voip_chat/models/home/comment.dart';
import 'package:voip_chat/models/user/user.dart';

class Post {
  final User user;
  final String photoUrl;
  final String? postImage;
  final Set<User>? likes;
  final List<Comment>? comments;
  final String? caption;

  Post({
    required this.user,
    required this.photoUrl,
    this.postImage,
    this.caption,
    this.likes,
    this.comments,
  });
}
