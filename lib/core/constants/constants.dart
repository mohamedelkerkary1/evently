import 'package:evently_7/modules/layout/sub_modules/favorites/fav_view.dart';
import 'package:evently_7/modules/layout/sub_modules/home/home_view.dart';
import 'package:evently_7/modules/layout/sub_modules/maps/maps_view.dart';
import 'package:evently_7/modules/layout/sub_modules/profile/profile_view.dart';
import 'package:flutter/material.dart';

abstract class Constants{
  static List<Widget> screens =[
    HomeView(),
    MapsView(),
    FavView(),
    ProfileView(),
  ];
}