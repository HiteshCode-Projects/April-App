void main() {
  // List of Maps
  List<Map<String, dynamic>> students = [
    {"name": "John", "course": "App", "idNo": 1221},

    {"name": "Bob", "course": "Web", "idNo": 9887},

    {"name": "Charlie", "course": "AI", "idNo": 3478},
  ];

  //Access The Data
  for (var user in students) {
    print("Name : ${user["name"]} , Course : ${user["course"]}      ");
  }
}
