import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/color_utils.dart';
// import 'package:google_fonts/google_fonts.dart';


Widget headSmallText(headText) {
  return Container(
    padding: const EdgeInsets.all(0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
      Text(
        headText,
        style: TextStyle(fontWeight: FontWeight.w700,color: SlicingColors.textColor,fontSize: 18,),
        // style: GoogleFonts.poppins(
        //   textStyle: TextStyleConstants.headStyle,
        // ),

    ),
],
    ),

  );
}
