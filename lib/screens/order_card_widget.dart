import 'package:flutter/material.dart';


class OrderCardWidget extends StatelessWidget {


  const OrderCardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
       /* Get.to(
          () => ProductDetailsScreen(
            productId: products!.id!,
          ),
        );*/
      },
      child:
      Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              elevation: 8.0,
             // color: cardBackgroundColor,
              child: Padding(padding: EdgeInsets.all(10),
              child:Row(children: [
                Expanded(
                    flex: 3,
                    child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Service name : Head Office',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Client name : xyz',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                    Text(
                      'Status : Completed',
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 13.0,
                          fontFamily: 'Nunito Sans'),
                    ),
                    const SizedBox(height: 5),

                  ],
                )),


              ],)

             ),
            ),

          ],
        ),
      ),
    );
  }
}
