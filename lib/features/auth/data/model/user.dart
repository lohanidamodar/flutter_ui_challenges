class User {
  final String id;
  final String name;
  final String email;
  final String photoUrl;
  final List<String> favorites;
  final List<String> surveys;

  User({
    this.id,
    this.name,
    this.email,
    this.photoUrl,
    this.favorites,
    this.surveys,
  });

  User.fromMap(Map<String, dynamic> data, String id)
      : id = id,
        name = data['name'] ?? '',
        email = data['email'],
        favorites=List<String>.from(data['favorites'] ?? []),
        surveys=List<String>.from(data['surveys'] ?? []),
        photoUrl = data['photo_url'];
}
