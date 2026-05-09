void main() {
  String user = "Aniket";

  int age = 22;

  print("My Name is $user and age in $age");

  String firstName = "Amit";
  String LastName = "Sharma";

  String fullName = firstName + LastName;
  print(fullName);

  print(firstName.length);

  String city = "DeLhi";
  print(city.toUpperCase());
  print(city.toLowerCase());

  String message = "Welcome To Dart App";

  var count = 0;

  if (message.contains("Dart")) {
    print("Dart Found");
    count++;
  }
  print(count);

  //Replace Text
  String phone = "123-456-7890";

  String cleanPhone = phone.replaceAll("-", "");
  print(cleanPhone);

  //Trim - remove Extra Space
  String usernamee = "     admin        ";
  print(usernamee.length);
  print(usernamee.trim());

  String input = "Admin";
  String saved = "admin";

  if (input.toLowerCase() == saved.toLowerCase()) {
    print("Matched");
  }
}
