import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Primary color for this app
const Color primaryColor = Color(0xff075e54);

///Accentcolor for this app
const Color accentColor = Color(0xff128c7e);

//Set up for color
const Color backgroundGrey = Color(0xffF5F5F5);
const Color backgroundWhite = Color(0xffFFFFFf);
const Color black = Color(0xff000000);
const Color black1 = Color(0xff111111);
const Color blackGrey = Color(0xff585858);
const Color white = Color(0xffFFFFFF);
final Color white70 = const Color(0xffFFFFFF).withOpacity(0.7);
const Color unAvailableField = Color(0xffE7E7E7);
const Color unReadMessage = Color(0xff8C8C8C);
const Color readMessage = Color(0xFF16D1F2);
const Color transparent = Colors.transparent;
const Color yellow = Color(0xFFFFE500);
const Color orange = Color(0xffFFAE00);
const Color red = Color(0xffFF4600);

//set up for font style
TextStyle titlePage = TextStyle(
  fontSize: titleSize,
  color: backgroundWhite,
  fontWeight: bold,
);

///Textstyle with color default black
TextStyle blackTextStyle({FontWeight fontWeight = FontWeight.w400}) {
  return GoogleFonts.roboto(
    color: black,
    fontWeight: fontWeight,
  );
}

/// Textstyle with color default white
TextStyle whiteTextStyle({FontWeight? fontWeight = FontWeight.w400}) {
  return GoogleFonts.roboto(
    color: white,
    fontWeight: fontWeight,
  );
}

//set up for size
double titleSize = 55;
double regulerSize = 35;
double radiusButton = 15;
double appbarHeight = 120;

///for main padding left
double paddingSide = 20;

//set up for fontweight
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight blackBold = FontWeight.w900;

//string for import icon from png
String homeIcon = 'assets/icons/icon_home.png';
String storeIcon = 'assets/icons/icon_store.png';
String supportIcon = 'assets/icons/icon_support.png';
String profileIcon = 'assets/icons/icon_profile.png';

//setting Box shadow
const BoxShadow regulerShadow = BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.2),
  blurRadius: 10,
  spreadRadius: 5,
);
const BoxShadow smallerShadow = BoxShadow(
  color: Color.fromRGBO(0, 0, 0, 0.2),
  blurRadius: 2,
  spreadRadius: 1,
);

//setting Circular Border radius
final BorderRadius regulerRadius = BorderRadius.circular(10);
