import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF080ba1),
        centerTitle: true,
        title: const Text(
            'Halaman Pinjam Buku',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.0,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w700
          ),
        ),
      ),

      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          //
          // return Container(
          //   child: ListTile(
          //       leading: Icon(Icons.bookmarks),
          //       title: Text("${state[index].book}"),
          //       subtitle: Text("Dipinjam by ${state[index].bookId}"),
          //       trailing: Icon(Icons.more_vert),
          //   ),
          // );

          return ListTile(
            leading: Icon(Icons.bookmarks),

            title: Text(
                "${state[index].book?.judul}",
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                color: Color(0xFF080ba1),
              ),
            ),

            subtitle: Text(
              "Dipinjam by ${state[index].book?.penulis}",
              style: TextStyle(
                fontSize: 14.0,
                height: 1.8,
                color: Color(0xFF61677D),
                letterSpacing: -0.3,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
                Icons.delete,
              color: Color(0xFFB80000),
            ),
          );
        },
        separatorBuilder: (context, index){
          return Divider();
        },
      )),
    );
  }
}
