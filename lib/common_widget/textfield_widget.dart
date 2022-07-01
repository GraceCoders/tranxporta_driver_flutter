import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/color_utils.dart';
// import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatefulWidget {
  final String hint;
  final TextEditingController controller;
  final bool secure;
  final String? errMsg;

  const TextFieldWidget(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.secure,
       this.errMsg})
      : super(key: key);
  static const txtStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w400,);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  void _viewPass() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        // style: GoogleFonts.poppins(
        //   textStyle: TextFieldWidget.txtStyle,
        // ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        obscureText: widget.secure == true ? _obscureText : false,
        style: TextStyle(color: SlicingColors.textColor),
        decoration: InputDecoration(
          fillColor: SlicingColors.colorwhite,filled: true,
    // prefixIcon: Padding(
    //         padding: EdgeInsets.all(14),
    //           // add padding to adjust icon
    //   child: SvgPicture.asset(widget.iconpath,width: 18,height: 18,)
    //       ),
          suffixIcon: widget.secure == true
              ? GestureDetector(
                  onTap: () {
                    _viewPass();
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: SlicingColors.textColor,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: SlicingColors.boarderColor)
          ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          //   borderSide: const BorderSide(
          //     color: Colors.red,
          //     width: 1.0,
          //   ),
          // ),
          contentPadding:
              const EdgeInsets.all(10),
          hintText: widget.hint,
          hintStyle: TextStyle(fontSize: 14, color: SlicingColors.textColor),
          // hintStyle: GoogleFonts.poppins(
          //   textStyle: TextFieldWidget.txtStyle,
          // ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return widget.errMsg;
          }

          return null;
        },
      ),
    );
  }
}
