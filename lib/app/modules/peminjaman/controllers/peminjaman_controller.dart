import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:petugas_perpustakaan_rplb_35/app/data/model/response_pinjam.dart';

import '../../../data/constant/endpoint.dart';
import '../../../data/provider/api_provider.dart';

class PeminjamanController extends GetxController with StateMixin<List<DataPinjam>> {

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getDataPeminjaman();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  Future<void> getDataPeminjaman() async {

    change(null, status: RxStatus.loading());

    try {

      final response = await ApiProvider.instance().get(Endpoint.pinjam,);
      if (response.statusCode == 200) {
        final ResponsePinjam responsePetugasbook = ResponsePinjam.fromJson(response.data);
        if(responsePetugasbook.data!.isEmpty){
          change(null, status: RxStatus.empty());
        }else{
          change(responsePetugasbook.data, status: RxStatus.success());
        }
      } else {
        change(null, status: RxStatus.error("Gagal Memanggil Data"));
      }

    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response?.data != null) {
          change(null, status: RxStatus.error("${e.response?.data['message']}"));
        }
      } else {
        change(null, status: RxStatus.error("${e.response?.data['message']}"));
      }

    } catch (e) {
      change(null, status: RxStatus.error("{e.message.data['message']}"));
    }

  }
}
