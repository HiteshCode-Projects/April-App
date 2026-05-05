void main() {
  // Mulitple Data

  // List - STore Mulitple Data at the Same Time

  // [] - sqaure Bracket

  // Rule - Index No Starts with Zero

  List<String> students = [
    "Advika",
    "Aniket",
    "Biswajit",
    "Krisha",
    "Saumya",
    "Shounak",
    "Yasharth",
  ];

  print(students);

  //Acces the Data By Index No - ListName[IndexNo]
  print(students[3]);

  //Add Item/Data To List
  // .add("Value")
  students.add("John");

  print(students);

  //Remove Item/Data To List
  //  .remove("Value")

  students.remove("Aniket");

  print(students);

  //List Length- Total No of Data =  .length
  print(students.length);

  //Loop Through List
  for (String msg in students) {
    print(msg);
  }
}
