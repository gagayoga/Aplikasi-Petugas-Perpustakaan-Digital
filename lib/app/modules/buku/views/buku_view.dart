import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_rplb_35/app/routes/app_pages.dart';

import '../controllers/buku_controller.dart';

class BukuView extends GetView<BukuController> {
  const BukuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF080ba1),
        title: const Text('Halaman Buku',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 15.0,
          letterSpacing: -0.5,
          fontWeight: FontWeight.w700
        ),
        ),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF080ba1),
        onPressed: () => Get.toNamed(Routes.ADD_BOOK),
        child: Icon(Icons.add),
      ),

      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text("${state[index].judul}"),
            subtitle: Text("Ditulis by ${state[index].penulis}"),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      )),

    );
  }
}
