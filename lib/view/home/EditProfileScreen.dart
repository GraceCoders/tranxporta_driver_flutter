import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  var _dropDownWeight;
  var _dropDownVehicle;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  headerwithback(context, 'Edit profile'),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5,left: 2),
                    child: Text("Name",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children:[

                        TextField (
                          controller:_nameController,
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
                              hintText: "jordan jeffery"),

                        ),


                      ],
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 2),
                    child: Text("Mobile number",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.only(top: 10),
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

                  //........................vehicle category.........................

                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 2),
                    child: Text("Vehicle",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

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
                  Padding(
                    padding: const EdgeInsets.only(top: 10,left: 2),
                    child: Text("Maximum weight",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

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



                  Padding(
                    padding: const EdgeInsets.only(top: 10,bottom: 5,left: 2),
                    child: Text("Area of delivery",
                      style: TextStyleConstants.commonStyle,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children:[

                        TextField (
                          controller:_nameController,
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
                              hintText: "Upto 90 km of 3215, Downtown, Los Angeles "),

                        ),


                      ],
                    ),

                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 20,),
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