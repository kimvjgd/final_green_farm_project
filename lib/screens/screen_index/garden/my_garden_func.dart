import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:developer';

import '../garden_detail/my_garden_detail.dart';
import '../market/market.dart';
import '../garden/my_garden.dart';
import '../neighber_garden/neighber_garden.dart';

Widget gardenSearch() {
  return Row (
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded (
        child: Container(
          //width: 200,
          height: 50,
          margin: EdgeInsets.only(left: 15, top: 5, right: 7, bottom: 15),
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
      Container(
        //color: Colors.blue,
        margin: EdgeInsets.only(top: 5, right: 15),
        child: Image.asset('assets/images/RecPlus.png', scale: 5.5,),
      ), 
    ],
  );   
}

Widget gardenGridView(BuildContext context) {
  
  double width = (MediaQuery.of(context).size.width - 17 - 20 - 17)/2;  // left margin - mainAxisSpacing - right margin
  double height = (MediaQuery.of(context).size.width - 17 - 20 - 17)/2;  // left margin - mainAxisSpacing - right margin
  double textHeight = 75;

  return Expanded (
  //Container(
    //height: 500,
    child: Container(
      margin: const EdgeInsets.only(left: 17, right: 17),
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: width/(height+textHeight),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: [
          gardenGridViewItem2(context, width, height, textHeight),
          gardenGridViewItem(width, height, textHeight),
          gardenGridViewItem(width, height, textHeight),
          
          //Image.network('https://picsum.photos/250?image=1'),
          //Image.network('https://picsum.photos/250?image=2'),
          //Image.network('https://picsum.photos/250?image=3'),
          //Image.network('https://picsum.photos/250?image=4'),
        ],
      )
    ), 
  );
}

Widget gardenGridViewItem(double width, double height, double textHeight) {
  return Container(
            width: width,
            height: height + textHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  height: height,
                  //color: Colors.yellow,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Bazil.png', scale: 3.5,),
                        Container(
                          child: Align (
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 5, bottom: 5),
                              padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff890000),
                              ),
                              child: Text(
                                '4일 차',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white, 
                                ),
                              ),
                            ), 
                          ), 
                        ),
                      ],
                    ), 
                  ), 
                ),
                Container( //textHeight 가 하기 3개의 height + margin 들을 다 합친 값이다.
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 25,
                        child: Text(
                          '바질', 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        height: 20,
                        //color: Colors.red,
                        child: Text(
                          '수확시기 12.16~12.21', 
                          style: TextStyle(
                            color: Color(0xff4E5854),
                            fontSize: 14,
                          ),
                        ),
                      ),  
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        height: 20,
                        width: 60,
                        color: Color.fromRGBO(0, 104, 137, 0.1),
                        child: Center(
                          child: Text('발아기', 
                            style: TextStyle(
                              color: Color(0xff006889),
                              fontSize: 12,
                            ),  
                          ),
                        ), 
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
}

Widget gardenGridViewItem2(BuildContext context, double width, double height, double textHeight) {
  return Container(
            width: width,
            height: height + textHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyGardenDetail()),
                    );
                  },
                  child: Container(
                  width: width,
                  height: height,
                  //color: Colors.yellow,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        Image.asset('assets/images/Rectangle6-2.png', scale: 4.5,),
                        Container(
                          child: Align (
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 5, bottom: 5),
                              padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 5),
                              //color: Colors.red,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff890000),
                              ),
                              child: Text(
                                '32일 차',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.white, 
                                ),
                              ),
                            ), 
                          ), 
                        ),
                      ],
                    ), 
                  ), 
                ),
                ),
                
                Container( //textHeight 가 하기 3개의 height + margin 들을 다 합친 값이다.
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 25,
                        child: Text(
                          '버터헤드상추', 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        height: 20,
                        //color: Colors.red,
                        child: Text(
                          '수확시기 12.16~12.21', 
                          style: TextStyle(
                            color: Color(0xff4E5854),
                            fontSize: 14,
                          ),
                        ),
                      ),  
                      Container(
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        height: 20,
                        width: 60,
                        color: Color.fromRGBO(94, 137, 0, 0.1),
                        child: Center(
                          child: Text('수확기', 
                            style: TextStyle(
                              color: Color(0xff5E8900),
                              fontSize: 12,
                            ),  
                          ),
                        ), 
                      ),

                    ],
                  ),
                ),
              ],
            ),
          );
}

