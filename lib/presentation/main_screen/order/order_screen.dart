import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/presentation/main_screen/order/history_order_item.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.5,
        backgroundColor: AppColor.bg_status,
        centerTitle: true,
        title: Text("History Order", style: appBarText),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            _listProduct(productList)
          ],
        ),
      ),
    );
  }
}

Widget _listProduct(List<ProductModel> product) {
  return ListView.builder(
    itemBuilder: (context, index) => HistoryOrderItem(product: product[index]),
    itemCount: productList.length,
    physics: const BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
  );
}