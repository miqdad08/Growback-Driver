import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/presentation/main_screen/product/add_product.dart';
import 'package:growback_driver/presentation/main_screen/product/product_item.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: AppColor.bg_status,
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Edit", style: editText),
          )
        ],
        title: Text("Produk", style: appBarText),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _listProduct(productList),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.secondary,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProductScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget _listProduct(List<ProductModel> product) {
  return ListView.builder(
    itemBuilder: (context, index) => ProductItem(product: product[index]),
    itemCount: productList.length,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}
