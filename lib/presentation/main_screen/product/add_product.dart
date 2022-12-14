import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';
import 'package:growback_driver/widget/pictures.dart';
import 'package:growback_driver/widget/reuTextField.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({Key? key,}) : super(key: key);


  // final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0.5,
        backgroundColor: AppColor.bg_status,
        centerTitle: true,
        title: Text("Tambah Produk", style: appBarText),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Wrap(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Column(
                                children: [
                                  Text(
                                    "Foto Makanan",
                                    style: headTextHome,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          IconButton(
                                              onPressed: () async {
                                                await availableCameras().then((value) => Navigator.push(context,
                                                    MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
                                              },
                                              icon: Icon(Icons.camera_alt)),
                                          Text(
                                            "Kamera",
                                            style: headTextHome,
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons.photo)),
                                          Text(
                                            "Galeri",
                                            style: headTextHome,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  Divider(
                                    thickness: 2,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Batal',
                                        style: dataText,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        );
                      });
                },
                child:
                // picture.path == picture.path! ?
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColor.bg_status),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 30,
                  ),
                )
                //     : Container(
                //   height: 60,
                //   width: 60,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //   ),
                //   child: Image.file(File(picture.path), fit: BoxFit.cover, width: 60),
                // )
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Tambah Foto Makanan", style: addPhoto),
              const SizedBox(
                height: 20,
              ),
              const ReuTextField(text: "Nama Menu"),
              const SizedBox(
                height: 10,
              ),
              const ReuTextField(text: "Harga Jual"),
              const Spacer(
                flex: 2,
              ),
              Wrap(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.bg_status,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 13),
                      child: Center(
                          child: Text(
                        "Simpan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      )),
                    ),
                  ),
                ],
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
