class User {
  int id;
  String email;
  String fullName;
  String mobileNumber;
  String image;
  String password;
  int age;
  String civilId;

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.mobileNumber,
    required this.image,
    required this.password,
    required this.age,
    required this.civilId,
  });

  void editProfile() {}
  void viewProfile() {}
  void logout() {}
  void login() {}
}
