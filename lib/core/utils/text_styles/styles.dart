import 'package:flutter/material.dart';

abstract class Styles{
  static TextStyle cairoW500S12Black(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.014,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora");
  static TextStyle cairoW500S14Black(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.016,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora");
  static TextStyle cairoW400S12Grey(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.014,
    fontWeight: FontWeight.w500,
    color: const Color(0xffACACAC),
    fontFamily: "Sora",
  );
  static TextStyle cairoW500S16White(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.018,
    fontWeight: FontWeight.w600,
    fontFamily: "Sora",
    color: Colors.white
  );
  static TextStyle cairoW500S12White(context) => TextStyle(
      fontSize: MediaQuery.of(context).size.height*.014,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora",
      color: Colors.white
  );
  static TextStyle cairoW500S10Grey(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.012,
    fontWeight: FontWeight.w500,
    color: const Color(0xff7A7A7A),
    fontFamily: "Sora",
  );
  static TextStyle onBoardingDescriptionText(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.018,
    fontWeight: FontWeight.w600,
    color: const Color(0xff747688),
    fontFamily: "Sora",
  );
  static TextStyle descriptionGrey(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.016,
    fontWeight: FontWeight.w400,
    color: const Color(0xff828282),
    fontFamily: "Sora",
  );
  static TextStyle hintText(context) => TextStyle(
    fontSize: MediaQuery.of(context).size.height*.017,
    fontWeight: FontWeight.w400,
    color: const Color(0xffB4C0CC),
    fontFamily: "Sora",
  );

  static TextStyle title20(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.024,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora");
  static TextStyle title18(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.022,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora");
  static TextStyle title16(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.02,
      fontWeight: FontWeight.w500,
      fontFamily: "Sora");
  static TextStyle title14(context)=> TextStyle(
      fontSize: MediaQuery.of(context).size.height*.018,
      fontWeight: FontWeight.w600,
      fontFamily: "Sora");
}