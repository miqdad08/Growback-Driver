import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/utils/app_style.dart';

class ListItem extends StatelessWidget {
  final ProductModel product;
  const ListItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title, style: historyText),
                Text('1x', style: TextStyle(
                    color: Colors.grey,
                    fontWeight:FontWeight.w500,
                    fontSize: 10
                ),),
              ],
            ),
            Text("15.000", style: priceNotif),
          ],
        ),
        Divider(thickness: 2, )
      ],
    );
  }
}

