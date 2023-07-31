import 'package:get/get.dart';
import '../model/fetch_model.dart';
import '../services/api.dart';

class getorderlist extends GetxController{
  final getorder =  AllGyms().obs;
  // var getorder = <AllGyms>[].obs;
  var products = <AllGyms>[].obs;


  @override
  void onInit() {
    fetchorder();
    super.onInit();
  }

  fetchorder() async {
    var res = await API().allgyms();
    AllGyms model = allGymsFromJson(res);
    getorder.value = model;
    print(getorder.value.totalPages);
    print(getorder.value.results);
    getorder.refresh();
  }}