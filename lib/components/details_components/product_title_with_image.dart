import 'package:flutter/material.dart';
import 'package:shop_module/models/Product.dart';

import '../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Çanta Detayları",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(text: "Fiyat\n"),
                  TextSpan(
                      text: "₺${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ]),
              ),
              //SizedBox(width: kDefaultPaddin/2,),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Expanded(
                    child: Image.asset(product.image,fit: BoxFit.fill,),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}