import 'package:flutter/material.dart';
import 'package:growback_driver/presentation/main_screen/account/account_screen.dart';
import 'package:growback_driver/presentation/main_screen/order/order_screen.dart';
import 'package:growback_driver/presentation/main_screen/product/product_screen.dart';
import 'package:growback_driver/utils/app_color.dart';

import 'home/home_screen.dart';


class MainScreen extends StatefulWidget {
  final text;
  const MainScreen({Key? key, this.text = '',}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {



  int _selectedIndex = 0;

  Widget body() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreen(notifScreen: widget.text,);
        break;
      case 1:
        return OrderScreen();
        break;
      case 2:
        return ProductScreen();
        break;
      case 3:
        return AccountScreen();
        break;
      default:
        return HomeScreen(notifScreen: widget.text);
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColor.bg_status,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.secondary,
        onTap: _onItemTapped,
      ),
    );
  }
}
