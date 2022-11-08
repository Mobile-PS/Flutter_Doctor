import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_health_care_app/controllers/docdetails_screen_controller.dart';
import 'package:flutter_health_care_app/controllers/home_screen_controller.dart';
import 'package:flutter_health_care_app/model/category_json.dart';
import 'package:flutter_health_care_app/model/doctor_model.dart';
import 'package:flutter_health_care_app/model/data.dart';
import 'package:flutter_health_care_app/model/search_data_model.dart';
import 'package:flutter_health_care_app/screens/Subservice_screen.dart';
import 'package:flutter_health_care_app/screens/cart_screen.dart';
import 'package:flutter_health_care_app/screens/drawer_widget.dart';
import 'package:flutter_health_care_app/screens/generalsurgey_service_screen.dart';
import 'package:flutter_health_care_app/screens/gynace_service_screen.dart';
import 'package:flutter_health_care_app/screens/mri_service_screen.dart';
import 'package:flutter_health_care_app/screens/orthopedic_service_screen.dart';
import 'package:flutter_health_care_app/screens/service_card.dart';
import 'package:flutter_health_care_app/screens/serviceprovider_screen.dart';
import 'package:flutter_health_care_app/screens/sonography_service_screen.dart';
import 'package:flutter_health_care_app/screens/sub_service_screen.dart';
import 'package:flutter_health_care_app/screens/urosurgey_service_screen.dart';
import 'package:flutter_health_care_app/screens/xray_service_screen.dart';
import 'package:flutter_health_care_app/theme/light_color.dart';
import 'package:flutter_health_care_app/theme/text_styles.dart';
import 'package:flutter_health_care_app/theme/extention.dart';
import 'package:flutter_health_care_app/theme/theme.dart';
import 'package:flutter_health_care_app/utilities/common.dart';
import 'package:flutter_health_care_app/utilities/progress_widget.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:url_launcher/url_launcher.dart';

/*
Title:HomePageScreen
Purpose:HomePageScreen
Created By:Kalpesh Khandla
Created Date: 30 April 2021
*/

