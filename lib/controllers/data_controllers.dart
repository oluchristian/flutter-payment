import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  var list = [].obs;
  var test = [].obs;
  final service = new DataServices();
  @override
  void onInit() {
    _loadData();
    super.onInit();
  }



   _loadData() async {   
    var info = await service.getUsers();
    list.addAll(info);
  }
}











