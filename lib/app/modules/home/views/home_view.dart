import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_rplb_35/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              
              Container(
              child: Image.asset('assets/images/ImageHome.png'),
              ),
              
              Container(
                margin: const EdgeInsets.only(top: 40.0, bottom: 10.0),
                child: const Text(
                  'Welcome To Ruang Pustaka',
                  style: TextStyle(
                    fontSize: 23.0,
                    fontFamily: 'Montserrat',
                    letterSpacing: -0.5,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

             const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 1,
                  child: ColoredBox(
                    color: Color(0xFF61677D),
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF080ba1),
                          ),
                        onPressed: ()
                        {
                          Get.toNamed(Routes.BUKU
                        );
                          },
                        child: const Text(
                            'Halaman Buku',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w700,
                              fontSize: 18.0
                          ),
                        ),
                      ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF080ba1),
                          ),
                        onPressed: ()
                        {
                          Get.toNamed(Routes.PEMINJAMAN
                        );
                          },
                          child: const Text(
                              'Peminjaman Buku',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0
                            ),
                          ),
                      ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB80000),
                          ),
                          onPressed: ()
                          {
                            Get.toNamed(Routes.PEMINJAMAN
                            );
                          },
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        )    // body: Center(
    );
  }
}
