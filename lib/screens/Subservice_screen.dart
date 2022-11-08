import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_health_care_app/api/constants.dart';
import 'package:flutter_health_care_app/controllers/serviceprovider_screen_controller.dart';
import 'package:flutter_health_care_app/model/SubService_model.dart';
import 'package:flutter_health_care_app/model/doctor_model.dart';
import 'package:flutter_health_care_app/model/data.dart';
import 'package:flutter_health_care_app/model/doctorserviceDataModel.dart';
import 'package:flutter_health_care_app/screens/cart_screen.dart';
import 'package:flutter_health_care_app/screens/detail_screen.dart';
import 'package:flutter_health_care_app/screens/service_card.dart';
import 'package:flutter_health_care_app/screens/service_card1.dart';
import 'package:flutter_health_care_app/screens/serviceprovider_screen.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_health_care_app/widgets/button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

/*
Title:HomePageScreen
Purpose:HomePageScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/

class SubServiceScreen1 extends StatefulWidget {
  final int id;
  final String label;
  SubServiceScreen1({
    Key key,this.id,this.label
  }) : super(key: key);

  @override
  _SubServiceScreen createState() => _SubServiceScreen();
}

class _SubServiceScreen extends State<SubServiceScreen1> {

  final regCtrl = Get.put(ServiceProviderController());

  List<DoctorModel> doctorDataList;
  bool _IsSearching;

  final key = GlobalKey<ScaffoldState>();
  final TextEditingController _searchQuery = TextEditingController();
  Widget appBarTitle = Text(
    "Sub Services",
    style: TextStyle(color: Colors.black),
  );
  Icon actionIcon = Icon(
    Icons.search,
    color: Colors.black,
  );

  @override
  void initState() {

    regCtrl.getSubServiceData(widget.id);
    doctorDataList = doctorMapList.map((x) => DoctorModel.fromJson(x)).toList();
    super.initState();
  }


  void _handleSearchStart() {
    setState(() {
      _IsSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.actionIcon = Icon(
        Icons.search,
        color: Colors.black,
      );
      this.appBarTitle = Text(
        "Services",
        style: TextStyle(color: Colors.black),
      );
      _IsSearching = false;
      _searchQuery.clear();
    });
  }

  Widget _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
     /* leading: Icon(
        Icons.short_text,
        size: 30,
        color: Colors.black,
      ),*/
     /* actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications_none,
              size: 30,
              color: LightColor.grey,
            )),
        *//* ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          child: Container(
            // height: 40,
            // width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Image.asset("assets/user.png", fit: BoxFit.fill),
          ),
        ).p(8),*//*
      ],*/

    );
  }

  /* Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Hello,",
          style: TextStyles.title.subTitleColor,
        ),
        Text("Peter Parker", style: TextStyles.h1Style),
      ],
    ).p16;
  }*/

  Widget _searchField() {
    return Container(
      height: 55,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(13)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: LightColor.grey.withOpacity(.3),
            blurRadius: 15,
            offset: Offset(5, 5),
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: InputBorder.none,
          hintText: "Search for your service",
          hintStyle: TextStyles.body.subTitleColor,
          suffixIcon: SizedBox(
            width: 50,
            child:
                Icon(Icons.search, color: LightColor.purple).alignCenter.ripple(
                      () {},
                      borderRadius: BorderRadius.circular(13),
                    ),
          ),
        ),
      ),
    );
  }

  Widget buildBar(BuildContext context) {
    return AppBar(
        elevation: 1,
        centerTitle: true,
        title: appBarTitle,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Theme.of(context).backgroundColor,
        actions: <Widget>[
          IconButton(
            icon: actionIcon,
            onPressed: () {
              setState(() {
                if (this.actionIcon.icon == Icons.search) {
                  this.actionIcon = Icon(
                    Icons.close,
                    color: Colors.black,
                  );
                  this.appBarTitle = TextField(
                    onChanged: (value) {

                      if(value.length > 2){
                        regCtrl.getFilterList(value);
                      }
                      else{
                        regCtrl.Reset();
                      }

                    },
                    controller: _searchQuery,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        hintText: "Search here..",
                        hintStyle: TextStyle(color: Colors.black)),
                  );
                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              });
            },
          ),
          IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              color:Colors.black,
            ),
            onPressed: () {

              Get.to(MyCartScreen());
              /* setState(() {
              model.isfavourite = !model.isfavourite;
            });*/
            },
          )
        ]);
  }

  Widget _category() {
    return Column(
      children: <Widget>[
        /*Padding(
          padding: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Category", style: TextStyles.title.bold),

            ],
          ),
        ),*/
    Padding(
    padding: EdgeInsets.only(top: 8),
    child:
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 6/7
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: regCtrl.loginScreenResponse.show.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return  ServiceCard1(
                  icon: regCtrl.loginScreenResponse.show[index].profileImage, label: regCtrl.loginScreenResponse.show[index].hospitalName);

              /*return _categoryCardWidget(
                "CT",
                "Scan",
                color: Colors.white,
                lightColor: LightColor.lightGreen,
              );*/
            }))
        /* SizedBox(
          height: AppTheme.fullHeight(context) * .28,
          width: AppTheme.fullWidth(context),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _categoryCardWidget(
                "Chemist & Drugist",
                "350 + Stores",
                color: LightColor.green,
                lightColor: LightColor.lightGreen,
              ),
              _categoryCardWidget(
                "Covid - 19 Specilist",
                "899 Doctors",
                color: LightColor.skyBlue,
                lightColor: LightColor.lightBlue,
              ),
              _categoryCardWidget(
                "Cardiologists Specilist",
                "500 + Doctors",
                color: LightColor.orange,
                lightColor: LightColor.lightOrange,
              )
            ],
          ),
        ),*/
      ],
    );
  }

  Widget _categoryCardWidget(
    String title,
    String subtitle, {
    Color color,
    Color lightColor,
  }) {
    TextStyle titleStyle = TextStyles.title.bold.white;
    TextStyle subtitleStyle = TextStyles.body.bold.white;
    if (AppTheme.fullWidth(context) < 392) {
      titleStyle = TextStyles.body.bold.white;
      subtitleStyle = TextStyles.bodySm.bold.white;
    }
    return AspectRatio(
      aspectRatio: 6 / 4,
      child: Container(
        height: 200,
        width: AppTheme.fullWidth(context) * .3,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(4, 4),
              blurRadius: 10,
              color: LightColor.grey.withOpacity(.3),
            )
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Container(
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: -20,
                  left: -20,
                  child: CircleAvatar(
                    backgroundColor: color,
                    radius: 60,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Flexible(
                      child: Text(title, style: titleStyle).hP8,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: Text(
                        subtitle,
                        style: subtitleStyle,
                      ).hP8,
                    ),
                  ],
                ).p16
              ],
            ),
          ),
        ).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );
  }

  Widget _doctorsList() {
    return SliverList(
      delegate: SliverChildListDelegate(
        [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Top Doctors", style: TextStyles.title.bold),
              IconButton(
                  icon: Icon(
                    Icons.sort,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {})
              // .p(12).ripple(() {}, borderRadius: BorderRadius.all(Radius.circular(20))),
            ],
          ).hP16,
         // getdoctorWidgetList()
        ],
      ),
    );
  }

  Widget getdoctorWidgetList(Size size) {
    return Column(
        children: regCtrl.tempserviceList.map((x) {
      return _doctorTile(x,size);
    }).toList());
  }

  Widget banner(){

    return   Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(10),
      height: 170,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/cleaning.jpg',
          ),
          fit: BoxFit.fitWidth,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hurry Up',
            style: TextStyle(
              color: LightColor.kPrimaryBlue,
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Book',
                style: TextStyle(
                  color: LightColor.kPrimaryBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Your Test',
                style: TextStyle(
                  color: Color(0xffe2345d),
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(

            style: ElevatedButton.styleFrom(
                shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(35.0)), primary:  Color(0xff040f48), elevation: 5),
            onPressed: () {},
            child: const Text(
              'Book now',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _doctorTile(SubShow model, Size size) {
    return GestureDetector(onTap: () {
      Get.to(ServiceproviderScreen(id:model.serviceId,mainid:model.subServiceId,mainSer :widget.label,subser: model.subService ));
    },child:
      Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 10,
            color: LightColor.grey.withOpacity(.2),
          ),
          BoxShadow(
            offset: Offset(-3, 0),
            blurRadius: 15,
            color: LightColor.grey.withOpacity(.1),
          )
        ],
      ),
      child:
      Container(
        height: 200,
        padding: EdgeInsets.symmetric(vertical: 8),
        child:
        Row(children: [
          Container(
            height: 200,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                    image:
                    NetworkImage(ApiConstants().imagebaseUrl+model.image),
                    fit: BoxFit.cover
                )
            ),

          ),
          SizedBox(width: 5,),
          Expanded(child:
          Text(model.subService, style: TextStyles.title.bold)),
         /* Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Theme.of(context).primaryColor,)*/

            ],)

       /* ListTile(
          contentPadding: EdgeInsets.all(0),
          leading:  ,

          title: Text(model.subService, style: TextStyles.title.bold),

          trailing:
            Icon(
              Icons.keyboard_arrow_right,
              size: 30,
              color: Theme.of(context).primaryColor,
            ),

        ),
      ).ripple(
        () {
           Get.to(ServiceproviderScreen(id:model.serviceId));
        },
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),*/
    )));
  }

  Color randomColor() {
    var random = Random();
    final colorList = [
      Theme.of(context).primaryColor,
      LightColor.orange,
      LightColor.green,
      LightColor.grey,
      LightColor.lightOrange,
      LightColor.skyBlue,
      LightColor.titleTextColor,
      Colors.red,
      Colors.brown,
      LightColor.purpleExtraLight,
      LightColor.skyBlue,
    ];
    var color = colorList[random.nextInt(colorList.length)];
    return color;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GetBuilder<ServiceProviderController>(builder: (_) {
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
        return Scaffold(
          appBar: buildBar(context),
          backgroundColor: Theme
              .of(context)
              .backgroundColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await launch ("tel:+917080909046");

            },
            child: Icon(Icons.call, color: Colors.white, size: 29,),
            backgroundColor: Colors.blue,
            tooltip: 'Help',
            elevation: 5,
            splashColor: Colors.grey,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    getdoctorWidgetList(size)
                  ],
                ),
              ),
              // _doctorsList()
            ],
          ),

        );
      }
      });

  }
}
