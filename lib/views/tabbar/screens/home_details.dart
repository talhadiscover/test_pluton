import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../services/api.dart';

class home_details extends StatefulWidget {
  final img;

  const home_details({super.key, this.img});

  @override
  State<home_details> createState() => _home_detailsState();
}

class _home_detailsState extends State<home_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e3e42),
       body: SafeArea(
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none, // This is what you need.
                    children: [
                      Container(                    height: 420,
                      ),
                      Container(
                        decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                                image: NetworkImage(API.imgbaseurl + widget.img),
                                fit: BoxFit.fill)),
                        height: 300,
                        width: Get.width,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                             alignment: Alignment.topLeft,
                            child: InkWell(
                                onTap: (){
                                  Get.back();
                                },
                                child: const Icon(Icons.arrow_back,color: Colors.white,)),
                          ),
                        ),
                      ),
                      Positioned(
                         top: 270,
                        left: 20,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(API.imgbaseurl + widget.img),
                                      fit: BoxFit.fill)),
                              height: 130,
                              width:150,
                            ),
                           SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                               Text('Spiderman',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
                               SizedBox(height: 2,),
                               Container(
                                 height: 15,
                                 width: 40,
                                 decoration: BoxDecoration(
                                   border: Border.all(
                                     color: Colors.white,
                                    )
                                 ),
                                 child: Center(child: Text('-29',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400))) ,
                               ),
                              SizedBox(height: 2,),
                               Row(
                                 children: List.generate(5, (index) => Icon(Icons.star,color: Colors.orange,size: 12,)),
                               ),
                              SizedBox(height: 2,),
                               Text('2017 Spiderman',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),),
                              SizedBox(height: 2,),
                              Text('2hr 90 min',style: TextStyle(color: Colors.white,fontSize: 10,fontWeight: FontWeight.w400),),

                            ],
                          )
                          ],
                        )
                      ),
                     ],
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Directed by Robet boyle',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
              ),
               Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('the cast',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
              ),
             Row(
               children: List.generate(7, (index) => Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Container(
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(
                           image: NetworkImage(API.imgbaseurl + widget.img),
                           fit: BoxFit.fill)),
                   height: 40,
                   width: 40,
                 ),
               ),
               ),
             ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Storyline',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w400),),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker              Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMakerincluding versions of Lorem Ipsum'
                     ,style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400),),
              ),

            ],
      ),
         ),
       ),
    );
  }
}
