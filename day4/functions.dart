void main() {
  //Function - To do a specific Task

  //1. function - ()
  void sayHello() {
    print("Hello User");
  }

  sayHello(); //Call the function by the name

  //2. function with Parameter (parameter - dumpy data)

  void greetUser(String name) {
    print("Welcome $name");
  }

  greetUser("Advika");

  //3. Function with Return Value/Type

  int calculateTotal(int price, int quantity) {
    return price * quantity;
  }

  int total = calculateTotal(100, 2);
  print(total);

  //Arrow Function - Short and Clean
  //Function Task in one single line
  // ()=>

  int add(int a, int b) => a + b;

  print(add(5, 3));
}
