import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:growback_driver/presentation/main_screen/main_screen.dart';
import 'package:growback_driver/presentation/main_screen/order/history_order_item.dart';
import 'package:growback_driver/widget/notification_widget.dart';
import '../../../utils/app_asset.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_style.dart';

class HomeScreen extends StatefulWidget {
  String notifScreen;

  HomeScreen({Key? key, this.notifScreen = ""}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool order = false;
  bool light = true;
  String statusBar = "Buka";

  driverPickup() async {
    var duration = Duration(seconds: 3);
    Timer(duration, () {
      if(widget.notifScreen == "notif"){

      }else{
        showDialog(context: context, builder: (context) => NotificationWidget(product: null),);
      }
    });
  }

  @override
  void initState() {
    driverPickup();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Visibility(
              visible: light,
              child: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x1b000000),
                            blurRadius: 9,
                            offset: Offset(0, 2),
                          )
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, Burger Enjoy",
                          style: greetText,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Total Transaksi kamu :",
                              style: greetText,
                            ),
                            Text(
                              "78",
                              style: totalOrder,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: light == false
          ? HomePage(
              flex: 3,
              image: AppAsset.close_order,
              headHomeText: "Dagangan Anda Sedang Tutup",
              subHomeText:
                  "Untuk buka kembali, silakan klik tombol\nmerah dibawah",

            )
          : order == true
              ? HomePage(
                  flex: 3,
                  image: AppAsset.no_order,
                  headHomeText: "Belum Ada Yang Order nih, Semangat !!",
                  subHomeText:
                      "Nanti kalau sudah ada yang order, bisa liat di sini yaa",
                )
              : widget.notifScreen == 'notif'
                  ? NotificationScreen(order: false)
                  : HomePage(
                      flex: 3,
                      image: AppAsset.no_order,
                      headHomeText: "Belum Ada Yang Order nih, Semangat !!",
                      subHomeText:
                          "Nanti kalau sudah ada yang order, bisa liat di sini yaa",
                    ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        height: 54,
        decoration: BoxDecoration(
          color: Color(0xff022B46),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 36,
              width: 112,
              decoration: BoxDecoration(
                color: AppColor.lightGrey.withOpacity(0.2),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    AppAsset.wallet,
                    width: 25,
                  ),
                  Text(
                    'Rp.90.000',
                    style: wallet,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(light == true ? "Buka" : "Tutup", style: status),
                SizedBox(
                  width: 5,
                ),
                FlutterSwitch(
                  value: light,
                  activeColor: Colors.white,
                  inactiveColor: Colors.white,
                  activeToggleColor: Colors.green,
                  inactiveToggleColor: Colors.red,
                  onToggle: (val) {
                    setState(() {
                      light = val;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///close = 5, open 3
///close: "Dagangan Anda Sedang Tutup", open: "Belum Ada Yang Order nih, Semangat !!"
///open: "Nanti kalau sudah ada yang order, bisa liat di sini yaa" Close: "Untuk buka kembali, silakan klik tombol\nmerah dibawah",      :

class NotificationScreen extends StatelessWidget {
  bool order;

  NotificationScreen({Key? key, required this.order}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Waktu Kamu",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w900,
                          color: AppColor.black,
                        ),
                      ),
                      Text(
                        "30:00",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    AppAsset.send,
                    width: 50,
                  ),
                ],
              ),
              Wrap(
                children: [
                  NotificationWidget(
                    product: null,
                    visibility: false,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      child: Card(
                        color: Color(0xff3BB3FF),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 11),
                          child: Center(child: Text("Selesai", style: btnText)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen()));
                      },
                      child: Card(
                        color: Color(0xffFF3B3B),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 11),
                          child: Center(child: Text("Batalkan ", style: btnText)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ));
  }
}

class HomePage extends StatelessWidget {
  final double flex;
  final String image;
  final String headHomeText;
  final String subHomeText;

  HomePage({
    Key? key,
    required this.flex,
    required this.image,
    required this.headHomeText,
    required this.subHomeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: Duration(seconds: 1000),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: 235,
                  child: Image.asset(image)),
              SizedBox(
                height: 5,
              ),
              Text(
                headHomeText,
                style: headTextHome,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subHomeText,
                style: subTextHome,
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
