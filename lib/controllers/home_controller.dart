import 'package:get/get.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

import '../services/news_service.dart';

class HomeController extends GetxController{
  final NewsService _newsController = NewsService();

  RxList newsList = [].obs;
  RxInt newsListTotal = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getNewsList();
  }

  Future<void> getNewsList() async{
    var data = await _newsController.getNewsList();
    final dataDecode = json.decode(data.body);
    var temp = dataDecode;

    if(dataDecode['data'] == null){
      print('data kosong');
    }else{
      dataDecode['data'] = [
        for (var i = 0; i < temp['data']['main']['stream'].length; i++){
          'id': temp['data']['main']['stream'][i]['id'],
          'title': temp['data']['main']['stream'][i]['content']['title'],
          'thumbnail': temp['data']['main']['stream'][i]['content']['thumbnail']['resolutions'][0]['url'],
        }
      ];
    }
    newsList.value = dataDecode['data'];
    newsListTotal.value = newsList.length;
  }
}
