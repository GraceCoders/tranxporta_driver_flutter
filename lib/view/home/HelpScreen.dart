import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/textfield_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState  extends State<HelpScreen>{
    final helpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

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
                  headerwithback(context, 'Help'),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, top: 15,left: 10,right: 10),
                    child: Text(
                      "Facing a issue? We will help you resolve it. Just type your query below and we will reach you.",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    child: Column(
                      children:[

                        TextFieldWidget(
                          hint: 'Query',
                          controller:helpController,
                          secure: false,
                          errMsg: "Please type your Query",
                        ),
                      ],
                    ),



                  ),
                  SizedBox(height: 30,),
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
}