<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Flutter Horizantal calender plaus package . You easy to handel Horizantal calender . Always highlight current index you can change and modify it

## Features
   1. Multiple country languages [HINDI, BANGLA, NAPILE, ENGLISH]
   2. DEFAUL show english 
   3. Use coustom design  widget build Horizantal Calender
   4. Access & Manage all function 
   5. Always highlight current index you can change and modify it

## Getting started

- [x]  Add this package your yaml file 

```dart 
  dependencies: 
    horizontal_calendar_plus: 0.0.2
```

## Usage

```dart 
  @override
  void initState() {
    super.initState();
    // Start date time updater  
    HorizontalCalendarPlus.startDateTimeUpdater(_currentDateNotifier);

    //Always highlight current index
    HorizontalCalendarPlus.jumpToCurrentIndex(scrollController);
  }

```


```dart 

    HorizontalCalendarPlus(
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
        ),
        
    ),

```


# Build Custom Widget

```dart 
    designTypeCalender: DesignTypeCalender.CUSTOMDESIGN
    customWidgetbuilder: (context, dateTime, index) {
    final packageCore = PackageCore(builderIndex: index, dateTime: dateTime, countPreviesDate: 3);
    return Card(
        color:  packageCore.dateFormatePlus() == packageCore.checkCurrentDate() ?  Colors.green :  Colors.black,
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
        
```






# Change Calender Date Formate & Card Content
```dart 
  // add [skeleton] return String 
  CalenderDateFormate.WEEKDAY.skeleton,
  CalenderDateFormate.MONTH_DAY.skeleton,

  // Card Content update card ui design 
   CardContent 
```








# Package UI view 

<td> 
 <img src="https://github.com/user-attachments/assets/9c59d834-96d3-4b12-aa89-47fdca51cb4c" width="300" height="400" alt = "Horizantal Calender plus">
</td>



## Next Goals 
 - [x] Add  more country Multiple country languages [HINDI, BANGLA, NAPILE, ENGLISH] 
 - [x] Issue solved & improve 
 - [x] Add more design template 



# horizontal_calendar_plus
