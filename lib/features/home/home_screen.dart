import 'package:daca_konya_app/features/favourites_overview/favourites_overview.dart';
import 'package:daca_konya_app/features/orders_overview/presentation/screens/orders_overview.dart';
import 'package:daca_konya_app/features/products_overview/presentation/screens/products_overview_screen.dart';
import 'package:daca_konya_app/features/profile_overview/presentation/screens/profile_overview_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const route = "/home_screen";
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> get _getNavScreens => [
        ProductsOverviewScreen(),
        OrdersOverviewScreen(),
        FavouritesOverviewScreen(),
        ProfileOverviewScreen(),
      ];
  int currIndex = 0;
  void onNavBarItemTapped(int index) {
    setState(() {
      currIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getNavScreens[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onNavBarItemTapped,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.2),
        currentIndex: currIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            label: "Products",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
            ),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
