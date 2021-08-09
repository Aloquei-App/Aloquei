class UserModel {
  String key;
  String nome;
  String sobrenome;
  String email;
  bool isAdmin;
  String gender;

  UserModel({
    this.key,
    this.nome,
    this.email,
    this.isAdmin,
    this.gender,
    this.sobrenome,
  });

  UserModel.fromSnapshot(Map<String, dynamic> data, String id) {
    key = id;
    nome = data['name'] != null ? data['name'] : '';
    sobrenome = data['sobrenome'] != null ? data['sobrenome'] : '';
    email = data['email'] != null ? data['email'] : '';
    isAdmin = data['isAdmin'] != null ? data['isAdmin'] : false;
    gender = data['gender'] != null ? data['gender'] : '';
  }

  Map<String, dynamic> toMap() {
    return {
      'name': nome,
      'sobrenome': sobrenome,
      'email': email,
      'isAdmin': isAdmin,
      'gender': gender,
    };
  }
}