class HomePageScreen extends StatefulWidget {
  HomePageScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageScreen> {
  List<DoctorModel> doctorDataList;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final regCtrl = Get.put(HomeScreenController());
  final con = Get.put(DocDetailsController());


  @override
  void initState() {
    doctorDataList = doctorMapList.map((x) => DoctorModel.fromJson(x)).toList();
    super.initState();
  }

  Widget _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
      leading: IconButton(
        icon: Icon(Icons.short_text,size: 30,),
        color: Colors.black,
        onPressed: () => _scaffoldKey.currentState.openDrawer(),
      ),
     /* title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text('Welcome',style: TextStyle(color: Colors.black)),
        Text('Al Mulla Insurance Brokerage',style: TextStyle(color: Colors.black),)
      ]),*/
      actions: <Widget>[

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
       /* Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.notifications_none,
              size: 30,
              color: LightColor.grey,
            )),*/
        /* ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(13)),
          child: Container(
            // height: 40,
            // width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
            ),
            child: Image.asset("assets/user.png", fit: BoxFit.fill),
          ),
        ).p(8),*/
      ],

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
    /*return Container(
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
    );*/

    return
      GestureDetector(
      onTap: () {},
      child:
      Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 50.0,
        padding: const EdgeInsets.all(8),
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
        child:
        Row(
          children: [
            const SizedBox(width: 5),
            Icon(Icons.search,size: 18),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  // controller: profileCtrl.skillcontroller,
                  cursorColor: Colors.black54,
                  textInputAction: TextInputAction.search,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for your service here',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0,
                        fontFamily: 'Nunito Sans'),
                  ),
                ),
                suggestionsCallback: (pattern) {
                  //  profileCtrl.getSkilldata("1.0", pattern);
                  //  return profileCtrl.skillList;
                  // return _dynamicChips;
                  return regCtrl.SearchData(pattern);
                },
                itemBuilder: (context, Show suggestion) {
                  return Container(
                    height: 40,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.all(2),
                    child: SubstringHighlight(
                      text: suggestion.name != null?suggestion.name:'',
                      term: suggestion.name != null?suggestion.name:'',
                      textStyle: const TextStyle(
                        color: Colors.black54,
                      ),
                      textStyleHighlight: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  );
                },
                onSuggestionSelected: ( Show suggestion) {
                  //  profileCtrl.updateSkill(suggestion);
                  //  profileCtrl.skillcontroller.clear();

                  if(suggestion.type == "service") {

                    con.servID = suggestion.subServiceId;
                    con.subServId = suggestion.subServiceId1;
                   // con.subServname = suggestion.subService;
                   // con.servName = suggestion.subService;


                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            SubServiceScreen1(id: suggestion.subServiceId,label:suggestion.name),
                      ),
                    );

                  }else {
                    if (suggestion.type == "subservice") {
                      con.servID = suggestion.subServiceId;
                      con.subServId = suggestion.subServiceId1;
                      //  con.subServname = suggestion.subService;
                      //  con.servName = suggestion.subService;

                      Get.to(ServiceproviderScreen(
                          id: suggestion.subServiceId,
                          mainid: suggestion.subServiceId1));
                    }
                    else{
                      if (suggestion.type == "hospital") {
                        con.servID = suggestion.subServiceId;
                        con.subServId = suggestion.subServiceId1;


                      }

                      }
                  }

                  hideKeyBoard();
                },
              ),
            ),
            CircleAvatar(
              radius: 10,
              backgroundColor: const Color.fromRGBO(200, 200, 200, 1),
              child: IconButton(
                onPressed: () {
                  // profileCtrl.skillcontroller.clear();
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                },
                constraints: const BoxConstraints(),
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _category() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Category", style: TextStyles.title.bold),

            ],
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 7/8
            ),
            physics: ScrollPhysics(),
            itemCount: regCtrl.categoryDataModel.show.length,
            itemBuilder: (BuildContext context, int index) {
              return  ServiceCard(
                  icon: regCtrl.categoryDataModel.show[index].serviceImage, label: regCtrl.categoryDataModel.show[index].service,id: regCtrl.categoryDataModel.show[index].id,);

              /*return _categoryCardWidget(
                "CT",
                "Scan",
                color: Colors.white,
                lightColor: LightColor.lightGreen,
              );*/
            })
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
          getdoctorWidgetList()
        ],
      ),
    );
  }

  Widget getdoctorWidgetList() {
    return Column(
        children: doctorDataList.map((x) {
      return _doctorTile(x);
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
            'assets/banner1.jpg',
          ),
          fit: BoxFit.fitWidth,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      /*child: Column(
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
          RaisedButton(
            padding: EdgeInsets.symmetric(horizontal: 30),
            color: Color(0xff040f48),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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
      ),*/
    );
  }

  Widget _doctorTile(DoctorModel model) {
    return Container(
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
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: randomColor(),
              ),
              child: Image.asset(
                model.image,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
          title: Text(model.name, style: TextStyles.title.bold),
          subtitle: Text(
            model.type,
            style: TextStyles.bodySm.subTitleColor.bold,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            size: 30,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ).ripple(
        () {
          // Navigator.pushNamed(context, "/DetailPage", arguments: model);
        },
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
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
    return GetBuilder<HomeScreenController>(builder: (_) {
      if (regCtrl.loading)
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
      else {
        return Scaffold(
          key: _scaffoldKey,
          appBar: _appBar(),
          drawer: DrawerWidget(),
          backgroundColor: Theme
              .of(context)
              .backgroundColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {

              await launch ("tel:+917080909046");

            },
            child: Icon(Icons.call, color: Colors.white, size: 29,),
            backgroundColor: Colors.blue,
            elevation: 5,
            splashColor: Colors.grey,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _searchField(),
                    SizedBox(height: 10,),
                    banner(),
                    SizedBox(height: 10,),
                    _category(),
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
