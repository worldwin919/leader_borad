class User {
  String name;
  int points;
  String imagePath;

  User(this.name, this.points , this.imagePath);
}

class UserManager {
  List<User> users = [
    User('Vishu', 100 , 'lib/assets/u1.jpg'),
    User('Shruti', 15 , 'lib/assets/u2.jpg'),
    User('Abhi', 120 , 'lib/assets/u3.jpg')
  ];

  void addUser(String name, int points ,String imagePath) {
    User newUser = User(name, points , imagePath);
    users.add(newUser);
    print('user added !');
    users.sort((a, b) => b.points.compareTo(a.points));
  }
}
