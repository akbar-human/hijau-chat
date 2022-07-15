import 'package:flutter/material.dart';

///this method is for nagite to another page instant
void moveToAnotherPage(BuildContext context, Widget nextPage) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => nextPage,
    ),
  );
}