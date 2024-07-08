import 'package:buy_order_project/components/my_button.dart';
import 'package:buy_order_project/components/my_cart_tile.dart';
import 'package:buy_order_project/models/restaurant.dart';
import 'package:buy_order_project/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        // cart 
        final userCart = restaurant.cart;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Are you sure you want to clear the cart?'),
                      actions: [
                        TextButton(
                          child: const Text('Cacnel'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),

                        TextButton(
                          child: const Text('Confirm'),
                          onPressed: () {
                            restaurant.clearCart();
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    )
                  );
                },
              )
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty 
                    ? const Expanded(
                      child: Center(
                        child: Text('Cart is Empty'),
                      ),
                    )
                    : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          final cartItem = userCart[index];
                          return MyCartTile(cartItem: cartItem);
                        }
                      ),
                    )
                  ],
                ),
              ),
              MyButton(
                text: 'Go to checkout',
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => const PaymentPage()
                    )
                  );
                },
              )
            ],
          ),
        );
      },
    );
  }
}