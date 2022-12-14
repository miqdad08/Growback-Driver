import 'dart:async';

import 'package:flutter/material.dart';
import 'package:growback_driver/model/product_model.dart';
import 'package:growback_driver/presentation/main_screen/home/list_item.dart';
import 'package:growback_driver/presentation/main_screen/main_screen.dart';
import 'package:growback_driver/utils/app_style.dart';

class NotificationWidget extends StatefulWidget {
  final product;
  final visibility;

  // bool visibility;

  NotificationWidget({
    Key? key,
    required this.product, this.visibility = true,
  }) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}
  

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1b000000),
                      blurRadius: 9,
                      offset: Offset(0, 2),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        Text(
                          'Perum Dahya Pesona Blok B2/2, Jombang,\nCiputat',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Column(
                        children: [
                          Container(
                            height: 1.5,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          Column(
                            children: [
                              _listProduct(productList),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: totalTextNotif,
                              ),
                              Text(
                                "Rp.180.000",
                                style: totalPriceNotif,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 1.5,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Catatan :",
                                  style: TextStyle(),
                                ),
                                Flexible(
                                  child: Text(
                                    "Bawangnya banyakin, Saosnya Banyakin, Sayurannya   Banyakin, Dagingnya banyakin. Maap saya laper, uwu",
                                    style: noteNotif,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Visibility(
                            visible: widget.visibility,
                            child: Column(
                              children: [
                                Container(
                                  height: 1.5,
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      color: Color(0xffFF3B3B),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 6),
                                        child: Center(
                                            child:
                                                Text("Tolak Order", style: btnText)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen(text: 'notif',)));
                                      },
                                      color: Color(0xff21D01F),
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.symmetric(vertical: 6),
                                        child: Center(
                                            child:
                                                Text("Ambil Order", style: btnText)),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}

Widget _listProduct(List<ProductModel> product) {
  return ListView.builder(
    itemBuilder: (context, index) => ListItem(product: product[index]),
    itemCount: productList.length - 1,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
  );
}
