import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:growback_driver/presentation/main_screen/main_screen.dart';
import 'package:growback_driver/utils/app_asset.dart';
import 'package:growback_driver/utils/app_color.dart';
import 'package:growback_driver/utils/app_style.dart';
import 'package:growback_driver/widget/pictures.dart';
import 'package:growback_driver/widget/reuTextField.dart';

class AddProductScreenPhotos extends StatefulWidget {
  AddProductScreenPhotos({
    Key? key,
    required this.picture,
  }) : super(key: key);

  final XFile picture;

  @override
  State<AddProductScreenPhotos> createState() => _AddProductScreenPhotosState();
}

class _AddProductScreenPhotosState extends State<AddProductScreenPhotos> {
  @override
  Widget build(BuildContext context) {
    var camera = widget.picture.path;
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
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:
                        Image.file(File(camera), fit: BoxFit.cover, width: 60)),
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
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                child: Wrap(
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
