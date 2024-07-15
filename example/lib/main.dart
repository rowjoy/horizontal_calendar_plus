// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:horizontal_calendar_plus/horizontal_calendar_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HorizantalCalenderPlusView(),
    );
  }
}

class HorizantalCalenderPlusView extends StatefulWidget {
  const HorizantalCalenderPlusView({super.key});

  @override
  State<HorizantalCalenderPlusView> createState() => _HorizantalCalenderPlusState();
}
class _HorizantalCalenderPlusState extends State<HorizantalCalenderPlusView> {

  final ValueNotifier<DateTime> _currentDateNotifier = ValueNotifier(DateTime.now());
  ScrollController? scrollController = ScrollController();

  @override
  void initState() {
    HorizontalCalendarPlus.startDateTimeUpdater(_currentDateNotifier);
    HorizontalCalendarPlus.jumpToCurrentIndex(scrollController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
             Container(
               height: 120,
               child: HorizontalCalendarPlus(
                currentDateNotifier: _currentDateNotifier, 
                padding: EdgeInsets.only(top: 15,left: 8,right: 8),
                scrollController: scrollController,
                calenderLabelformate: CalenderDateFormate.ABBR_WEEKDAY,
                calenderSubTitleformate: CalenderDateFormate.MONTH_DAY,
                designTypeCalender: DesignTypeCalender.DEFAULTDESIGN,
                boxelevation: 5,
                boxActiveBgColor: Colors.green,
                boxborderRadius: BorderRadius.circular(1),
                changelanguage: Changelanguage.NAPILE,
                cardViewDesign: CardContentView(
                  hideIcon: false,
                  // titletextActiveColor: Colors.red,
                  // titletextUnActiveColor: Colors.greenAccent,
                ),
              ),
             ),

             SizedBox(height: 20,),
             Container(
               height: 120,
               child: HorizontalCalendarPlus(
                currentDateNotifier: _currentDateNotifier, 
                padding: EdgeInsets.only(top: 15,left: 8,right: 8),
                scrollController: scrollController,
                calenderLabelformate: CalenderDateFormate.ABBR_WEEKDAY,
                calenderSubTitleformate: CalenderDateFormate.MONTH_DAY,
                designTypeCalender: DesignTypeCalender.CUSTOMDESIGN,
                boxelevation: 5,
                boxActiveBgColor: Colors.green,
                boxborderRadius: BorderRadius.circular(1),
                changelanguage: Changelanguage.NAPILE,
                cardViewDesign: CardContentView(
                  hideIcon: false,
                  titletextActiveColor: Colors.red,
                  titletextUnActiveColor: Colors.greenAccent,
                ),
                customWidgetbuilder: (context, dateTime, index) {
                  // return Text("hello ${index!}");
                  final packageCore = PackageCore(builderIndex: index, dateTime: dateTime, countPreviesDate: 3);
                  return Card(
                      color:  packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ?  Colors.red :  Colors.white,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        side: packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ? BorderSide(width: 2,color: Colors.green) : BorderSide(width: 1,color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadowColor: Colors.black,
                      borderOnForeground: true,
                      margin: EdgeInsets.all(2),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text( // Label 
                            packageCore.showTitle(CalenderDateFormate.MONTH_DAY.skeleton),
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                          ),
                          Text( // SubTitle text 
                            packageCore.showSubTitle(CalenderDateFormate.WEEKDAY.skeleton), 
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                },
              ),
             ),
          ],
        ),
      ),
    );
  }
}




