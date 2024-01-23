import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deland Woii'),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [

              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: const Text(
                  'Sign In Ruang Pustaka',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                alignment:Alignment.center,
                child: const Text(
                  'Silakan masuk ke akun Anda untuk menikmati akses penuh ke koleksi digital kami.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(
                  controller: controller.usernameController,
                  decoration: InputDecoration(
                    hintText: 'Masukan Username',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return 'Username tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextFormField(
                  controller: controller.passwordController,
                  decoration: InputDecoration(
                    hintText: 'Masukan Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if (value!.isEmpty){
                      return 'Password tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),



              Container(
                margin: const EdgeInsets.only(top: 40.0),
                width: 250,
                height: 50,
                child: Column(
                  children: [
                    Obx(() => controller.loadinglogin.value?
                    CircularProgressIndicator():
                    ElevatedButton(onPressed: (){
                      controller.login();
                    }, child: Text("Login"),
                    )
                    )
                  ],
                ),
              )

            ]
          ),
        )
      ),
    );
  }
}
