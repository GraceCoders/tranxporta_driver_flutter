import 'package:flutter/material.dart';

import 'head_text_small_widget.dart';

Widget  headerwithback(BuildContext context, titleText) {
  return Padding(
    padding: const EdgeInsets.only(top: 10,right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.arrow_back),
          ),
        ),
        Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            headSmallText(titleText),
          ],
        ))

      ],
    ),
  );
}
