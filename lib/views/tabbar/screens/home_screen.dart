import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constant/constant.dart';
import '../../../controller/fetch_post_controller.dart';

class home_screeen extends StatefulWidget {
  const home_screeen({super.key});

  @override
  State<home_screeen> createState() => _home_screeenState();
}

class _home_screeenState extends State<home_screeen> {
  final getorderlist allgymscontroller = Get.put(getorderlist());

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const Color(0xff3e3e42),
       body: SingleChildScrollView(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(gomeimage),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Watch movies',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
            ),
         Obx(
               () =>allgymscontroller.getorder.value.results!.isNotEmpty?
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                 child: ListView.builder(
                    itemCount: 4,
                   scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i) {
                    return Container(
                      margin: EdgeInsets.all(5),
                       height: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height:250,
                              child: Image.asset(gomeimage)),
                          SizedBox(height: 5,),
                          Text('Watch movies',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                          Text('Watch movies',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
                          SizedBox(height: 5,),

                        ],
                      ),
                    );
                  }
                ),
              ),
            ):SizedBox()),
          ],
      ),
       ),
    );
  }
}
