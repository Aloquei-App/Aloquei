class UserModel {
  String key;
  String nome;
  String email;
  bool isAdmin;
  String gender;

  UserModel({
    this.key,
    this.nome,
    this.email,
    this.isAdmin,
    this.gender,
  });

  UserModel.fromSnapshot(Map<String, dynamic> data, String id) {
    key = id;
    nome = data['name'] != null ? data['name'] : '';
    email = data['email'] != null ? data['email'] : '';
    isAdmin = data['isAdmin'] != null ? data['isAdmin'] : false;
    gender = data['gender'] != null ? data['gender'] : '';
  }

  Map<String, dynamic> toMap() {
    return {'name': nome, 'email': email, 'isAdmin': isAdmin, 'gender': gender};
  }
}
