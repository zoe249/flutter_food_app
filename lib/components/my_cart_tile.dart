import 'package:buy_order_project/components/my_quantity_selector.dart';
import 'package:buy_order_project/models/cart_item.dart';
import 'package:buy_order_project/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {

  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        return Container(
          child: Column(
            children: [
              Row(
                children: [
                  // food image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                    ),
                  ),

                  const SizedBox(width: 10),
                  
                  // name and price
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartItem.food.name),
                      Text('\$${cartItem.food.price.toString()}')
                    ],
                  ),

                  // increment or decrement quantiry
                  QuantitySelector(
                    quantity: cartItem.quantiry, 
                    food: cartItem.food, 
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    },
                    onIncrement: () {
                      restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                    }, 
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}