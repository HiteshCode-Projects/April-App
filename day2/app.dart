void main() {
  //Variable - It Is Used To Store Data
  //Syntax VaribaleName = Value

  //String - "Anythinh Between quotes"  or 'Text'

  String username = "Pawan";
  print(username);

  // - Whole Numbers - int

  int age = 36;
  int likes = 150;
  int items = 3;

  print(likes);

  //Decimal Numbers - Numbers.Decimal Number - double

  double price = 99.99;
  double rating = 4.5;

  print(rating);

  //bool (true or false)

  bool isLogged = true;
  bool DarkMode = false;
  print(isLogged);

  //Smart Type - var Keyowrd
  var name = "Amit";

  var password = 1234;

  var cash = 100.55;

  print(password);
  print(name);
  print(cash);

  // dynamic - keyword - Can Change Data Type

  dynamic data = "Yasharth";

  data = 25;

  data = true;

  print(data);

  //const keyword - Fixed Forever

  const appName = "MyApp";

  print(appName);

  //Operators Help us to Do Actions

  //1.Arthmetic Operators - + , / - , * , %

  int pricee = 100;
  int qty = 2;

  int totalBill = pricee * qty;
  print(totalBill);

  //2. Relational Operators(Comaprios)

  int agee = 17;

  bool canVote = agee >= 18;
  print(canVote);

  double balance = 500;
  bool canPay = balance >= 300;
  print(canPay);

  //Logical Operators - && (AND) , || (OR) , ! (NOT)
  // && When Both Condition is True Then Only The Output is True

  bool isLoggedIn = true;

  bool hasSubscription = false;

  bool canWatchMovie = isLoggedIn && hasSubscription;
  print(canWatchMovie);

  bool isAdmin = true;
  bool isModerator = true;

  bool canDelete = isAdmin && isModerator;
  print(canDelete);

  // || _ even if one condition is True Then Output is True

  bool isAdmi = true;
  bool isModerato = false;

  bool canDelet = isAdmi || isModerato;
  print(canDelet);

  //Assigment Operator - Assign a Value - =
  int scr = 10;
  scr += 5;
  print(scr);

  //Ternary Operator - Decision in one line
  //
  bool login = true;

  String message = login ? "Weclome" : "Please Login";
  print(message);

  //Null-aware Operator ??
  //Used When data may be emppty

  String? namee;

  String displayName = namee ?? "Guest";
  print(displayName);
}
