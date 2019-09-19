class User {
  final String id;
  final String name;
  final String email;
  final String photoUrl;

  User({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
  });

  User.fromMap(Map<String, dynamic> data, String id)
      : id = id,
        name = data['name'] ?? '',
        email = data['email'],
        photoUrl = data['photo_url'];
}
