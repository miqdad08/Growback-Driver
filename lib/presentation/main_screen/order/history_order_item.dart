import 'package:flutter/material.dart';
import 'package:growback_driver/gen/assets.gen.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/presentation/main_screen/order/list_order_item.dart';
import 'package:growback_driver/utils/app_asset.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';

class HistoryOrderItem extends StatelessWidget {
  final product;

  const HistoryOrderItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
      child: Stack(
        children: [
          Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1b000000),
                        blurRadius: 9,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 63, 8, 8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                _listProduct(productList),
                              ],
                            )
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Qty:1", style: historyText,),
                                Text("Qty:2", style: historyText,),
                                Text("Qty:5", style: historyText,),
                                Text("Qty:2", style: historyText,),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("30.000", style: historyText,),
                                Text("40.000", style: historyText,),
                                Text("50.000", style: historyText,),
                                Text("60.000", style: historyText,),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 2,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text("Total : Rp.180.000",style: totalOrderHistory,),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColor.lightBlue,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Image.asset(
                              AppAsset.icon_growback,
                              height: 23,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ucok Albama', style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                              ),),
                              SizedBox(height: 5,),
                              Text('Tiban Indah Permai Blok H2/5', style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                              ),)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Order id: 836', style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),),
                          SizedBox(height: 5,),
                          Text('02,14,2019', style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w900,
                          ),)
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _listProduct(List<ProductModel> product) {
  return ListView.builder(
    itemBuilder: (context, index) => ListOrderItem(product: product[index]),
    itemCount: productList.length-1,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
  );
}