import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constant/constant.dart';
import '../../../controller/fetch_post_controller.dart';
import '../../../services/api.dart';
import 'home_details.dart';

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
                    () =>allgymscontroller.getorder.value.status == "true"?
               Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                 child: ListView.builder(
                    itemCount: allgymscontroller.getorder.value.gyms!.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,i) {
                    return InkWell(
                      onTap: (){
                         Get.to(home_details(img:  allgymscontroller.getorder.value.gyms![i].image.toString() ,));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                         height: 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(
                                      5),
                                  image: DecorationImage(
                                      image:
                                      NetworkImage(API.imgbaseurl+allgymscontroller.getorder.value.gyms![i].image.toString()),
                                      fit: BoxFit.fill)),
                              height: 150,
                              width: 150,
                            ),
                            SizedBox(height: 5,),
                            Text('${allgymscontroller.getorder.value.gyms![i].name}',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w500),),
                            Text('${allgymscontroller.getorder.value.gyms![i].address}',style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
                            SizedBox(height: 5,),

                          ],
                        ),
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
