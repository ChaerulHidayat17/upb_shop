import 'package:flutter/material.dart';
import 'package:upb_shop/pages/home/chat_page.dart';
import 'package:upb_shop/pages/home/home_page.dart';
import 'package:upb_shop/pages/home/profile_page.dart';
import 'package:upb_shop/pages/home/wishlist_page.dart';
import 'package:upb_shop/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 21,
        ),
      );
    }

    Widget customBottomNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 12,
          color: backgroundColor4, // Setel warna latar belakang di sini
          child: Container(
            color: backgroundColor4, // Setel warna latar belakang di sini juga
            child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_home.png',
                    width: 21,
                    color: currentIndex == 0 ? primaryColor : Color(0xff808191),
                  ),
                  label: '', // Menambahkan label
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_chat.png',
                    width: 20,
                    color: currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                  label: '', // Menambahkan label
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_wishlist.png',
                    width: 20,
                    color: currentIndex == 2 ? primaryColor : Color(0xff808191),
                  ),
                  label: '', // Menambahkan label
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_profile.png',
                    width: 18,
                    color: currentIndex == 3 ? primaryColor : Color(0xff808191),
                  ),
                  label: '', // Menambahkan label
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ChatPage();
        case 2:
          return WishlistPage();
        case 3:
          return ProfilePage();
        default:
          return HomePage(); // Default case, jika currentIndex di luar range yang diinginkan
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNav(),
      body: body(), // Menggunakan body widget sesuai currentIndex
    );
  }
}
