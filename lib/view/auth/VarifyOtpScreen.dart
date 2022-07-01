import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tranxporta_driver/view/auth/CompleteProfileScreen.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import '../home/HomeScreen.dart';

class VarifyOtpScreen extends StatefulWidget {
  const VarifyOtpScreen({Key? key}) : super(key: key);

  @override
  _VarifyOtpScreenState createState() => _VarifyOtpScreenState();
}

class _VarifyOtpScreenState extends State<VarifyOtpScreen>
{
  TextEditingController otp = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

      Get.to(const CompleteprofileScreen());
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
                children: [
               headerwithback(context, 'Verify your number'),

                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset("assets/icons/mail.svg",width: 80,height: 80,)
                  ),


                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 15),
                    child: Text(
                      "Enter the one time password sent on your mobile for authenication",
                      style: TextStyleConstants.commonStylebold,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(bottom: 15, top: 20),
                      child: pinEntryField(otp)),
                  ButtonWidget(
                    buttonName: 'Submit',
                    onpressed: valfn,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget pinEntryField(TextEditingController controller) {
    return Center(
      child: SizedBox(
        child: Center(
          child: PinCodeTextField(
            controller: controller,
            appContext: context,
            length: 5,
            onChanged: (value) {},
            pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(16),
                borderWidth: 1,
                fieldHeight: 42,
                fieldWidth: 42,
                activeColor: SlicingColors.colorPrimary,
                inactiveColor: SlicingColors.boarderColor),
            onCompleted: (value) {
              if (value == "123456") {
              } else {}
            },
            validator: (value) {
              if (value!.isEmpty) {
                return "Please enter OTP";
              }

              return null;
            },
          ),
        ),
      ),
    );
  }




}