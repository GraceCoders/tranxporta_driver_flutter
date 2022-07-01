import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widget/button_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class SelectAreaDeliveryScreen extends StatefulWidget {
  const SelectAreaDeliveryScreen({Key? key}) : super(key: key);

  @override
  _SelectAreaDeliveryScreenState createState() => _SelectAreaDeliveryScreenState();
}

class _SelectAreaDeliveryScreenState extends State<SelectAreaDeliveryScreen>{
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _searchController = TextEditingController();

  int  val=6;
  var _upperValue;
  void valfn() async {
    if (_formKey.currentState!.validate()) {
      Navigator.pop(context);
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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SlicingColors.whitesmoke,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                        Expanded(child:  Align(
                          alignment: Alignment.center,
                          child:Padding(
                            padding: const EdgeInsets.only(top: 1,),
                            child: Text(
                              "Select Area of Delivery",
                              style: TextStyleConstants.commonStylebold,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),),


                        GestureDetector(
                    onTap: ()
                    {
                      Navigator.pop(context);
                    },
                    child: Padding(
                        padding: const EdgeInsets.only(right: 5,top: 5),
                        child: SvgPicture.asset("assets/icons/close.svg",width: 25,height: 25,)
                    ),
                  ),
                      ],
                    ),
                  ),

                  SizedBox(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 2),
                          child :Image(image: AssetImage('assets/icons/images.png'),width: MediaQuery.of(context).size.width, height: 400,),
                        ),
                        Center(child: Column(

                          children: [

                                      Container(
                                        margin: const EdgeInsets.only(top: 14),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: SlicingColors.boarderColor),
                                          borderRadius: const BorderRadius.all(Radius.circular(12)),),
                                        child: Column(
                                          children:[

                                            TextField (
                                              controller:_searchController,
                                              cursorColor: Colors.black,
                                              style: TextStyle(fontSize: 14,color: Colors.black),
                                              decoration:const InputDecoration(
                                                  border: InputBorder.none,
                                                  focusedBorder: InputBorder.none,
                                                  enabledBorder: InputBorder.none,
                                                  errorBorder: InputBorder.none,
                                                  disabledBorder: InputBorder.none,
                                                  contentPadding:
                                                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                                  hintText: "Search"),

                                            ),


                                          ],
                                        ),

                                      ),

                                Container(
                                  height: 180,
                                  margin: EdgeInsets.only(top: 180,right: 35,left: 35),
                                  decoration: BoxDecoration(
                                    color: SlicingColors.colorwhite,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [

                                      SizedBox(
                                        height: 10.0,
                                        child:  Center(
                                          child:  Container(
                                            margin: EdgeInsetsDirectional.only(start: 0.0, end: 0.0),
                                            height: 10.0,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),),
                                              color: SlicingColors.colorPrimary,
                                            ),

                                          ),
                                        ),
                                      ),
                                      Align(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 10,left: 10),
                                              child: Text("Location",
                                                style: TextStyleConstants.commonStylebold,
                                                textAlign: TextAlign.start,
                                              ),
                                            ),




                                          ],
                                        ),
                                      ),


                                      Align(

                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: const EdgeInsets.only(top: 7,left: 5),
                                                child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                            ),

                                            Expanded(child:Padding(
                                              padding: const EdgeInsets.only(left: 5,top: 5),
                                              child:  Text(
                                                  "3215, Downtown, Los Angeles",
                                                  style: TextStyleConstants.commonStyleFour,
                                                  textAlign: TextAlign.start,
                                                  softWrap: true
                                              ),
                                            ), ),








                                          ],),
                                      ),

                                      const SizedBox(
                                        height: 10,
                                      ),

                                      Divider(
                                        height: 1,
                                        color: SlicingColors.textColor,
                                      ),
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child:  Padding(
                                          padding: const EdgeInsets.only(top: 10,left: 5),
                                          child: Text("Area of delivery",
                                            style: TextStyleConstants.commonStylebold,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),


                                      Slider(
                                        value: val.toDouble(),
                                        min: 1.0,
                                        max: 100.0,
                                        activeColor: SlicingColors.colorPrimary,
                                        inactiveColor: SlicingColors.textbgColor,
                                          label: '${val.round()}',

                                        onChanged: (double newValue) {
                                          setState(() {
                                            val = newValue.round();
                                          });
                                        },
                                        semanticFormatterCallback: (double newValue) {
                                          return '${newValue.round()} dollars';
                                        }
                                      ),

                                    ],
                                  ),



                                ),

                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: ButtonWidget(buttonName: 'Confirm location',onpressed: valfn),
                              ),
                            ),













                          ],
                        )),

                      ],






                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
