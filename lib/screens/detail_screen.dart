import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/model/doctor_model.dart';
import 'package:flutter_health_care_app/screens/cart_screen.dart';
import 'package:flutter_health_care_app/screens/date_time.dart';
import 'package:flutter_health_care_app/screens/home_page_screen.dart';
import 'package:flutter_health_care_app/screens/patient_profile.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/utilities/constants.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/rating_star_widget.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

/*
Title:DetailScreen
Purpose:DetailScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021Ser
*/

class DetailScreen extends StatefulWidget {
  final DoctorModel model;
  final int id,serid,subid;
  final String fees;
  final String mainSer,subser;

  DetailScreen({
    Key key,
    this.model,
    this.id,
    this.fees,
    this.mainSer,
    this.subser,
    this.serid,
    this.subid
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailScreen> {

  final regCtrl = Get.put(DocDetailsController());

  DoctorModel model;
  @override
  void initState() {
    model = widget.model;
    regCtrl.show = false;
    regCtrl.fees = widget.fees;
    if(widget.mainSer !=null) {
      regCtrl.servName = widget.mainSer;
      regCtrl.subServname = widget.subser;
      regCtrl.servID = widget.serid;
      regCtrl.subServId = widget.subid;
    }

    regCtrl.getData(widget.id);
    super.initState();
  }

  Widget _appbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        BackButton(
          color: Theme.of(context).primaryColor,
        ),
        IconButton(
          icon: Icon(
            model.isfavourite ? Icons.add_shopping_cart : Icons.add_shopping_cart,
            color: model.isfavourite ? Colors.black : LightColor.black,
          ),
          onPressed: () {

            Get.to(MyCartScreen());
           /* setState(() {
              model.isfavourite = !model.isfavourite;
            });*/
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = TextStyles.title
        .copyWith(fontSize: 25)
        .bold;
    if (AppTheme.fullWidth(context) < 393) {
      titleStyle = TextStyles.title
          .copyWith(fontSize: 23)
          .bold;
    }

    return GetBuilder<DocDetailsController>(builder: (_) {
      if (regCtrl.loading) {
        return Scaffold(
            backgroundColor: const Color.fromRGBO(243, 246, 247, 1),
            body: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              color: Colors.white,
              child: const Center(child: ProgressBarWidget()),
            ));
      }
      else {

        if(regCtrl.loginScreenResponse != null) {
          return Scaffold(
            backgroundColor: LightColor.extraLightBlue,
            floatingActionButton: FloatingActionButton(
              onPressed: () async {

                await launch ("tel:+917080909046");

              },
              child: Icon(Icons.call, color: Colors.white, size: 29,),
              backgroundColor: Colors.blue,
              elevation: 5,
              splashColor: Colors.grey,
            ),
            body: SafeArea(
              bottom: false,
              child: Stack(
                children: <Widget>[
                  Image.network(ApiConstants().imagebaseUrl +
                      regCtrl.loginScreenResponse.show[0].profileImage,width: MediaQuery.of(context).size.width,fit: BoxFit.cover),
                  DraggableScrollableSheet(
                    maxChildSize: .8,
                    initialChildSize: .6,
                    minChildSize: .6,
                    builder: (context, scrollController) {
                      return Container(
                        height: AppTheme.fullHeight(context) * .5,
                        padding: EdgeInsets.only(
                          left: 19,
                          right: 19,
                          top: 16,
                        ), //symmetric(horizontal: 19, vertical: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          controller: scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              ListTile(
                                title: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      regCtrl.loginScreenResponse.show[0]
                                          .hospitalName,
                                      style: titleStyle,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.check_circle,
                                      size: 18,
                                      color: Theme
                                          .of(context)
                                          .primaryColor,
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: RatingStarWidget(
                                        rating: model.rating,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Text(
                                    regCtrl.loginScreenResponse.show[0]
                                        .hospitalSpeciality,
                                  style: TextStyle(fontSize: 14,color: Colors.black),
                                ),
                              ),
                              Divider(
                                thickness: .3,
                                color: LightColor.grey,
                              ),

                              /*Row(
                                children: <Widget>[
                                  ProgressWidget(
                                    value: model.goodReviews,
                                    totalValue: 100,
                                    activeColor: LightColor.purpleExtraLight,
                                    backgroundColor: LightColor.grey
                                        .withOpacity(
                                        .3),
                                    title: "Good Review",
                                    durationTime: 500,
                                  ),
                                  ProgressWidget(
                                    value: model.totalScore,
                                    totalValue: 100,
                                    activeColor: LightColor.purpleLight,
                                    backgroundColor: LightColor.grey
                                        .withOpacity(
                                        .3),
                                    title: "Total Score",
                                    durationTime: 300,
                                  ),
                                  ProgressWidget(
                                    value: model.satisfaction,
                                    totalValue: 100,
                                    activeColor: LightColor.purple,
                                    backgroundColor: LightColor.grey
                                        .withOpacity(
                                        .3),
                                    title: "Satisfaction",
                                    durationTime: 800,
                                  ),
                                ],
                              ),*/
                              /*Divider(
                                thickness: .3,
                                color: LightColor.grey,
                              ),*/
                              Text("About", style: titleStyle).vP16,
                              Text(
                                regCtrl.loginScreenResponse.show[0]
                                    .hospitalAddress,
                                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),
                              ),

                              regCtrl.loginScreenResponse
                                  .show.length>1?
                              Container(
                                height: 80,
                                padding: EdgeInsets.only(top: 8, left: 16,),
                                margin: EdgeInsets.only(bottom: 16),
                                child: ListView(
                                  physics: BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Container(
                                        width: 80,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: borderColor,
                                              // Set border color
                                              width: 1.0), // Set border width
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(
                                              5.0)), // Set rounded corner radius
                                          // Make rounded corner of border
                                        ),
                                        margin: EdgeInsets.only(right: 16),
                                        child:
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "smallImage",
                                            child: ClipRRect(
                                              child: Image.network(
                                                ApiConstants().imagebaseUrl+
                                                    regCtrl.loginScreenResponse
                                                        .show[1].image1,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        )
                                    ),
                                    Container(
                                        width: 80,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: borderColor,
                                              // Set border color
                                              width: 1.0), // Set border width
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(
                                              5.0)), // Set rounded corner radius
                                          // Make rounded corner of border
                                        ),
                                        margin: EdgeInsets.only(right: 16),
                                        child:
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "smallImage1",
                                            child: ClipRRect(
                                              child: Image.network(
                                                ApiConstants().imagebaseUrl +
                                                    regCtrl.loginScreenResponse
                                                        .show[2].image2,
                                                fit: BoxFit.fitWidth,
                                              ),

                                            ),
                                          ),
                                        )
                                    ),
                                    Container(
                                        width: 80,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: borderColor,
                                              // Set border color
                                              width: 1.0), // Set border width
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(
                                              5.0)), // Set rounded corner radius
                                          // Make rounded corner of border
                                        ),
                                        margin: EdgeInsets.only(right: 16),
                                        child:
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "smallImage2",
                                            child: ClipRRect(
                                              child: Image.network(
                                                ApiConstants().imagebaseUrl +
                                                    regCtrl.loginScreenResponse
                                                        .show[3].image3,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        )
                                    ),
                                    Container(
                                        width: 80,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color: borderColor,
                                              // Set border color
                                              width: 1.0), // Set border width
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(
                                              5.0)), // Set rounded corner radius
                                          // Make rounded corner of border
                                        ),
                                        margin: EdgeInsets.only(right: 16),
                                        child:
                                        FullScreenWidget(
                                          child: Hero(
                                            tag: "smallImage3",
                                            child: ClipRRect(
                                              child: Image.network(
                                                ApiConstants().imagebaseUrl +
                                                    regCtrl.loginScreenResponse
                                                        .show[4].image4,
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ):SizedBox.shrink(),
                              Row(

                                children: <Widget>[
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme
                                          .of(context)
                                          .primaryColor,
                                    ),
                                    child: Icon(
                                      Icons.call,
                                      color: Colors.black,
                                    ),
                                  ).ripple(
                                        () async {
                                          await launch ("tel:+917080909046");
                                        },
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme
                                          .of(context)
                                          .primaryColor,
                                    ),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors.black,
                                    ),
                                  ).ripple(
                                        () async {
                                          await launchUrlString(regCtrl.loginScreenResponse.show[0].location);
                                        },
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  SizedBox(width: 10,)
                                ],
                              ).vP16,
                              SizedBox(width: 10,),

                                   /* !regCtrl.show?
                                    Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                          color: Theme
                                              .of(context)
                                              .primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              10)),
                                      child: TextButton(
                                        onPressed: () {
                                          regCtrl.hospiID = widget.id.toString();
                                          regCtrl.hospname = widget.model.name;
                                          regCtrl.fees = widget.fees;
                                          //  regCtrl.AddCartData(widget.fees);

                                          regCtrl.show = true;
                                          regCtrl.AddtoCartData();

                                          // Get.back();
                                          *//*Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => PatientData(id: widget.id),
                                          ),
                                        );*//*
                                        },
                                        child: Text(
                                          "Add services",
                                          style: TextStyles.titleNormal.white,
                                        ),
                                      ),
                                    ):*/ /*Container(
                                      height: 45,
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Theme
                                              .of(context)
                                              .primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              10)),
                                      child: TextButton(
                                          onPressed: () {

                                            if(regCtrl.ncartData.isEmpty) {
                                              regCtrl.hospiID =
                                                  widget.id.toString();
                                              regCtrl.hospname =
                                                  widget.model.name;
                                              regCtrl.fees = widget.fees;
                                              //  regCtrl.AddCartData(widget.fees);

                                              // regCtrl.show = true;
                                              regCtrl.AddtoCartData();
                                            }
                                            else {
                                              Get.to(MyCartScreen());
                                            }
                                          },
                                          child:  Text(
                                            "Proceed for booking",
                                            style: TextStyles.titleNormal.white,
                                          )),

                                    ),*/

                              SizedBox(height: 10,),

                                    regCtrl.loading1?
                                        Center(child: ProgressBarWidget(),):
                                    Container(
                                      height: 45,
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Theme
                                              .of(context)
                                              .primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              10)),
                                      child: TextButton(
                                          onPressed: () {

                                            regCtrl.hospiID = widget.id.toString();
                                            regCtrl.hospname = widget.model.name;
                                            regCtrl.fees = widget.fees;
                                            //  regCtrl.AddCartData(widget.fees);

                                            // regCtrl.show = true;
                                            regCtrl.AddtoCartData();

                                           // Get.offAll(HomePageScreen());

                                          },
                                          child:  Text(
                                            "Add other services",
                                            style: TextStyles.titleNormal.white,
                                          )),

                                    ),

                               /* SizedBox(width: 5,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Container(
                                    height: 45,
                                    decoration: BoxDecoration(
                                        color: Theme
                                            .of(context)
                                            .primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            10)),
                                    child: TextButton(
                                        onPressed: () {

                                          Get.to(MyCartScreen());

                                        },
                                        child:  Text(
                                          "Proceed for booking",
                                          style: TextStyles.titleNormal.white,
                                        )),

                                  ),
                                ],)*/


                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  _appbar(),
                ],
              ),
            ),
          );
        }
        else{

          return Scaffold(
              backgroundColor: const Color.fromRGBO(243, 246, 247, 1),
              floatingActionButton: FloatingActionButton(
                onPressed: () async {

                  await launch ("tel:+917080909046");

                },
                child: Icon(Icons.call, color: Colors.white, size: 29,),
                backgroundColor: Colors.blue,
                elevation: 5,
                splashColor: Colors.grey,
              ),
              body: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                color: Colors.white,
                child: Center(child: Text('No data available',
      style: TextStyle(fontSize: 18.0),
                )),
              ));
        }
      }
    });
  }
}
