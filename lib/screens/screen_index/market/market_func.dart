import 'package:flutter/material.dart';
import 'dart:developer';

Widget marketSearchOnly() {
  return Row (
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Expanded (
        child: Container(
          //width: 200,
          height: 50,
          margin: EdgeInsets.only(left: 15, top: 25, right: 15, bottom: 15),
          child: TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(15),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xff303532), width: 1.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                //borderSide: BorderSide(width: 1, color: Colors.white,),
              ),
              prefixIcon: Image.asset('assets/images/Search.png', scale: 4.0,),
              filled: true,
              fillColor: Color(0xff303532),
              hintText: '농작물의 이름을 입력해 주세요',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    ],
  );   
}

Widget marketMap() {
  return Image.asset('assets/images/Map.png');
}

Widget marketItems(double left, double top) {
  return Positioned(
    left: left,
    top: top,
    child: Container(
      child: Image.asset('assets/images/Plant.png', scale: 3.0,),
    ),
  );
}