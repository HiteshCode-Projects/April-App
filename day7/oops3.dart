class User {
  String name;
  String email;

  //constructor - Specail Function/Method which is same as class name and it is used to initialize the object

  User(this.name, this.email); //Constructor(this.paramtername)
}

void main() {
  User abc = User("Biswajit", "Bis@gmail.com");

  print(abc.email);
}
