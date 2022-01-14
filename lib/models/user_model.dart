class UserModel{
  String? name;
  String? urlPath;

  UserModel({this.name, this.urlPath});

  static List<UserModel> generatedUser(){
    return [
      UserModel(urlPath: 'assets/images/image.png'),
      UserModel(urlPath: 'assets/images/image1.png'),
      UserModel(urlPath: 'assets/images/image2.png'),
      UserModel(urlPath: 'assets/images/image3.png'),
    ];
  }
}