//how To Create class - keyword class

//Bluepirnt
class User {
  String name = "";
  int age = 0;
}

void main() {
  //Object - Real Things
  //How To Create/Build Object:
  //Syntax: ClassName ObjectName = CLassName();

  User user1 = User();

  user1.name = "Shounak";
  user1.age = 23;

  print(user1.name);

  User user2 = User();

  user2.name = "Krisha";
  print(user2.name);
}
