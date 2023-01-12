import 'package:flutter/material.dart';
import 'dart:developer';

import 'my_garden_func.dart';
import 'my_garden_grid.dart';

final bearItem = {
  "list": [
    {"image": "assets/images/img_blue.png", "name": "파랑이"},
    {"image": "assets/images/img_mint.png", "name": "민트트"},
    {"image": "assets/images/img_skyblue.png", "name": "하늘이"},
    {"image": "assets/images/img_white.png", "name": "하양이"},
    {"image": "assets/images/img_pink.png", "name": "분홍이"},
    {"image": "assets/images/img_yellow.png", "name": "노랑이"},
    {"image": "assets/images/img_purple.png", "name": "보라라"},
    {"image": "assets/images/img_mix.png", "name": "믹스스"}
  ]
};
//BearList? bearList;

class MyGarden extends StatefulWidget {
  const MyGarden({super.key});

  @override
  State<MyGarden> createState() => MyGardenState();
}

class MyGardenState extends State<MyGarden> {

  @override
  void initState() {
    super.initState();
  }

  /*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('나의 정원'),
        backgroundColor: Colors.grey,
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(0),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xff1C201D),
          ),
          Container(
            child: Text('AAAAAAAAAA', style: TextStyle(color: Colors.red),),
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
              ),
              Text('TEST111', style: TextStyle(color: Colors.white),),
              Text('TEST2222'),
            ],
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: bottomNavBar(),
    );
  }
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('나의 정원'),
        backgroundColor: Colors.grey,
        toolbarHeight: 40,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          tooltip: 'Navigation menu',
          onPressed: () => Navigator.of(context).pop(),
          padding: const EdgeInsets.all(0),
        ),
      ),
      body: //MyGardenGrid(),
      /*
      Container(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: [
                Image.network('https://picsum.photos/250?image=1'),
                Image.network('https://picsum.photos/250?image=2'),
                Image.network('https://picsum.photos/250?image=3'),
                Image.network('https://picsum.photos/250?image=4'),
              ],
            )
          ),
      */
      /*
      Column(
        children: [
          Container(
            child: Text('TEST1111111', style: TextStyle(color: Colors.white),),
          ),
          Expanded (
          //Container(
            //height: 500,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              children: [
                Image.network('https://picsum.photos/250?image=1'),
                Image.network('https://picsum.photos/250?image=2'),
                Image.network('https://picsum.photos/250?image=3'),
                Image.network('https://picsum.photos/250?image=4'),
              ],
            )
          ),
          Container(
            margin: EdgeInsets.only(bottom: 100),
            child: Text('TEST1111111', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      */
      
      Column(
        children: [
          Expanded(
          //Container(
            child: GridView.builder(
              itemCount: 11,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10, 
              ), 
            itemBuilder: (context, index) {
              return Container(
                color: Colors.lightGreen,
                child: Text('Item : $index'),
              );
            },
            ),    
          ),
        ],
      ),
      
      /*
      GridView.builder(
        itemCount: 11,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10, 
        ), 
        itemBuilder: (context, index) {
          return Container(
            color: Colors.lightGreen,
            child: Text('Item : $index'),
          );
        },
      ),
      */
      extendBody: true,
      bottomNavigationBar: bottomNavBar(),
    );
  }
}

Widget bottomNavBar() {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topRight: Radius.circular(10),
      topLeft: Radius.circular(10),
    ),
    child: Container(
      height: 50,
      child: BottomAppBar(  
        color: Colors.blue,
        child: Row(
          children: [
            IconButton(
              onPressed: null, 
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: null, 
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: null, 
              icon: const Icon(Icons.search),
            ),
          ],
        ),
      ),
    ),
    
    
    
    /*
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '1'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '2'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: '3'),
      ]
    ),
    */
  );
}


          /*
          //gridview 원본
          Container(
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
          ),

          Container(
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
          ),

          Container(
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
          ),
          */