import 'package:buy_order_project/components/my_drawer_title.dart';
import 'package:buy_order_project/pages/setting_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          
          MyDrawerTitle(
            text: 'H O M E',
            icon: Icons.home,
            onTap: () { 
              Navigator.pop(context);
            },
          ),

          MyDrawerTitle(
            text: 'S E T T I N G',
            icon: Icons.settings,
            onTap: () { 
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => const SettingPage())
              );
            },
          ),
          
          const Spacer(),

          MyDrawerTitle(
            text: 'L O G O U T',
            icon: Icons.logout,
            onTap: () { },
          ),

          const SizedBox(height: 25)
        ],
      ),
    );
  }
}