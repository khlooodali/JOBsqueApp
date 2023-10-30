class LoginModel {
  LoginModel({
    required this.user,
    required this.token,
    required this.status,
  });
  late final UserData user;
  late final String token;
  late final bool status;

  LoginModel.fromJson(Map<String, dynamic> json) {
    user = UserData.fromJson(json['user']);
    token = json['token'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user'] = user.toJson();
    data['token'] = token;
    data['status'] = status;
    return data;
  }
}

class UserData {
  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
  });
  late final int id;
  late final String name;
  late final String email;
  late final String createdAt;
  late final String updatedAt;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
