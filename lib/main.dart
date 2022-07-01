import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tranxporta_driver/view/auth/CompleteProfileScreen.dart';
import 'package:tranxporta_driver/view/auth/LoginScreen.dart';
import 'package:tranxporta_driver/view/auth/SelectAreaDeliveryScreen.dart';
import 'package:tranxporta_driver/view/home/BottomSheetScreen.dart';
import 'package:tranxporta_driver/view/home/CompletedDeliveriesScreen.dart';
import 'package:tranxporta_driver/view/home/DeliveryDetailsScreen.dart';
import 'package:tranxporta_driver/view/home/DeliveryStatusScreen.dart';
import 'package:tranxporta_driver/view/home/EditProfileScreen.dart';
import 'package:tranxporta_driver/view/home/HomeScreen.dart';
import 'package:tranxporta_driver/view/home/WalletScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Splash Screen',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),

        debugShowCheckedModeBanner: false,

        home: const LoginScreen());
  }
}
