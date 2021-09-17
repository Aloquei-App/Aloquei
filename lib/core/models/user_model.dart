class UserModel {
  String key;
  String name;
  String lastname;
  String email;
  bool isAdmin;
  String gender;
  List<String> favList;

  UserModel(
      {this.key,
      this.name,
      this.email,
      this.isAdmin,
      this.gender,
      this.lastname,
      this.favList});

  UserModel.fromSnapshot(Map<String, dynamic> data, String id) {
    key = id;
    name = data['name'] != null ? data['name'] : '';
    lastname = data['lastname'] != null ? data['lastname'] : '';
    email = data['email'] != null ? data['email'] : '';
    isAdmin = data['isAdmin'] != null ? data['isAdmin'] : false;
    gender = data['gender'] != null ? data['gender'] : '';
    favList = data['favList'] != null ? data['favList'].cast<String>() : [];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'sobrenome': lastname,
      'email': email,
      'isAdmin': isAdmin,
      'gender': gender,
      'favList': favList,
    };
  }
}
