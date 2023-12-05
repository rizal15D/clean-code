import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/detail_controller.dart';
import '../../utils/extension.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final detailController = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    detailController.getNewsGetDetails(Get.arguments);
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(detailController.title.value)),
      ),
      body: Obx(() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(detailController.summary.value),
      )),
    );

  }
}
