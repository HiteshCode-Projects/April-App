class Client {
  String name = "";
  int age = 0;

  //Method/Function
  void greet() {
    print("Hello , my Name is $name");
  }

  
}

void main() {
  //How To Create/Build Object:
  //Syntax: ClassName ObjectName = CLassName();

  Client xyz = Client();

  xyz.name = "Yasharth";
  xyz.greet();
}
