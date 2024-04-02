import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'Lorerjgfnekjn ueiurjnjjjjjjjjjjjjj jjjjjjjjjjjj dsfn jink',
      imagePath: 'lib/images/img10.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'Lorerjgfnekjn ueiurjnjjjjjjjjjjjjj jjjjjjjjjjjj dsfn jink',
      imagePath: 'lib/images/img6.png',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'Lorerjgfnekjn ueiurjnjjjjjjjjjjjjj jjjjjjjjjjjj dsfn jink',
      imagePath: 'lib/images/img7.jpg',
    ),
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      description: 'Lorerjgfnekjn ueiurjnjjjjjjjjjjjjj jjjjjjjjjjjj dsfn jink',
      imagePath: 'lib/images/img9.jpg',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
