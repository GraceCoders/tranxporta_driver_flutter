import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../common_widget/button_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import 'HomeScreen.dart';

  class CheckoutScreen extends StatefulWidget {
    const CheckoutScreen({Key? key}) : super(key: key);

    @override
    _CheckoutScreenState createState() => _CheckoutScreenState();
  }

class _CheckoutScreenState extends State<CheckoutScreen>{
  final _formKey = GlobalKey<FormState>();
  bool selected = true;
  void valfn() async {
    if (_formKey.currentState!.validate()) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen()
          ),
          ModalRoute.withName("/Home")
      );

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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SlicingColors.colorwhite,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10,left: 10),
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      headerwithback(context, 'Checkout'),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15,left: 10),
                        child: Text(
                          "Pickup Details",
                          style: TextStyleConstants.commonStylesix,
                        ),
                      ),

                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: SlicingColors.colorgray
                        ),
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
                                      padding: const EdgeInsets.only(top: 10,left: 10),
                                      child: SvgPicture.asset("assets/icons/profile.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 15),
                                    child: Text(
                                      "Jordan",
                                      style: TextStyleConstants.commonStyleFour,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,right: 15),
                                    child:  Text(
                                      "Edit",
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
                                      padding: const EdgeInsets.only(left: 10,top: 5),
                                      child: SvgPicture.asset("assets/icons/call.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 5),
                                    child: Text(
                                      "098-890-7879",
                                      style: TextStyleConstants.commonStyleFour,
                                      textAlign: TextAlign.start,
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
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Flexible(child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 10),
                                    child: Text(
                                        "1966 Heron Way, Hillsboro, United States",
                                        style: TextStyleConstants.commonStyleFour,
                                        textAlign: TextAlign.start,
                                        softWrap: true
                                    ),
                                  ),)



                                ],
                              ),
                            ),



                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15,left: 10),
                        child: Text(
                          "Receiver Details",
                          style: TextStyleConstants.commonStylesix,
                        ),
                      ),

                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                            color: SlicingColors.colorgray
                        ),
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
                                      padding: const EdgeInsets.only(top: 10,left: 10),
                                      child: SvgPicture.asset("assets/icons/profile.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,left: 15),
                                    child: Text(
                                      "jonty",
                                      style: TextStyleConstants.commonStyleFour,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,right: 15),
                                    child:  Text(
                                      "Edit",
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
                                      padding: const EdgeInsets.only(left: 10,top: 5),
                                      child: SvgPicture.asset("assets/icons/call.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15,top: 5),
                                    child: Text(
                                      "098-780-7989",
                                      style: TextStyleConstants.commonStyleFour,
                                      textAlign: TextAlign.start,
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
                                      padding: const EdgeInsets.only(left: 10),
                                      child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                  ),
                                  Flexible(child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 10),
                                    child: Text(
                                        "123 landra way, New York, United States",
                                        style: TextStyleConstants.commonStyleFour,
                                        textAlign: TextAlign.start,
                                        softWrap: true
                                    ),
                                  ),)



                                ],
                              ),
                            ),



                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15,left: 10),
                        child: Text(
                          "Payment Details",
                          style: TextStyleConstants.commonStylesix,
                        ),
                      ),

                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                            color: SlicingColors.colorgray
                        ),
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
                                    padding: const EdgeInsets.only(top: 10,left: 15),
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
                                    padding: const EdgeInsets.only(left: 15,top: 5),
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
                                    padding: const EdgeInsets.only(left: 15,top: 5),
                                    child: Text(
                                      "Total",
                                      style: TextStyleConstants.commonStyleFour,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                  Spacer(),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,right: 15),
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




                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ButtonWidget(buttonName: 'Pay',onpressed: valfn),

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

            )
          ],

        ),
      ),
    );
  }
}