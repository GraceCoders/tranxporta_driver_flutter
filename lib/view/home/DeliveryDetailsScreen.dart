import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranxporta_driver/view/home/BottomSheetScreen.dart';
import '../../common_widget/button_widget_white.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class DeliveriesDetailsScreen extends StatefulWidget {
  String str;
  DeliveriesDetailsScreen({Key? key,required this.str}) : super(key: key);



  @override
  _DeliveriesDetailsScreenState   createState() => _DeliveriesDetailsScreenState(str);

}

class _DeliveriesDetailsScreenState extends State<DeliveriesDetailsScreen> {
    String str;
    _DeliveriesDetailsScreenState(this.str);
    final _formKey = GlobalKey<FormState>();
    void valfn() async {
    if (_formKey.currentState!.validate()) {


      showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),
        ),
        isScrollControlled: true,
        builder: (context) => SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: BottomSheetScreen(),
          ),
        ),
      );
    }


      // Get.to(const HomeScreen());
      //   AppWidget.showDialogLoading();
      //   var params = {
      //     'unameORemail': _useridController.text,
      //     'pwd': _passwordController.text
      //   };
      //   Map map = await service.login(params);
      //   if (map['statusCode'] == 200) {
      //     AppWidget.hideDialog();
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.loginId, map['data']['_id']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.name, map['data']['uname']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.email, map['data']['email']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.profile, map['data']['profileImage']);
      //     SharedPref.getInstance()!.addToken(AppKeys.token, map['data']['token']);
      //     //Get.(MainScreen(currentIndex: 0));
      //
      //     Navigator.of(context).pushAndRemoveUntil(
      //         MaterialPageRoute(
      //             builder: (context) => MainScreen(
      //               currentIndex: 0,
      //
      //             )),
      //             (Route<dynamic> route) => false);
      //     // Navigator.of(context).pushReplacementNamed('/home');
      //   }else{
      //     AppWidget.hideDialog();
      //     showDialog(
      //         context: context,
      //         builder: (context) {
      //           return AlertDialog(
      //             content: Text(map['message']),
      //             actions: <Widget>[
      //               // ignore: deprecated_member_use
      //               FlatButton(
      //                   onPressed: () {
      //                     Navigator.of(context).pop();
      //                   },
      //                   child: Text('Ok'))
      //             ],
      //           );
      //         });
      //   }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SlicingColors.colorwhite,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child:  headerwithback(context,"Delivery detail"),
                  ),

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
                            "Pending",
                            style: TextStyle(color: SlicingColors.coloryellow,fontSize: 12,fontWeight:FontWeight.w500 ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                      ],
                    ),
                  ),

                  Container(
                    height: 50,
                    margin: EdgeInsets.only(top: 10,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Expanded(
                            child: Column(
                             children: [
                               Padding(
                                   padding: const EdgeInsets.all(0),
                                   child: SvgPicture.asset("assets/icons/weight.svg",width: 26.5,height: 27,)
                               ),

                               Padding(
                                 padding: const EdgeInsets.only(top: 5),
                                 child: Text(
                                   "14KG",
                                   style: TextStyleConstants.commonStyle,
                                   textAlign: TextAlign.start,
                                 ),
                               ),
                             ],

                            )),
                        Expanded(
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: SvgPicture.asset("assets/icons/datetime.svg",width: 26.5,height: 27,)
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "1st July,2022",
                                    style: TextStyleConstants.commonStyle,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],

                            )),
                        Expanded(
                            child: Column(
                              children: [
                                Padding(
                                    padding: const EdgeInsets.all(0),
                                    child: SvgPicture.asset("assets/icons/money.svg",width: 26.5,height: 27,)
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text(
                                    "20.00",
                                    style: TextStyleConstants.commonStyle,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ],

                            )),


                      ],
                    ),
                  ),

                  Container(
                    height: 193,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: SlicingColors.colorgray,
                    ),
                    child: Column(
                      children: [
                        Align(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 10),
                                child: Text(
                                  "Pickup location",
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
                                        padding: const EdgeInsets.only(left: 20,top: 7),
                                        child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child:  Text(
                                          "3586 Sangani Blvd. Ste. G. Diberville",
                                          style: TextStyleConstants.commonStyleFour,
                                          textAlign: TextAlign.start,

                                          softWrap: true
                                      ),
                                    ),



                                  ],),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 20),
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
                                        padding: const EdgeInsets.only(left: 20,top: 7),
                                        child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child:  Text(
                                          "1966 Heron Way,United States",
                                          style: TextStyleConstants.commonStyleFour,
                                          textAlign: TextAlign.start,

                                          softWrap: true
                                      ),
                                    ),



                                  ],),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 20),
                                child: Text(
                                  "Delivery on:",
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
                                        padding: const EdgeInsets.only(left: 20,top: 7),
                                        child: SvgPicture.asset("assets/icons/calendar.svg",width: 13.5,height: 13.5,)
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 5,top: 5),
                                      child:  Text(
                                          "1st June. 2022 at 2:00 PM",
                                          style: TextStyleConstants.commonStyleFour,
                                          textAlign: TextAlign.start,

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


                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Payment method",
                      style: TextStyleConstants.commonStyletwelevebold,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Align(
                    child: Row(
                      children: [


                        Padding(
                            padding: const EdgeInsets.only(left: 20,top: 7),
                            child: SvgPicture.asset("assets/icons/card.svg",width: 40,height: 27,)
                        ),


                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 7),
                          child: Text(
                            "Card ending 9704",
                            style: TextStyleConstants.commonStyleFour,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 80,
                    margin: const EdgeInsets.only(top: 10),
                    decoration:BoxDecoration(
                      color: SlicingColors.colorgray
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 35),
                                  child: SvgPicture.asset("assets/icons/check.svg",width: 20,height: 16,)
                              ),

                         Expanded(
                                child:  Divider(
                                  color: SlicingColors.colorline,
                                  height: 5,
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 5,
                                ),

                              ),


                              Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: SvgPicture.asset("assets/icons/check.svg",width: 20,height: 16,)
                              ),
                           Expanded(
                                child:  Divider(
                                  color: SlicingColors.colorline,
                                  height: 5,
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 5,
                                ),

                              ),
                              Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: SvgPicture.asset("assets/icons/uncheck.svg",width: 20,height: 16,)
                              ),
                              Expanded(
                                child:  Divider(
                                  color: SlicingColors.colorline,
                                  height: 5,
                                  thickness: 2,
                                  indent: 5,
                                  endIndent: 5,
                                ),

                              ),
                              Padding(
                                  padding: const EdgeInsets.only(right: 35),
                                  child: SvgPicture.asset("assets/icons/uncheck.svg",width: 20,height: 16,)
                              ),

                            ],
                          ),

                        ),


                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Confirmed",
                                style: TextStyleConstants.commonStyleTweleve,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Picked up",
                                style: TextStyleConstants.commonStyleTweleve,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "On the way",
                                style: TextStyleConstants.commonStyleTweleve,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Delivered",
                                style: TextStyleConstants.commonStyleFour,
                                textAlign: TextAlign.center,
                              ),

                            ],
                          ),),



                      ],
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20),
                    child: Text(
                      "Order summary",
                      style: TextStyleConstants.commonStyletwelevebold,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Container(
                    height: 110,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10,left: 20),
                                child: Text(
                                  "Subtotal",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 15),
                                child:  Text(
                                  "10",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.center,
                                ),
                              ),

                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 5),
                                child: Text(
                                  "Convenience charges",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.start,
                                ),
                              ),

                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 15),
                                child:  Text(
                                  "100",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.center,
                                ),
                              ),


                            ],
                          ),
                        ),

                        Divider(
                          color: SlicingColors.boarderColor,
                        ),

                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20,top: 5),
                                child: Text(
                                  "Total",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                               Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(top: 5,right: 15),
                                child:  Text(
                                  "110",
                                  style: TextStyleConstants.commonStyleFour,
                                  textAlign: TextAlign.center,
                                ),
                              ),


                            ],
                          ),
                        ),







                      ],
                    ),
                  ),

                  if(str=="completed") ...[

                  ]
                  else ...[
                    Container(
                      margin: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ButtonWidgetWhite(buttonName: 'Change status',onpressed: valfn),

                        ],
                      ),
                    ),
                  ]














                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}