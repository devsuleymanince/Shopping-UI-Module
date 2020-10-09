import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_module/components/home_components/theme_bottom_sheet.dart';
import 'file:///C:/Users/Suleyman/FlutterProjects/shop_module/lib/components/home_components/home_body.dart';
import 'package:shop_module/constants.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
 
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: IconButton(
            icon: SvgPicture.asset("assets/icons/back.svg"), onPressed: null),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        ThemeBottomSheet()
      ],
    );
  }
}
