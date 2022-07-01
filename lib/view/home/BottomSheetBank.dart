import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widget/button_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class BottomSheetBank extends StatefulWidget {
  const BottomSheetBank({Key? key}) : super(key: key);

  @override
  _BottomSheetBankstate createState() => _BottomSheetBankstate();
}

class _BottomSheetBankstate  extends State<BottomSheetBank>{
  final TextEditingController _accountNumberController = TextEditingController();
  final TextEditingController _reenteraccountNumberController = TextEditingController();
  final TextEditingController _ifscController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

      Navigator.pop(context);
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
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 330,
      color: Colors.transparent,
      child:  Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0)

          ),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child:GestureDetector(
                onTap: ()
                {
                  Navigator.pop(context);
                },
                child: Padding(
                    padding: const EdgeInsets.only(right: 20,top: 10),
                    child: SvgPicture.asset("assets/icons/close.svg",width: 10,height: 10,)
                ),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child:Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 5),
                child: Text(
                  "Add bank account",
                  style: TextStyleConstants.commonStylebold,
                  textAlign: TextAlign.center,
                ),
              ),
            ),






            Container(
              margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: SlicingColors.boarderColor),
                borderRadius: const BorderRadius.all(Radius.circular(12)),),
              child: Column(
                children:[

                  TextField (
                    controller:_accountNumberController,
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
                        hintText: "Account number"),

                  ),


                ],
              ),



            ),
            Container(
              margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: SlicingColors.boarderColor),
                borderRadius: const BorderRadius.all(Radius.circular(12)),),
              child: Column(
                children:[

                  TextField (
                    controller:_reenteraccountNumberController,
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
                        hintText: "Re-enter account number"),

                  ),


                ],
              ),



            ),


            Container(
              margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: SlicingColors.boarderColor),
                borderRadius: const BorderRadius.all(Radius.circular(12)),),
              child: Column(
                children:[

                  TextField (
                    controller:_reenteraccountNumberController,
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
                        hintText: "IFSC"),

                  ),


                ],
              ),



            ),


            Padding(
              padding: const EdgeInsets.only(top: 10,left: 5,right: 5),
              child: ButtonWidget(buttonName: 'Submit',onpressed: valfn),
            ),






          ],
        ),
      ),
    );
  }
}