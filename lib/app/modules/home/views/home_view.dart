import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_rplb_35/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: [

              Container(
                margin: const EdgeInsets.only(top: 20.0, bottom: 50.0),
                child: const Text(
                  'Welcome To Ruang Pustaka',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width: 250,
                    height: 50,
                    child: Expanded(child: ElevatedButton(
                      onPressed: (){Get.toNamed(Routes.BUKU
                      );}, child: Text('Halaman Buku'),
                    ),
                    ),
                  ),

                  Container(
                    width: 250,
                    height: 50,
                    child: Expanded(child: ElevatedButton(
                      onPressed: (){Get.toNamed(Routes.PEMINJAMAN
                      );}, child: Text('Peminjaman Buku'),
                    ),
                    ),
                  ),

                ],
              )
            ],
        )    // body: Center(
      //   child: Column(
      //     children: [
      //
      //       Container(
      //         margin: const EdgeInsets.only(top: 20.0),
      //         child: const Text(
      //           'Welcome To ',
      //           style: TextStyle(
      //             fontSize: 25.0,
      //             color: Colors.blue,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ),
      //
      //       Container(
      //         margin: const EdgeInsets.only(top: 35.0),
      //         width: 250,
      //         height: 50,
      //         child: ElevatedButton(
      //           child: Text('Halaman Buku'),
      //           style: TextButton.styleFrom(
      //             backgroundColor: Colors.blue,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //           onPressed: () {
      //             Get.offAllNamed(Routes.ADD_BOOK);
      //           },
      //         ),
      //       ),
      //
      //       Container(
      //         margin: const EdgeInsets.only(top: 35.0),
      //         width: 250,
      //         height: 50,
      //         child: ElevatedButton(
      //           child: Text('Peminjaman Buku'),
      //           style: TextButton.styleFrom(
      //             backgroundColor: Colors.blue,
      //             shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(10),
      //             ),
      //           ),
      //           onPressed: () {
      //             Get.offAllNamed(Routes.PEMINJAMAN);
      //           },
      //         ),
      //       ),
      //
      //     ],
      //   ),
      // ),
    );
  }
}
