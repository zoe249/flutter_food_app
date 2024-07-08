import 'package:buy_order_project/components/my_receipt.dart';
import 'package:flutter/material.dart';

class DeliverProgressPage extends StatelessWidget {
  const DeliverProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliverProgressPage'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: const Column(
        children: [
          MyReceipt()
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          // profile pic of driver
          Container(
            decoration: 
                BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  shape: BoxShape.circle
                ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),
          ),

          const SizedBox(width: 10),
          
          // driver details
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mitch Koko',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Theme.of(context).colorScheme.inversePrimary
                ),
              ),
              Text(
                'Driver',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
            ],
          ),

          const Spacer(),

          Row(
            children: [
              // message button
              Container(
                decoration: 
                    BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle
                    ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),                  
                  color: Theme.of(context).colorScheme.primary
                ),
              ),
              const SizedBox(width: 10),
              // call button
              Container(
                decoration: 
                    BoxDecoration(
                      color: Theme.of(context).colorScheme.background,
                      shape: BoxShape.circle
                    ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.call, color: Colors.green,),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}