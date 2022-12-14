import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/utils/app_style.dart';


class ProductItem extends StatelessWidget {
  final product;

  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // // TerdekatModel terdekatModel = terdekatModelList[0..toString()];
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context){
        //           return
        // });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Container(
          child: Row(children: [
            Expanded(
              flex: 3,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(
                    product.imageUrls,
                    width: 110,
                    height: 110,
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: titleProduct,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    product.price,
                    style: priceProduct
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
