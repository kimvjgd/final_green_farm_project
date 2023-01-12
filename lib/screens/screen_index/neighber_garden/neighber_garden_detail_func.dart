import 'package:flutter/material.dart';
import 'dart:developer';

Widget emailSend() {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 15),
    padding: EdgeInsets.only(left: 10),
    width: 205,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: Color(0xff1C201D),
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset('assets/images/Email.png', scale: 3.0,),
        Container(
          width: 10,
        ),
        Text(
          '우편함으로 채팅 보내기',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget welcomeTitle() {
  return Container(
    margin: EdgeInsets.only(bottom: 80),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          //width: 300,
          height: 40,
          margin: EdgeInsets.only(left: 15, right: 15),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color(0xff1C201D),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Text(
                        '그리던딸기 ', 
                        style: TextStyle(
                          color: Color(0xff5E8900),
                        ),
                      ),
                      Text(
                        '님의 정원에 오신 것을 환영합니다.',
                        style: TextStyle(
                        color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/Cross.png', scale: 3.5,),
              ],
            ), 
          ), 
        ),
      ],
    ),
  );
}