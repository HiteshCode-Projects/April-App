void main() async {
  print("App Started");

  String result = await fetchD();
  print(result);

  print("App Ready"); 
  
}

Future<String> fetchD() {
  return Future.delayed(Duration(seconds: 3), () => "Data Loaded");
}
