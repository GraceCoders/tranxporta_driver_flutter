import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/head_text_widget.dart';
import '../../utils/color_utils.dart';
import '../home/HomeScreen.dart';
import 'SignUpScreen.dart';
import 'VarifyOtpScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _mobileNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

      Get.to(const VarifyOtpScreen());
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
      body: SafeArea
        (
        child: Stack
          (

          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: SvgPicture.asset("assets/icons/login.svg",width: MediaQuery.of(context).size.width,),
                      ),

                      headText("Log in!"),
                      Container(
                        margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: SlicingColors.boarderColor),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),),
                        child: Row(
                          children:[
                          //......................country code picker ...................

                            Expanded(
                              flex: 5,
                              child: CountryCodePicker(
                                onChanged: print,
                                initialSelection: 'IT',
                                favorite: ['+233','GH'],
                                showCountryOnly: false,
                                showFlag: false,
                                showOnlyCountryWhenClosed: false,
                                alignLeft: false,
                                // onInit: (code) =>
                                //     print("on init ${code!.name} ${code!.dialCode} ${code!.name}"),
                              ),
                            ),

                          //......................vertical divider ..............................
                           Expanded(
                              flex: 1,
                                child: Container(
                                    height: 20, child: VerticalDivider(color: SlicingColors.textColor))),

                          const Expanded(
                              flex: 15,
                              child: TextField (
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                                    hintText: "Mobile Number"),

                            ),),

                          ],
                        ),



                      ),


                      Padding(
                          padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                          child: ButtonWidget(buttonName: 'Continue',onpressed: valfn),
                      ),

                     const SizedBox(height: 50,),
                      Container(
                        alignment: FractionalOffset.bottomCenter,
                        child: Row(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: ()
                              {
                               Get.to(const SignUpScreen());
                              },
                              child: Text.rich(
                                  TextSpan(
                                      children:[
                                        TextSpan(
                                            text: "Don’t have an account? ",
                                            style:TextStyle(color: SlicingColors.textColor,fontSize: 14)
                                        ),
                                        TextSpan(
                                            text:"Sign Up",
                                            style: TextStyle(color: SlicingColors.colorPrimary,fontSize: 14)
                                        )
                                      ]
                                  )),
                            ),
                          ],

                        ),
                      ),


                    ],
                  ),
                ),

              ),

            ),


          ],
        ),
      ),

    );
  }

}