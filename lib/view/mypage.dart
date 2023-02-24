import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example4/view/product_tile.dart';

import '../controller/controller.dart';


class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);

  final controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chet shop'),
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.view_list_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body:

      Scrollbar(
        child: Container(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
            child: Obx(()=> GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //그리드 뷰 몇개 만들것 인지 지정
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ProductTile(
                    controller.productList[index],
                  );
                },
                itemCount: controller.productList.length,
            ),
           ),

          ),
        ),
      ),

    );
  }
}
