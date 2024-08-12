import 'package:e_commerce_store/Screens/cart_screen.dart';
import 'package:e_commerce_store/Screens/home_screen/PopularProducts/popular_product.dart';
import 'package:e_commerce_store/Screens/home_screen/home_screen.dart';
import 'package:e_commerce_store/Screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({super.key});


  @override
  createState() => _MyAppState();
}

class _MyAppState extends State<BottomNavigationMenu> {
  int _currentIndex = 0;

  final listChildren = [ const HomeScreen(), const PopularProductScreen(), const CartScreen(), const ProfileScreen()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: listChildren[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          /// esko jab ap remove kro ge to icons oper nichy hona shore ho jai gy
            type: BottomNavigationBarType.fixed, // Add this line
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          iconSize: 30,
          selectedLabelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
            unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500,fontSize: 12,color: Colors.black),
          onTap: onTabTapped,   // new
          currentIndex: _currentIndex, // new
          items: const [

            /// Home
              BottomNavigationBarItem(icon: Icon(Iconsax.home),label: 'Home'),

              /// Notification
              BottomNavigationBarItem(icon: Icon(Iconsax.heart),label: 'Favorite'),

              /// Add to cart
              BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_checkout),label: 'Cart'),

              /// Profile
              BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: 'Profile'),
          ]
        ),
      );
  }
}

// Image.asset('assets/Icons/btn_home.png',height: 30,width: 30)


// Image.asset('assets/Icons/btn_shopping_cart.png',height: 30,width: 30),

// Image.asset('assets/Icons/btn_user_icon.png',height: 30,width: 30)