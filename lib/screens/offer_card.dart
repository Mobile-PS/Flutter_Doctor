

import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/model/OfferDataModel.dart';


class OfferCard extends StatelessWidget {

  final Show show;

  OfferCard(this.show);

  @override
  Widget build(BuildContext context) {

    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child:  Card(
            elevation: 2,
            child: Container(
                margin: EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(ApiConstants().imagebaseUrl+show.image,width: MediaQuery.of(context).size.width/1.3,height: MediaQuery.of(context).size.width/2,),
                      SizedBox(width: 10,),
                      Text(
                        show.offerName,
                        style: TextStyle(fontSize: 17, color: Colors.black,  	fontWeight: FontWeight.bold),
                      ),

                    ]))),

    );
  }

}