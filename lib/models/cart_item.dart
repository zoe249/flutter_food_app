import 'package:buy_order_project/models/food.dart';

class CartItem {
  Food food;
  List<Addon> selectedAddons;
  int quantiry;

  CartItem({
    required this.food,
    required this.selectedAddons,
    this.quantiry = 1
  });

  double get totalPrice {
    double addonsPrices = selectedAddons.fold(0, (sum, addon) => sum + addon.price);
    return (food.price + addonsPrices) * quantiry;
  }
}