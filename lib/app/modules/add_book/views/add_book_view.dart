import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_book_controller.dart';

class AddBookView extends GetView<AddBookController> {
  const AddBookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF080ba1),
        title: const Text(
          'Halaman Tambah Buku',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 15.0,
              letterSpacing: -0.5,
              fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
                children: [

                  Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 5.0),
                    child: const Text(
                      'Tambah Buku',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xFF080ba1),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w800,
                          letterSpacing: -1.0
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    alignment:Alignment.center,
                    child: const Text(
                      'Silakan tambah buku, agar masuk ke dalam database API.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.7,
                        fontSize: 14.0,
                        color: Color(0xFF61677D),
                        letterSpacing: -0.3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Container(
                    child: Column(
                      children: [

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Text(
                                  'Judul Buku',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF61677D),
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: TextFormField(
                                  controller: controller.judulController,
                                  decoration: InputDecoration(
                                    hintText: 'Masukan Judul Buku',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value){
                                    if (value!.isEmpty){
                                      return 'Judul tidak boleh kosong!';
                                    }
                                    return null;
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Text(
                                  'Penulis Buku',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF61677D),
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: TextFormField(
                                  controller: controller.penulisController,
                                  decoration: InputDecoration(
                                    hintText: 'Masukan Penulis Buku',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value){
                                    if (value!.isEmpty){
                                      return 'Penulis Buku tidak boleh kosong!';
                                    }
                                    return null;
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 3,
                        ),

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Text(
                                  'Penerbit Buku',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF61677D),
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: TextFormField(
                                  controller: controller.penerbitController,
                                  decoration: InputDecoration(
                                    hintText: 'Masukan Penerbit Buku',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value){
                                    if (value!.isEmpty){
                                      return 'Penerbit Buku tidak boleh kosong!';
                                    }
                                    return null;
                                  },
                                ),
                              ),

                            ],
                          ),
                        ),

                        const SizedBox(
                          height: 3,
                        ),

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                                child: Text(
                                  'Tahun Terbit',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xFF61677D),
                                    letterSpacing: -0.3,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: TextFormField(
                                  controller: controller.tahunTerbitController,
                                  decoration: InputDecoration(
                                    hintText: 'Masukan Tahun Terbit Buku',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  validator: (value){
                                    if (value!.isEmpty){
                                      return 'Tahun Terbit tidak boleh kosong!';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        )

                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 3,
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    child: Column(
                      children: [
                        Obx(() => controller.loadingbook.value?
                        CircularProgressIndicator():
                        SizedBox(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            onPressed: (){
                              controller.postBook();
                            },
                            child: Text(
                              'Tambah Buku',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.0
                              ),
                            ),

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF080ba1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        )
                        )
                      ],
                    ),
                  ),

                ]
            ),
          )
      ),
    );
  }
}
