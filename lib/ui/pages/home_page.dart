import 'dart:ffi';

import 'package:clean_code/ui/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../utils/extension.dart';
import '../../config/routes/route_name.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeController = Get.put(HomeController());

  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media of World'),
      ),
      body: Obx((){
        return newsList(context);
      })
    );
  }

  Widget newsList(BuildContext context){
    return ListView.builder(
        itemCount: homeController.newsListTotal.value,
        itemBuilder: (context, index){
          return Container(
            height: 10.0.hp,
            margin: EdgeInsets.symmetric(horizontal: 1.0.wp),
            decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
            child: InkWell(
              onTap: () {
                Get.toNamed(RouteName.detailPage, arguments: homeController.newsList[index]['id']);
              } ,
              child: Row(
                children: [
                  Center(
                    child: AspectRatio(
                    aspectRatio: 100 / 100,
                    child: Container(
                      decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(homeController.newsList[index]['thumbnail']),
                        fit: BoxFit.fitWidth,
                    )))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 1.0.wp),
                    child: Container(
                      margin: EdgeInsets.only(left: 5.0.wp,),
                        width: 70.0.wp,
                        child: Flexible(child: Text(homeController.newsList[index]['title']))),
                  )
                ],
              ),
            ),
          );
        }
    );
  }
}
