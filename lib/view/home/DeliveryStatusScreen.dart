import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tranxporta_driver/view/home/HelpScreen.dart';
import 'package:tranxporta_driver/view/home/PendingDeliveriesScreen.dart';

import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import 'CompletedDeliveriesScreen.dart';

class DeliveryStatusScreen extends StatefulWidget {
  const DeliveryStatusScreen({Key? key}) : super(key: key);

  @override
  _DeliveryStatusScreenState   createState() => _DeliveryStatusScreenState();
}

class _DeliveryStatusScreenState extends State<DeliveryStatusScreen> {
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
                  headerwithback(context, 'Deliveries'),

                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: const DefaultTabController(
                      length: 2,
                      child: Scaffold(
                      appBar: TabBar(
                        labelColor: Colors.black,
                            tabs:  [
                              Tab(text: "Pending",),
                              Tab(text: "Completed"),
                            ],

                          ),

                        body:  TabBarView(
                          children: [
                            PendingDeliveriesScreen(),
                            CompletedDeliveriesScreen(),
                          ],
                        ),
                      ),
                    ),
                  )




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}