import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_module/models/Product.dart';
import 'package:shop_module/screen/details_screen.dart';

import '../../constants.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text("Kadın",style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.bold),),
        ),
        Categories(),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: GridView.builder(
            itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  crossAxisCount: 2,
                  childAspectRatio: 0.75
              ),
              itemBuilder: (context,index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index],))),)
          ),
        ),
        ),
      ],
    );
  }
}




