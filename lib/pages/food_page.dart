import 'package:buy_order_project/components/my_button.dart';
import 'package:buy_order_project/main.dart';
import 'package:buy_order_project/models/food.dart';
import 'package:buy_order_project/models/restaurant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key, 
    required this.food,
  }) {
    for(Addon addon in food.availableAddress) {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // method to add to cart
  void addToCart(Food food, Map<Addon, bool> selectedAddons) {
    Navigator.pop(context);

    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in widget.food.availableAddress) {
      if (widget.selectedAddons[addon] == true) {
        currentlySelectedAddons.add(addon);
      }
    }

    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // scaffold UI 
        Scaffold(
          // appBar: AppBar(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                // food Image
                Image.asset(widget.food.imagePath),
            
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),
                      ),
            
                      // price
                      Text(
                        '\$${widget.food.price.toString()}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      
                      const SizedBox(height: 10),
            
                      // food descruption
                      Text(
                        widget.food.description,
                        style: TextStyle(
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary
                        ),
                      ),
            
                      const SizedBox(height: 10),
            
                      Divider(color: Theme.of(context).colorScheme.secondary),
            
                      const SizedBox(height: 10),
            
                      Text(
                        'Add-ons',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),
                      ),
            
                      const SizedBox(height: 10),
                  
                      // addons 
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).colorScheme.secondary
                          ),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: widget.food.availableAddress.length,
                          itemBuilder: (context, index) {
                            Addon addon = widget.food.availableAddress[index];
                            return CheckboxListTile(
                              title: Text(addon.name),
                              subtitle: Text(
                                '\$${addon.price.toString()}', 
                                style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                ),
                              value: widget.selectedAddons[addon], 
                              onChanged: (bool? value) {
                                setState(() {
                                  widget.selectedAddons[addon] = value!;
                                });
                              }
                            );
                          }
                        ),
                      )
                    ],
                  ),
                ),
                // button -> add to cart
                MyButton(
                  text: 'Add to cart', 
                  onTap: () => addToCart(widget.food, widget.selectedAddons)
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        // back button
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
      ],
    );
  }
}