void main() {
  //Collection of Data - Maps
  // Rule -   key(left):value(right) pair

  Map<String, String> user = {
    "name": "Rahul",

    "email": "Rahul@gmail.com",

    "Idno": "R011",
  };

  Map<String, dynamic> userProfile = {
    "name": "Amit",

    "age": 18,

    "isLoggedIn": true,
  };

  //Access The Value - By the [KeyName]
  print(userProfile["isLoggedIn"]);

  userProfile["city"] = "Mumbai";

  print(userProfile);

  userProfile["age"] = 24;

  print(userProfile);

  //Remove Data
  userProfile.remove("age");

  print(userProfile);

  
}
