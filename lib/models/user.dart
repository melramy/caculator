class UserData {
  String title;
  String email;
  String password;
  String username;
  String profileImg;
  String uid;
  UserData(
      {required this.email,
      required this.password,
      required this.title,
      required this.username,
      required this.profileImg,
      required this.uid});

  Map<String, dynamic> convert2Map() {
    return {
      "email": email,
      "password": password,
      "title": title,
      "username": username,
      "profileImg": profileImg,
      "uid": uid
    };
  }
}
