import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta_driver/view/auth/SelectAreaDeliveryScreen.dart';
import 'package:tranxporta_driver/view/home/DeliveryStatusScreen.dart';
import 'package:tranxporta_driver/view/home/EditProfileScreen.dart';
import 'package:tranxporta_driver/view/home/WalletScreen.dart';


import '../../common_widget/button_widget.dart';
import '../../common_widget/head_text_small_widget.dart';
import '../../common_widget/head_text_widget.dart';
import '../../common_widget/textfield_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';
import '../auth/LoginScreen.dart';
import 'HelpScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState  extends State<HomeScreen>{
  bool _switchValue=true;
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

        //Get.to(const CreatePickupScreen());
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
     key: _scaffoldKey,


     appBar: AppBar(
       elevation: 0.0,
       automaticallyImplyLeading: false,
       backgroundColor: SlicingColors.colorwhite,
       flexibleSpace: Container(
         padding: const EdgeInsets.only(top: 20,left: 7,right: 7),

         child: Row(

           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(
               alignment: Alignment.topCenter,
               icon: Padding(
                   padding: const EdgeInsets.only(left: 10,top: 10),
                   child: SvgPicture.asset("assets/icons/menu.svg",width: 33,height: 33,)
               ),
               onPressed: () {
                 _scaffoldKey.currentState?.openDrawer();

               //  print("your menu action here");
               },
             ),

         Container(
           height: 25,
           width: 120,
           margin: EdgeInsets.only(top: 10,),
           alignment: Alignment.topCenter,
           decoration: BoxDecoration(
               color: SlicingColors.whitesmoke,
               borderRadius: BorderRadius.circular(20)

           ),
           child: Row(
             children: [
               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: Text("Online",
                   style: TextStyleConstants.commonStyle,
                   textAlign: TextAlign.start,
                 ),
               ),

             //.......................switch /toggle button....................
               Transform.scale(
                 scale: 0.4,
                 child:  CupertinoSwitch(
                   value: _switchValue,
                   onChanged: (value) {
                     setState(() {
                       _switchValue = value;
                     });
                   },
                 ),

               )







             ],
           ),
         ),


             IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(left: 10,top: 10),
                   child: SvgPicture.asset("assets/icons/loc.svg",width: 33,height: 33,)
               ),
               onPressed: () {
                 Get.to(const SelectAreaDeliveryScreen());
               },
             ),





             IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(left: 10,top: 8),
                   child: SvgPicture.asset("assets/icons/notification.svg",width: 33,height: 33,)
               ),
               onPressed: () {
                 _scaffoldKey.currentState?.openDrawer();
               },
             ),


           ],
         ),
       ),
     ),
     drawer: Container(
       width: 270,
     child: Drawer(
       child: ListView(
         // Important: Remove any padding from the ListView.
         padding: EdgeInsets.zero,
         children: [

           Container(
             height: 200,
             color: SlicingColors.colorPrimary,
         child: SizedBox(


           child: Stack(
            alignment: Alignment.center,
             children: [

               CircleAvatar(

                 radius: 50,
                   child: SvgPicture.asset("assets/icons/profile.svg",width: 70,height: 70,)

               ),

               Positioned(

                   right: 80,

                   top: 120,

                   child: IconButton(
                     alignment: Alignment.center,
                     icon: Padding(
                         padding: const EdgeInsets.only(),
                         child: SvgPicture.asset("assets/icons/camera.svg",width: 29,height: 29,)
                     ),
                     onPressed: () {
                     },
                   ),
               ),

               Container(
                 alignment: Alignment.bottomCenter,
                 child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom: 10, top: 15),
                       child: Text(
                         "Zack Bomer",
                         style: TextStyleConstants.commonStylewhite,
                         textAlign: TextAlign.center,
                       ),
                     ),

                     GestureDetector(
                       onTap: (){
                         Get.to(const EditProfileScreen());
                       },
                       child:Padding(
                           padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                           child: SvgPicture.asset("assets/icons/edit.svg",width: 12,height: 12,)
                       ),
                     )





                   ],
                 ),
               )

             ],
           ),

         ),

       ),




           //.................deliveries........................
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/orders.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Get.to(DeliveryStatusScreen());
               },
             ),
             title: Text(
               "Deliveries",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
                   Get.to(DeliveryStatusScreen());
             },
           ),

           //.................wallet........................
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/orders.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                  Get.to(WalletScreen());
               },
             ),
             title: Text(
               "Wallet",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Get.to(WalletScreen());
             },
           ),


           //....................help............................./
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/faq.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Get.to(HelpScreen());
               },
             ),
             title: Text(
               "Help",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
                 Get.to(HelpScreen());
             },
           ),

          //......................terms&conditions .........................
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/terms.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 //_scaffoldKey.currentState?.openDrawer();
               },
             ),
             title: Text(
               "Terms & conditions",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pop(context);
             },
           ),

           //........................privacy_policy>...........................

           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/privacy.svg",width: 35,height: 35,)
               ),
               onPressed: () {
              //   _scaffoldKey.currentState?.openDrawer();
               },
             ),
             title: Text(
               "Privacy Policy",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pop(context);
             },
           ),
         //...............................logout.............................

           ListTile(
             leading: IconButton(
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/logout.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Navigator.pushAndRemoveUntil(
                     context,
                     MaterialPageRoute(
                         builder: (context) => LoginScreen()
                     ),
                     ModalRoute.withName("/Home")
                 );
               },
             ),
             title: Text(
               "Logout",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(
                       builder: (context) => LoginScreen()
                   ),
                   ModalRoute.withName("/Home")
               );
             },
           ),
         ],
       ),
     ),
     ),
     body: SafeArea(
       child: Stack(
         children: [
           Container(
             margin: const EdgeInsets.only(right: 10,left: 10),
             height: MediaQuery.of(context).size.height,
               child: Form(
                 key: _formKey,
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start ,
                   children: [
                     SizedBox(
                       child: Stack(
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(bottom: 10),
                             child :Image(image: AssetImage('assets/icons/images.png'),width: MediaQuery.of(context).size.width, height: 400,),
                           ),
                          Center(child: Column(
                            children: [

                             Container(
                                  height: 150,
                                  margin: EdgeInsets.only(top: 200,right: 30,left: 30),
                                  decoration: BoxDecoration(
                                    color: SlicingColors.whitesmoke,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //......................only for large divider .................
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
                                        alignment: Alignment.topLeft,
                                        child:  Padding(
                                          padding: const EdgeInsets.only(top: 10,left: 5),
                                          child: Text("New delivery request",
                                            style: TextStyleConstants.commonStylebold,
                                            textAlign: TextAlign.start,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child:Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: SvgPicture.asset("assets/icons/box2.svg",width: 73,height: 72,)
                                        ),
                                      ),





                                    ],
                                  ),
                                ),


                              Align(
                                alignment: Alignment.bottomCenter,
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                                  child: ButtonWidget(buttonName: 'Search for new order',onpressed: valfn),
                                ),
                              ),




                            ],
                          ),
                          ),
                         ],

                       ),
                     ),

















                   ],
               ),
               ),

           )
         ],

       ),
     ),

   );
  }
}

