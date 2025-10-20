import 'package:evently_7/core/constants/app_assets.dart';
import 'package:flutter/cupertino.dart';

class EventItemWidget extends StatelessWidget {
  const EventItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
       image: DecorationImage(image: AssetImage(AppAssets.sportImg),
       fit: BoxFit.cover,
       )
      ),
    );
  }
}
