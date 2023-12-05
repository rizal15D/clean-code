import 'package:get/get.dart';
import 'dart:convert';

import '../services/news_service.dart';

class DetailController extends GetxController {
  final NewsService _newsController = NewsService();
  RxString title = ''.obs;
  RxString summary = ''.obs;
  String id = '';

  Future<void> getNewsGetDetails(id) async {
    print('id: $id');
    var data = await _newsController.getNewsGetDetails(id);
    final dataDecode = json.decode(data.body);
    print('dataDecode :$dataDecode');
    title.value = dataDecode['data']['contents'][0]['content']['title'];
    summary.value = dataDecode['data']['contents'][0]['content']['summary'];
  }
}