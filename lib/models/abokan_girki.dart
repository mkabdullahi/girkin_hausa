class AbokanGirki {
  String id;
  String profileImageUrl;
  String comment;
  String abinciUrl;
  String timestamp;

  AbokanGirki({
    required this.id,
    required this.profileImageUrl,
    required this.comment,
    required this.abinciUrl,
    required this.timestamp
});
  factory AbokanGirki.fromJson(Map<String, dynamic> json){
    return  AbokanGirki(
      id: json['id'] ?? '',
      profileImageUrl: json['profileImageUrl'] ?? '',
      comment: json['comment'] ?? '',
      abinciUrl: json['abinciUrl'] ?? '',
      timestamp: json['timestamp'] ?? '',
    );
  }
}