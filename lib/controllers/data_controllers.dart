import 'package:flutter_payment_app/data_model.dart';
import 'package:flutter_payment_app/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  RxList<DataModel> list = <DataModel> [].obs;
  var _loading = false.obs;
  final service = new DataServices();

  get loading => _loading.value;

  get newList {
    return list.where((e) => e.status ==0?false:true).map((e) => e).toList();
  }
  @override
  void onInit() {
    _loadData();
    super.onInit();
  }

  //  _loadData() async {   
  //   var info = await service.getUsers();
  //   list.addAll(info);
  // }

     _loadData() async {  
      _loading.value = false;
      try {
      var info = await service.getUsers();
      list.addAll(await info);
        
      } catch (e) {
        print('Error encountered !');
      } finally{
        _loading.value = true;
      }
  }
}











