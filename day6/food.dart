void main() async {
  print("Ordering  ...");

  print(await placeOrder());

  print("Wating For Deliver.....");
  print(await delivery());

  print("Enjoy The Meal");
}

Future<String> placeOrder() {
  return Future.delayed(Duration(seconds: 2), () => "Order placed");
}

Future<String> delivery() {
  return Future.delayed(Duration(seconds: 3), () => "Order Delivered");
}
