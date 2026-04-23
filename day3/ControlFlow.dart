void main() {
  // - if(Condition) - Output When COndition is True

  bool isLoggedIn = true;

  if (isLoggedIn) {
    print("Welcome To My App");
  }

  int age = 12;

  if (age >= 18) {
    print("Eligible");
  } else {
    print("Not Eligible");
  }

  // if(True) - else(False) Statement

  bool paymentSucess = false;

  if (paymentSucess) {
    print("Payment Successful");
  } else {
    print("Payment failed");
  }

  //Multiple Choices - else if

  int rating = 2;

  if (rating == 5) {
    print("Excellent");
  } else if (rating == 4) {
    print("Very Good");
  } else if (rating == 3) {
    print("Good");
  } else {
    print("Needs Improvement");
  }

  //Multiple Choices - Switch

  int menuOption = 2;

  switch (menuOption) {
    case 1:
      print("Home Screen");
      break;
    case 2:
      print("Profile  Screen");
      break;
    case 3:
      print("Settings Screen");

    default:
      print("Invalid Options");
  }
}
