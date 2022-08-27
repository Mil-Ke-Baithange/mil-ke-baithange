import 'package:voip_chat/models/home/comment.dart';

class Post {
  final String user; // uid
  final String photoUrl;
  final String? postImage;
  final Set<String>? likes; // uid
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
