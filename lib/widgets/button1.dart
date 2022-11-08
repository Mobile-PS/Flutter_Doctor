import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({
    Key key,
    @required this.size,
    this.text,
    this.press,
    this.skip
  }) : super(key: key);

  final Size size;
  final String text;
  final GestureTapCallback press;
  final GestureTapCallback skip;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: size.height * 0.40),
        child: Column(children: [
        SizedBox(
          width: size.width * 0.5,
          height: 50.0,
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)), primary: Color(0xFF4A90E2), elevation: 5),

            onPressed: press,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17.0,
                  ),
                ),
                Card(
                  color: Color(0xCDA3C5EC),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0)),
                  child: SizedBox(
                    width: 35.0,
                    height: 35.0,
                    child: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

          SizedBox(height: 10,),
          GestureDetector(onTap: () {
            skip();
          },child:
          Text(
            'Skip',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20.0,
            ),
          )),
        ],)
      ),
    );
  }
}
