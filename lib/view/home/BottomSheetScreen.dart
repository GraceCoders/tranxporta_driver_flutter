import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tranxporta_driver/utils/color_utils.dart';

import '../../common_widget/button_widget.dart';
import '../../utils/style_utils.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  _BottomSheetScreentate createState() => _BottomSheetScreentate();
}

class _BottomSheetScreentate extends State<BottomSheetScreen>{
  bool value_cnf = false;
  bool value_picked_up = false;
  bool value_on_the_way = false;
  bool value_delivered = false;
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
      height: 350,
      color: Colors.transparent,
      child:  Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)

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
                    padding: const EdgeInsets.only(right: 20,top: 20),
                    child: SvgPicture.asset("assets/icons/close.svg",width: 10,height: 10,)
                ),
              ),
            ),

            Align(
              alignment: Alignment.topCenter,
              child:Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 5),
                child: Text(
                  "Change status",
                  style: TextStyleConstants.commonStylebold,
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Container(
              child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Confirmed",
                        style: TextStyleConstants.commonStylesixblack,
                        textAlign: TextAlign.center,
                      ),
                    ),

                    Spacer(),

                    Checkbox(
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))), // Rounded Checkbox
                      value: value_cnf,
                      onChanged: (inputValue) {
                        setState(() {
                          value_cnf = inputValue!;
                        });
                      },
                    ),


                  ],
              ),
            ),
            Divider(
              height: 1,
              color: SlicingColors.colorline,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Picked up",
                      style: TextStyleConstants.commonStylesixblack,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Spacer(),

                  Checkbox(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))), // Rounded Checkbox
                    value: value_picked_up,
                    onChanged: (inputValue) {
                      setState(() {
                        value_picked_up = inputValue!;
                      });
                    },
                  ),


                ],
              ),
            ),
            Divider(
              height: 1,
              color: SlicingColors.colorline,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "On the way",
                      style: TextStyleConstants.commonStylesixblack,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Spacer(),

                  Checkbox(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))), // Rounded Checkbox
                    value: value_on_the_way,
                    onChanged: (inputValue) {
                      setState(() {
                        value_on_the_way = inputValue!;
                      });
                    },
                  ),


                ],
              ),
            ),
            Divider(
              height: 1,
              color: SlicingColors.colorline,
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Delivered",
                      style: TextStyleConstants.commonStylesixblack,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Spacer(),

                  Checkbox(
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0)),),
                    checkColor: SlicingColors.colorPrimary,// Rounded Checkbox
                    value: value_delivered,
                    onChanged: (inputValue) {
                      setState(() {
                        value_delivered = inputValue!;
                      });
                    },
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

