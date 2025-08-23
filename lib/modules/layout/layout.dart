import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Bounceable(
        onTap: (){},
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 25,
            backgroundColor: ColorPallate.primaryColor,
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorPallate.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12,
          color: Colors.white,
        ),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.homeIcn)),
            activeIcon: ImageIcon(AssetImage(AppAssets.homeActiveIcn)),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.mapIcn)),
            activeIcon: ImageIcon(AssetImage(AppAssets.mapActiveIcn)),
            label: "Map",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.favIcn)),
            activeIcon: ImageIcon(AssetImage(AppAssets.favActiveIcn)),
            label: "Favorites ",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppAssets.personBNBarIcn)),
            activeIcon: ImageIcon(AssetImage(AppAssets.personActiveBNBarIcn)),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
