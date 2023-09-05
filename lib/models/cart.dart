import 'package:flutter/widgets.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air force 1',
        price: '100',
        imagePath: 'assets/images/air-force-1.png',
        description: 'Full white'),
    Shoe(
        name: 'Air jordan 1',
        price: '300',
        imagePath: 'assets/images/air-jordan-1-hi-flyease.png',
        description: 'Black + Red'),
    Shoe(
        name: 'Air jordan 1',
        price: '300',
        imagePath: 'assets/images/air-jordan-1-mid-older.png',
        description: 'Grey'),
    Shoe(
        name: 'Air jordan 1',
        price: '300',
        imagePath: 'assets/images/air-jordan-1-retro-high-shoe.png',
        description: 'Brown'),
    Shoe(
        name: 'Air tailwind',
        price: '110',
        imagePath: 'assets/images/air-tailwind.png',
        description: 'Basic color'),
    Shoe(
        name: 'Air force 1 mid',
        price: '150',
        imagePath: 'assets/images/custom-nike-air-force-1-mid.png',
        description: 'Orange + White'),
    Shoe(
        name: 'Dunk high',
        price: '200',
        imagePath: 'assets/images/custom-nike-dunk-high-blue.png',
        description: 'Blue + White'),
    Shoe(
        name: 'Dunk high',
        price: '100',
        imagePath: 'assets/images/custom-nike-dunk-high.png',
        description: 'Black + White'),
    Shoe(
        name: 'Air max',
        price: '150',
        imagePath: 'assets/images/nike-air-max.png',
        description: 'Pink + Cream'),
    Shoe(
        name: 'Invincible run 3',
        price: '100',
        imagePath: 'assets/images/nike-invincible-run-3.png',
        description: 'Blue'),
  ];
  // list of items in our cart
  List<Shoe> userCart = [];
  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item
  void remove(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (Shoe shoe in userCart) {
      try {
        double price = double.parse(shoe.price);
        total += price;
      } catch (e) {
        print("Error: ${e.toString()}");
      }
    }
    return total;
  }
}
