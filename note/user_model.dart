class UserModel {
  const UserModel({
    required this.userId,
    required this.userName,
    required this.email,
    required this.profilePictureUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      profilePictureUrl: json['profilePictureUrl'] as String,
    );
  }

  final String userId;
  final String userName;
  final String email;
  final String profilePictureUrl;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'userId': userId,
      'userName': userName,
      'email': email,
      'profilePictureUrl': profilePictureUrl,
    };
  }
}
