class UserData {
  final String? id;
  final String? name;
  final String? emails;
  final String? phone;
  final String? image_link;

  UserData({
    required this.id,
    required this.name,
    required this.emails,
    required this.phone,
    required this.image_link
  });

  factory UserData.fromMap(Map<String, dynamic> map) {
    return UserData(
      id: map['id'],
      name: map['name'],
      emails: map['emails'],
      phone: map['phone'],
      image_link: map['image_link'],

    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'emails': emails,
      'phone': phone,
      'image_link': image_link,

    };
  }
}
