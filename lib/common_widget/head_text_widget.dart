import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tranxporta_driver/utils/color_utils.dart';


// import 'package:google_fonts/google_fonts.dart';


Widget headText(headText) {
  return Container(
    padding: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
    child: Text(
      headText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        color: SlicingColors.textColor,
        fontSize: 24,
      ),

    ),
  );
}
