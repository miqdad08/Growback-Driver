import 'package:flutter/material.dart';
import 'package:growback_driver/utils/app_asset.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';
import 'package:growback_driver/widget/notification_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
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
        body:
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1542574271-7f3b92e6c821?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Burger Enjoy,Aman",
                  style: nameAccount,
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColor.lightGrey, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          0,
                          30,
                          0,
                          20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Item Terjual",
                                  style: headTextAccount,
                                ),
                                Text("178", style: subTextAccount),
                              ],
                            ),
                            Column(
                              children: [
                                Text("Dompet", style: headTextAccount),
                                Text("Rp 90.000", style: subTextAccount),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColor.lightGrey, width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          5,
                          10,
                          0,
                          10,
                        ),
                        child: Column(
                          children: [
                            Table(columnWidths: {
                              0: const FlexColumnWidth(1.5),
                              1: const FlexColumnWidth(3.5),
                              2: const FlexColumnWidth(0.3),
                              3: const FlexColumnWidth(6),
                            }, children: [
                              TableRow(children: [
                                Image.asset(
                                  AppAsset.box,
                                  height: 20,
                                ),
                                Text(
                                  'Nama Lapak',
                                  style: dataText,
                                ),
                                Text(
                                  ':',
                                  style: dataText,
                                ),
                                Text(
                                  'Burger Enjoy, Aman',
                                  style: mailText,
                                ),
                              ]),
                              const TableRow(children: [
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                  indent: 10,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                  endIndent: 20,
                                ),
                              ]),
                              TableRow(children: [
                                const Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                Text(
                                  'No.Hp',
                                  style: dataText,
                                ),
                                Text(
                                  ':',
                                  style: dataText,
                                ),
                                Text(
                                  '0912 2392 2382',
                                  style: mailText,
                                ),
                              ]),
                              const TableRow(children: [
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                  indent: 10,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                ),
                                Divider(
                                  height: 15,
                                  thickness: 2,
                                  endIndent: 20,
                                ),
                              ]),
                              TableRow(children: [
                                const Icon(
                                  Icons.mail,
                                  size: 20,
                                  color: Colors.grey,
                                ),
                                // SizedBox(width: 5,),
                                Text(
                                  'Gmail',
                                  style: dataText,
                                ),
                                Text(
                                  ':',
                                  style: dataText,
                                ),
                                Text(
                                  'burger@enjoy.aman',
                                  style: mailText,
                                ),
                              ]),
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      );
  }
}
