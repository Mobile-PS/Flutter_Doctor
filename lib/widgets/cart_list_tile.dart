import 'package:flutter/material.dart';




class CartListTileWidget extends StatelessWidget {
  final String text,price;
  final void Function(bool check) onClick;


  const CartListTileWidget({
    Key key,
    this.text,
    this.price,
     this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    print(price);

    return GestureDetector(onTap: () {


    },
    child:
      Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      height: 150,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
          color: Colors.white,
          blurRadius: 5.0,
        ),],
        /*gradient: check!?LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topCenter,
          colors: [
            buttonColor,
            primaryColor,
          ],
        ):LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topCenter,
          colors: [
            white,
            white,
          ],
        ),*/
        border: Border.all(
            color: Colors.white, // Set border color
            width: 1.0), // Set border width
        borderRadius:
            BorderRadius.all(Radius.circular(8.0)), // Set rounded corner radius
        // Make rounded corner of border
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      Expanded(child:
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         Text(
          text,
           overflow: TextOverflow.clip,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        Divider(color: Colors.black12,),
        Text(
          "Rs "+price,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
        ),

        SizedBox(height: 5,),

      ])),
          Column(children: [

            IconButton(
              icon: Icon(
                Icons.delete_outline,
                color: Colors.black,
              ),
              onPressed: () {
                onClick(true);
              },
            )

          ]),
      ],)
      /*child: ListTile(
        leading: Checkbox(
          side: BorderSide(
            color: iconColor1,
            width: 1.5,
          ),
          checkColor: Colors.white,
          value: check,
          activeColor: iconColor1,
          onChanged: (value) {
            onClick(value!);
          },
        ),
        title: Text(
          text!,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: baseInk),
        ),
        trailing: Text(
          price!+" \u0024",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: baseInk),
        ),
      ),*/
    ));
  }
}
