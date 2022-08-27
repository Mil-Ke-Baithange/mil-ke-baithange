class Comment {
  final String user; // uid
  final String text;
  final Set<String>? likes; // uid
  final List<Comment>? replies;

  Comment({required this.user, required this.text, this.likes, this.replies});
}
