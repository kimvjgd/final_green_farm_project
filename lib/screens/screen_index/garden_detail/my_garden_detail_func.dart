import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:percent_indicator/percent_indicator.dart';

Widget pictures() {
  return Stack(
    children: [
      Container(
        //margin: const EdgeInsets.only(top: 20),
        child: const Image(image: AssetImage('assets/images/Rectangle6.png')),
      ),
      Container(
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: const EdgeInsets.only(top: 20, right: 20),
            child: const Image(
              image: AssetImage('assets/images/Ellipse6_Cross.png'),
              width: 25,
              height: 25,
            ), //Text('TEST22', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    ],
  );
}

Widget comments() {
  return Container(
    child: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 25, left: 15),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '버터헤드상추',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.bold,
              ),
            ),
          ), 
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 15),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '수확 예상 시기 : 12.16 ~ 12.21',
              style: TextStyle(
                color: Color(0xff5E8900),
                fontSize: 14,
              ),
            ),
          ), 
        ),
        Container(
          margin: const EdgeInsets.only(top: 5, left: 15),
          child: const Align(
            alignment: Alignment.topLeft,
            child: Text(
              '수확 예상시기입니다. 식물 상태를 확인하여 수확하세요',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ), 
        ),
      ],
    )
  );
}

Widget chart(double scrWidth) {
  return Container(
    margin: const EdgeInsets.only(top: 5),
    height: 30,
    child: CustomPaint(
      //size: Size(50, 20),
      painter: MyPainter(n1:scrWidth),
    ),
  );
}

class MyPainter extends CustomPainter {

  MyPainter({required this.n1});
  
  double n1;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint() // Paint 클래스는 어떤 식으로 화면을 그릴지 정할 때 쓰임.
      ..color = const Color(0xff4E5854) // 색은 보라색
      ..strokeCap = StrokeCap.round // 선의 끝은 둥글게 함.
      ..strokeWidth = 1.0; // 선의 굵기는 4.0

    log("N1 : $n1");

    Offset p1 = const Offset(15.0, 30.0); // 선을 그리기 위한 좌표값을 만듬.  
    Offset p2 = Offset(n1/2, 30.0); //Offset(size.width, size.height);

    canvas.drawLine(p1, p2, paint); // 선을 그림. 

    paint = Paint() // Paint 클래스는 어떤 식으로 화면을 그릴지 정할 때 쓰임.
      ..color = const Color(0xff5E8900) // 색은 보라색
      ..strokeCap = StrokeCap.round // 선의 끝은 둥글게 함.
      ..strokeWidth = 1.0; // 선의 굵기는 4.0

    p1 = Offset(n1/2, 30.0); // 선을 그리기 위한 좌표값을 만듬.  
    p2 = Offset(n1-15, 30.0); //Offset(size.width, size.height);

    canvas.drawLine(p1, p2, paint); // 선을 그림. 

    paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = const Color(0xff4E5854)
      ..strokeWidth = 10;

    List<Offset> offsetPoints = [];
    offsetPoints.add(Offset(20, 30));

    canvas.drawPoints(PointMode.points, offsetPoints, paint);

    paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = const Color(0xff5E8900)
      ..strokeWidth = 10;

    offsetPoints = [];

    offsetPoints.add(Offset(n1/2, 30));
    offsetPoints.add(Offset(n1-20, 30));

    canvas.drawPoints(PointMode.points, offsetPoints, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

Widget chartTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 10, left: 15),
        child: Column(
          children: const [
            Text(
              '발아기', 
              style: TextStyle(
                color: Color(0xff4E5854),
                fontSize: 16,
              ),
            ),
            Text(
              '약11일',
              style: TextStyle(
                color: Color(0xff4E5854),
                fontSize: 14,
              ),
            ),
          ],
        )
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: const [
            Text(
              '성장기', 
              style: TextStyle(
                color: Color(0xff5E8900),
                fontSize: 16,
              ),
            ),
            Text(
              '약16일',
              style: TextStyle(
                color: Color(0xff5E8900),
                fontSize: 14,
              ),
            ),
          ],
        )
      ),
      Container(
        margin: const EdgeInsets.only(top: 10, right: 15),
        child: Column(
          children: const [
            Text(
              '수확기', 
              style: TextStyle(
                color: Color(0xff5E8900),
                fontSize: 16,
              ),
            ),
            Text(
              '약6일',
              style: TextStyle(
                color: Color(0xff5E8900),
                fontSize: 14,
              ),
            ),
          ],
        )
      )
    ],
  );
}

Widget lightTime() {
  return Row(
    children: [
      Container(
        //color: Colors.white,
        margin: const EdgeInsets.only(left: 15, top: 20),
        padding: const EdgeInsets.all(10),
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(94, 137, 0, 0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '재배환경',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff4E5854),
              ),
            ),
            Text(
              '표준',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff5E8900),
              ),
            ),
          ],
        )
      ),
      Container(
        width: 10,
      ),
      Flexible(
        fit: FlexFit.tight,
        child: Container(
          margin: const EdgeInsets.only(top: 20, right: 15),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(94, 137, 0, 0.1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                '조명시간',
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff4E5854),
                ),
              ),
              Text(
                '오전 08:00 ~ 오후 10:00',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff5E8900),
                ),
              ),
            ],
          )
        ),
      ),
    ],
  ); 
}

Widget temperature() {
  return Container(
    margin: EdgeInsets.only(top: 20, left: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '재배온도',
          style: TextStyle(
            color: Color(0xff4E5854),
            fontSize: 14, 
          ),
        ),
        Container(
          height: 2,
        ),
        const Text(
          'Day 25 \u2103 Night 18 \u2103',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),  
      ],
    ),  
  );
}

Widget progressBar(double widthLen) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.only(top: 20, left: 15),
        child: const Text(
          '조명밝기',
          style: TextStyle(
            color: Color(0xff4E5854),
            fontSize: 14, 
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 5),
        child: LinearPercentIndicator(
          padding: const EdgeInsets.all(0),
          width: widthLen-30,
          //animation: true,
          lineHeight: 8,
          //animationDuration: 2000,
          percent: 0.6,
          //linearStrokeCap: LinearStrokeCap.roundAll,
          barRadius: const Radius.circular(16),
          progressColor: Color(0xffD35A35),
          backgroundColor: Color(0xff303532),
        ),
      ),
      /*
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        width: widthLen-30,
        height: 8,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: LinearProgressIndicator(
            value: 0.7,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD35A35)),
            backgroundColor: Color(0xffD6D6D6),
          ),
        ),
      ),
      */
      Container(
        margin: const EdgeInsets.only(top: 20, left: 15),
        child: Text(
          '바람세기',
          style: TextStyle(
            color: Color(0xff4E5854),
            fontSize: 14, 
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 15, top: 5),
        child: LinearPercentIndicator(
          padding: const EdgeInsets.all(0),
          width: widthLen-30,
          //animation: true,
          lineHeight: 8,
          //animationDuration: 2000,
          percent: 0.4,
          //linearStrokeCap: LinearStrokeCap.roundAll,
          barRadius: const Radius.circular(16),
          progressColor: Color(0xff4699C1),
          backgroundColor: Color(0xff303532),
        ),
      ),
    ],
  );
}