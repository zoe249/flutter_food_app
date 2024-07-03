import 'package:buy_order_project/models/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'food.dart';
class Restaurant extends ChangeNotifier{
  // list of food menu
  final List<Food> _menu = [
    Food(
      name: 'Classic Cheeseburger', 
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle', 
      imagePath: 'lib/images/burgers/cheese_burger.png', 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Cheeseburger', 
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle', 
      imagePath: 'lib/images/burgers/cheese_burger.png', 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Cheeseburger', 
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle', 
      imagePath: 'lib/images/burgers/cheese_burger.png', 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Cheeseburger', 
      description: 'A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle', 
      imagePath: 'lib/images/burgers/bluemoon_burger.png', 
      price: 0.99, 
      category: FoodCategory.burgers, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),

    Food(
      name: 'Classic Salads', 
      description: 'Salads 描述信息', 
      imagePath: 'lib/images/salads/caesar_salad.png', 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Salads', 
      description: 'Salads 描述信息', 
      imagePath: 'lib/images/salads/caesar_salad.png', 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Salads', 
      description: 'Salads 描述信息', 
      imagePath: 'lib/images/salads/caesar_salad.png', 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Salads', 
      description: 'Salads 描述信息', 
      imagePath: 'lib/images/salads/caesar_salad.png', 
      price: 0.99, 
      category: FoodCategory.salads, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),

    Food(
      name: 'Classic Sides', 
      description: 'Sides 描述信息', 
      imagePath: 'lib/images/sides/garlic_bread_side.png', 
      price: 0.99, 
      category: FoodCategory.sides, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Sides', 
      description: 'Sides 描述信息', 
      imagePath: 'lib/images/sides/garlic_bread_side.png', 
      price: 0.99, 
      category: FoodCategory.sides, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Sides', 
      description: 'Sides 描述信息', 
      imagePath: 'lib/images/sides/garlic_bread_side.png', 
      price: 0.99, 
      category: FoodCategory.sides, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Sides', 
      description: 'Sides 描述信息', 
      imagePath: 'lib/images/sides/garlic_bread_side.png', 
      price: 0.99, 
      category: FoodCategory.sides, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),
    Food(
      name: 'Classic Sides', 
      description: 'Sides 描述信息', 
      imagePath: 'lib/images/sides/garlic_bread_side.png', 
      price: 0.99, 
      category: FoodCategory.sides, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: 'Avocado', price: 1.99)
      ],
    ),

    Food(
      name: 'Classic Desserts', 
      description: 'Desserts 描述信息', 
      imagePath: 'lib/images/desserts/bbq_burger.png', 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Desserts', 
      description: 'Desserts 描述信息', 
      imagePath: 'lib/images/desserts/bbq_burger.png', 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Desserts', 
      description: 'Desserts 描述信息', 
      imagePath: 'lib/images/desserts/bbq_burger.png', 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Desserts', 
      description: 'Desserts 描述信息', 
      imagePath: 'lib/images/desserts/bbq_burger.png', 
      price: 0.99, 
      category: FoodCategory.desserts, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),

    Food(
      name: 'Classic Drinks', 
      description: 'Drinks 描述信息', 
      imagePath: 'lib/images/desserts/bluemoon_burger.png', 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Drinks', 
      description: 'Drinks 描述信息', 
      imagePath: 'lib/images/desserts/bluemoon_burger.png', 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ), 
    Food(
      name: 'Classic Drinks', 
      description: 'Drinks 描述信息', 
      imagePath: 'lib/images/desserts/bluemoon_burger.png', 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Food(
      name: 'Classic Drinks', 
      description: 'Drinks 描述信息', 
      imagePath: 'lib/images/desserts/bluemoon_burger.png', 
      price: 0.99, 
      category: FoodCategory.drinks, 
      availableAddress: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
  ];

  /*

  GETTERS

  */
  
  List<Food> get menu => _menu;

  /*
  
  OPERATIONS

  */ 

  // user cart
  final List<CartItem> _cart = [];

  get cart => _cart;

  // add to cart 添加购物车
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantiry++;
    }

    // otherwise add a new cart item to cart
    else {
      _cart.add(
        CartItem(
          food: food, 
          selectedAddons: selectedAddons
        )
      );
    }
    // 更新 UI
    notifyListeners();
  }

  // remove from cart 删除
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantiry > 1) {
        _cart[cartIndex].quantiry--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    // 更新 UI
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for(CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantiry;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantiry;
    }
    
    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    // 更新 UI
    notifyListeners();
  }

  /*
  
  HELPERS

  */

  // generate a 
}