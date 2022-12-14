import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/utils/app_style.dart';

class ListOrderItem extends StatelessWidget {
  final ProductModel product;
  const ListOrderItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: historyText),
      ],
    );
  }
}
