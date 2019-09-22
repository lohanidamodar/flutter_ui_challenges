class User {
  final String id;
  final String name;
  final String email;
  final String photoUrl;
  final List<String> favorites;

  User({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.favorites,
  });

  User.fromMap(Map<String, dynamic> data, String id)
      : id = id,
        name = data['name'] ?? '',
        email = data['email'],
        favorites=List<String>.from(data['favorites'] ?? []),
        photoUrl = data['photo_url'];
}
