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

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.


# Horizantal Calender plus 
   1. Multiple country languages [HINDI, BANGLA, NAPILE, ENGLISH]
   2. DEFAUL show english 
   3. Use coustom design  widget build Horizantal Calender
   4. Access & Manage all function 
   5. Always highlight current index you can change and modify it

```dart 

  @override
  void initState() {
    super.initState();
    HorizontalCalendarPlus.startDateTimeUpdater(_currentDateNotifier);
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
        // titletextActiveColor: Colors.red,
        // titletextUnActiveColor: Colors.greenAccent,
        ),
        /*
        customWidgetbuilder: (context, dateTime, index) {
        // return Text("hello ${index!}");
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
        */
    ),

```




```dart 

Text(
    packageCore!.showTitle(calenderLabelformate!.skeleton),
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: isCurrentDate! ?  cardViewDesign!.titletextActiveColor : cardViewDesign!.titletextUnActiveColor ),
    ),
Text( 
    packageCore!.showSubTitle(calenderSubTitleformate!.skeleton), 
     style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: isCurrentDate! ?  cardViewDesign!.subTitletextActiveColor : cardViewDesign!.subtitletextUnActiveColor),
),


```

<td> 
 <img src="https://github.com/user-attachments/assets/9c59d834-96d3-4b12-aa89-47fdca51cb4c" alt = "Horizantal Calender plus">
</td>



## Next Goals 
 - [x] Add  more country Multiple country languages [HINDI, BANGLA, NAPILE, ENGLISH] 
 - [x] Issue solved & improve 
 - [x] Add more design template 



# horizontal_calendar_plus