Widget bottomNavBar(BuildContext context, int itemNum) {
  int bottomItemNum = 0;

  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
    ),
    child: Container(
      height: 70,
      child: BottomAppBar(  
        color: Color(0xff151816),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if(itemNum == 1) ...[
              bottomNavBarItem1(context, '나의 정원 $itemNum', 'MyGardenActive.png', '5E8900'),
              bottomNavBarItem2(context, '이웃 정원', 'NeighberGarden.png', '4F4F4F'),
              bottomNavBarItem3(context, '마을장터', 'Market.png', '4F4F4F'),
              bottomNavBarItem4(context, '채팅', 'Chatting.png', '4F4F4F'),
              bottomNavBarItem5(context, '내 프로필', 'MyProfile.png', '4F4F4F'),
            ],
            if(itemNum == 2) ...[
              bottomNavBarItem1(context, '나의 정원 $itemNum', 'MyGarden.png', '4F4F4F'),
              bottomNavBarItem2(context, '이웃 정원', 'NeighberGardenActive.png', '5E8900'),
              bottomNavBarItem3(context, '마을장터', 'Market.png', '4F4F4F'),
              bottomNavBarItem4(context, '채팅', 'Chatting.png', '4F4F4F'),
              bottomNavBarItem5(context, '내 프로필', 'MyProfile.png', '4F4F4F'),
            ],
            if(itemNum == 3) ...[
              bottomNavBarItem1(context, '나의 정원 $itemNum', 'MyGarden.png', '4F4F4F'),
              bottomNavBarItem2(context, '이웃 정원', 'NeighberGarden.png', '4F4F4F'),
              bottomNavBarItem3(context, '마을장터', 'MarketActive.png', '5E8900'),
              bottomNavBarItem4(context, '채팅', 'Chatting.png', '4F4F4F'),
              bottomNavBarItem5(context, '내 프로필', 'MyProfile.png', '4F4F4F'),
            ],
          ],
        ),
      ),
    ),
  );
}

Widget bottomNavBarItem1(BuildContext context, String name, String iconName, String color) {
  return Container(
    //color: Colors.red,
    margin: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    child: Column(
      children: [
        IconButton(
          onPressed: () {
            /*
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyGarden()),
            );
            */
            Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
            /*
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyGarden()),
            );
            */
          },
          icon: Image.asset('assets/images/$iconName', scale: 4.5,), //const Icon(Icons.search),
        ),
        Container(
          child: Text(
            '$name',
            style: TextStyle(
              color: getColorFromHex('$color'),//Color(0xff5E8900),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget bottomNavBarItem2(BuildContext context, String name, String iconName, String color) {
  return Container(
    //color: Colors.red,
    margin: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    child: Column(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NeighberGarden()),
            );
          },
          icon: Image.asset('assets/images/$iconName', scale: 4.5,), //const Icon(Icons.search),
        ),
        Container(
          child: Text(
            '$name',
            style: TextStyle(
              color: getColorFromHex('$color'),//Color(0xff5E8900),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget bottomNavBarItem3(BuildContext context, String name, String iconName, String color) {
  return Container(
    //color: Colors.red,
    margin: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    child: Column(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Market()),
            );
          },
          icon: Image.asset('assets/images/$iconName', scale: 4.5,), //const Icon(Icons.search),
        ),
        Container(
          child: Text(
            '$name',
            style: TextStyle(
              color: getColorFromHex('$color'),//Color(0xff5E8900),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget bottomNavBarItem4(BuildContext context, String name, String iconName, String color) {
  return Container(
    //color: Colors.red,
    margin: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    child: Column(
      children: [
        IconButton(
          onPressed: () {
            if(false) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyGardenDetail()),
              );
            }
          },
          icon: Image.asset('assets/images/$iconName', scale: 4.5,), //const Icon(Icons.search),
        ),
        Container(
          child: Text(
            '$name',
            style: TextStyle(
              color: getColorFromHex('$color'),//Color(0xff5E8900),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget bottomNavBarItem5(BuildContext context, String name, String iconName, String color) {
  return Container(
    //color: Colors.red,
    margin: EdgeInsets.all(0),
    padding: EdgeInsets.all(0),
    child: Column(
      children: [
        IconButton(
          onPressed: () {
            if(false) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyGardenDetail()),
              );
            }
          },
          icon: Image.asset('assets/images/$iconName', scale: 4.5,), //const Icon(Icons.search),
        ),
        Container(
          child: Text(
            '$name',
            style: TextStyle(
              color: getColorFromHex('$color'),//Color(0xff5E8900),
              fontSize: 12,
            ),
          ),
        ),
      ],
    ),
  );
}

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }

  return Color(0xff5E8900);
}