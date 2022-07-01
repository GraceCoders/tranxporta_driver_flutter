import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tranxporta_driver/common_widget/button_widget_white.dart';
import 'package:tranxporta_driver/view/home/BottomSheetBank.dart';

import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState  extends State<WalletScreen>{
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    void valfn() async {
      if (_formKey.currentState!.validate()) {

      //  Get.to(const VarifyOtpScreen());
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

    return Scaffold(
      backgroundColor: SlicingColors.colorwhite,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerwithback(context, 'Wallet'),
                  
                  Container(
                    height: 153,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top: 20.0,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: SlicingColors.colorPrimary
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("Balance",
                            style: TextStyleConstants.commonStylesixwhite,
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 10),
                          child: Text("15",
                            style: TextStyleConstants.commonStylestwentyfourwhite,
                            textAlign: TextAlign.start,
                          ),
                        ),

                        Divider(
                         height: 1,
                         color: SlicingColors.colorwhite,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 70,right: 70),
                          child: ButtonWidgetWhite(buttonName: 'Withdraw',onpressed: valfn),
                        ),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 27,bottom: 10),
                    child: Text("Your bank account details",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: SlicingColors.texthintColor)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: SvgPicture.asset("assets/icons/bank.svg",),
                              ),
                            ],
                          ),
                        ),

                        GestureDetector(
                          onTap: ()
                          {

                            showModalBottomSheet(context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              isScrollControlled: true,
                              builder: (context) => SingleChildScrollView(
                                child: Container(
                                  padding: EdgeInsets.only(
                                      bottom: MediaQuery.of(context).viewInsets.bottom),
                                  child: BottomSheetBank(),
                                ),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text("Add bank account",
                              style: TextStyleConstants.commonStyleprimary,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        )


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
