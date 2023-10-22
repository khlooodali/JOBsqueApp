class UserProfile {
  late final Data data;
  late final bool status;

  UserProfile.fromJson(Map<String, dynamic> json) {
    data = Data.fromJson(json['data']);
    status = json['status'];
  }
}

class Data {
  late final int id;
  late final String name;
  late final String email;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
  }
}
