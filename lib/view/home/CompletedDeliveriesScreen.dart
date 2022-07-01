
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import 'DeliveryDetailsScreen.dart';

class CompletedDeliveriesScreen extends StatefulWidget {
  const CompletedDeliveriesScreen({Key? key}) : super(key: key);

  @override
  _CompletedDeliveriesScreenState   createState() => _CompletedDeliveriesScreenState();
}

class _CompletedDeliveriesScreenState extends State<CompletedDeliveriesScreen>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SlicingColors.colorwhite,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 10,),
                    child:ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {


                        return GestureDetector(
                          onTap: ()
                          {
                           Get.to(DeliveriesDetailsScreen( str: 'completed',));
                          },
                          child: Container(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            decoration: BoxDecoration(
                                color: SlicingColors.colorgray,
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  child: Row(

                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,left: 15),
                                        child: Text("Order ID: #26832",
                                          style: TextStyleConstants.commonStyleTweleve,
                                          textAlign: TextAlign.start,
                                        ),
                                      ),

                                      Spacer(),

                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,right: 15),
                                        child:  Text(
                                          "Completed",
                                          style: TextStyle(color: SlicingColors.colorgreen,fontSize: 12,fontWeight:FontWeight.w500 ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),

                                    ],
                                  ),
                                ),


                                Container(
                                  margin: const EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.only(left: 5,top: 8),
                                          child: SvgPicture.asset("assets/icons/logo.svg",width: 43,height: 43,)
                                      ),
                                      Align(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,top: 10),
                                              child: Text(
                                                "Delivery location",
                                                style: TextStyleConstants.commonStyletwelevebold,
                                                textAlign: TextAlign.start,
                                              ),
                                            ),

                                            Align(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: const EdgeInsets.only(left: 10,top: 7),
                                                      child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                                  ),


                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5,top: 5),
                                                    child:  Text(
                                                        "1966 Heron Way,",
                                                        style: TextStyleConstants.commonStyleFour,
                                                        textAlign: TextAlign.start,

                                                        softWrap: true
                                                    ),
                                                  ),





                                                ],),
                                            ),

                                         




                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,top: 10),
                                              child: Text(
                                                "Delivered on:",
                                                style: TextStyleConstants.commonStyletwelevebold,
                                                textAlign: TextAlign.start,
                                              ),
                                            ),

                                            Align(

                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: const EdgeInsets.only(left: 10,top: 7),
                                                      child: SvgPicture.asset("assets/icons/calendar.svg",width: 13.5,height: 13.5,)
                                                  ),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 5,top: 5),
                                                    child:  Text(
                                                        "10th  June. 2022 ",
                                                        style: TextStyleConstants.commonStyleFour,
                                                        textAlign: TextAlign.start,
                                                        maxLines: 2,
                                                        overflow: TextOverflow.ellipsis,

                                                        softWrap: true
                                                    ),
                                                  ),



                                                ],),
                                            ),




                                          ],
                                        ),
                                      ),

                                    ],
                                  ),

                                ),


                              ],
                            ),
                          ),
                        );


                      }, separatorBuilder: (BuildContext context, int index)
                    {
                      return Divider(
                        height: 12,
                        color: SlicingColors.colorwhite,
                      );

                    },

                    ),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}