import 'package:e_commerce_app/bottom_nav_bar/nav_carts_pages/my_cart_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_favorite_pages/favorite_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_home_pages/home_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_menu_pages/menu_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_profile_pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage>{


  int  selectedIndex =0;

  List<Widget> navePages=[

    MenuPage(),
    FavoritePage(),
    HomePage(),
    MyCartPage(),
    ProfilePage()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navePages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(selectedIcon: Icon(Icons.menu,color: Colors.blue,),
              icon: Icon(Icons.menu_outlined),
              label: "Menu"),
          NavigationDestination(selectedIcon: Icon(Icons.favorite,color: Colors.pinkAccent.shade200,),
            icon: Icon(Icons.favorite_outline),
            label: "Fav"),
          NavigationDestination(selectedIcon: Icon(Icons.home,color: Colors.green,),
              icon: Icon(Icons.home_outlined),
              label: "Home"),
          NavigationDestination(selectedIcon: Icon(Icons.shopping_cart,color: Colors.brown,),
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart"),
          NavigationDestination(selectedIcon: Icon(Icons.person,color: Colors.grey,),
            icon: Icon(Icons.person_outline),
            label: "Profile"),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value){
          selectedIndex = value;
          setState(() {

          });
        },
        height: 60,


      ),
    );
  }
}