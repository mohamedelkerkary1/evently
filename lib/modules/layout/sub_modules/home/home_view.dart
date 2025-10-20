import 'package:evently_7/core/constants/app_assets.dart';
import 'package:evently_7/core/theme_manager/color_pallate.dart';
import 'package:evently_7/modules/layout/sub_modules/home/models/categoryData.dart';
import 'package:evently_7/modules/layout/sub_modules/home/widgets/eventItemWidget.dart';
import 'package:evently_7/modules/layout/sub_modules/home/widgets/tab_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentTabIndex = 0;
  List<CategoryData> categories = [
    CategoryData(categoryTitle: "Sports", categoryImage: "", categoryIcn: ""),
    CategoryData(categoryTitle: "Birthday", categoryImage: "", categoryIcn: ""),
    CategoryData(
      categoryTitle: "Book Club",
      categoryImage: "",
      categoryIcn: "",
    ),
    CategoryData(categoryTitle: "Gaming", categoryImage: "", categoryIcn: ""),
    CategoryData(categoryTitle: "Meeting", categoryImage: "", categoryIcn: ""),
    CategoryData(categoryTitle: "WorkShop", categoryImage: "", categoryIcn: ""),
    CategoryData(categoryTitle: "Sports", categoryImage: "", categoryIcn: ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 200,
          width: double.infinity,
          padding: EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 16),
          decoration: BoxDecoration(
            color: ColorPallate.primaryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back ss✨",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Mohamed Elkerkary",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage(AppAssets.brightnessIcn),
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Container(
                        alignment: Alignment.center,
                        width: 35,
                        height: 33,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Text(
                          "EN",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: ColorPallate.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  ImageIcon(AssetImage(AppAssets.mapIcn), color: Colors.white),
                  Text(
                    "Cairo , Egypt",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              DefaultTabController(
                length: categories.length,
                child: TabBar(
                  labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  indicatorPadding: EdgeInsets.zero,
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  indicatorColor: Colors.transparent,
                  dividerColor: Colors.transparent,
                  onTap: (index) {
                    setState(() {
                      currentTabIndex = index;
                    });
                  },
                  tabs: categories.map((categoryData) {
                    return TabItemWidget(
                      isSelected:
                          currentTabIndex == categories.indexOf(categoryData),
                      categoryData: categoryData,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return EventItemWidget();
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 15);
            },
          ),
        ),
      ],
    );
  }
}
