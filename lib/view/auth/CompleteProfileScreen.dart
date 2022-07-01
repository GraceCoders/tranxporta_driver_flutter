import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta_driver/view/auth/SelectAreaDeliveryScreen.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import '../home/HomeScreen.dart';

class CompleteprofileScreen extends StatefulWidget {
  const CompleteprofileScreen({Key? key}) : super(key: key);

  @override
  _CompleteprofileScreenState createState() => _CompleteprofileScreenState();
}

class _CompleteprofileScreenState extends State<CompleteprofileScreen>{
  var _dropDownWeight;
  var _dropDownVehicle;
  final TextEditingController _areaController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

       Get.to(const HomeScreen());
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
                  headerwithback(context, 'Complete profile'),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,top: 20),
                    child: SvgPicture.asset("assets/icons/illustration.svg",width: 180,height: 140,),
                  ),

                  //........................vehicle category.........................

                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children: [
                        DropdownButton(

                          elevation: 10,
                          underline: Container(
                            color: SlicingColors.colorwhite,
                          ),
                          hint: _dropDownVehicle == null
                              ? Text('Preferred pickup vehicle')
                              : Text(
                            _dropDownVehicle,
                            style: TextStyle(color: SlicingColors.textColor),

                          ),

                          isExpanded: true,

                          iconSize: 30.0,

                          items: ['Test truck 1', 'Test truck 2 ', 'test truck 3',].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (valuu) {
                            setState(
                                  () {
                                _dropDownVehicle = valuu;
                              },
                            );
                          },
                        ),

                      ],
                    ),



                  ),


                  //........................parcel weight.........................

                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    padding: EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children: [
                        DropdownButton(

                          elevation: 10,
                          underline: Container(
                            color: SlicingColors.colorwhite,
                          ),
                          hint: _dropDownWeight == null
                              ? Text('Parcel weight')
                              : Text(
                            _dropDownWeight,
                            style: TextStyle(color: SlicingColors.textColor),

                          ),

                          isExpanded: true,

                          iconSize: 30.0,

                          items: ['Small(0-5kg)', 'Medium(5kg-15kg)', 'Large(>15kg)'].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (valuu) {
                            setState(
                                  () {
                                _dropDownWeight = valuu;
                              },
                            );
                          },
                        ),

                      ],
                    ),



                  ),


                  Container(
                    margin: const EdgeInsets.only(top: 14),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children:[

                        GestureDetector(
                          onTap: ()
                          {
                            Get.to(const SelectAreaDeliveryScreen());
                          },
                          child:TextField (
                            controller:_areaController,
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
                                hintText: "Area of delivery"),

                          ),
                        )




                      ],
                    ),

                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 30,),
                    child: ButtonWidget(buttonName: 'Save changes',onpressed: valfn),
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
