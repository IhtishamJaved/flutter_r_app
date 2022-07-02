import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../contant/colors.dart';
import '../../../../contant/sizeconfig.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24 * SizeConfig.heightMultiplier,
      decoration: const BoxDecoration(color: Color(0xffEDF2FF)),
      child: Column(
        children: [
          Container(
            height: 6.5 * SizeConfig.heightMultiplier,
            margin: EdgeInsets.symmetric(
                horizontal: 4 * SizeConfig.widthMultiplier,
                vertical: 1.5 * SizeConfig.heightMultiplier),
            padding: EdgeInsets.only(
              left: 4 * SizeConfig.widthMultiplier,
              top: 0.3 * SizeConfig.heightMultiplier,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.black12,
                width: 1,
              ),
            ),
            child: TextField(
              cursorColor: Colors.black12,
              cursorWidth: 1,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.search,
                  size: 3 * SizeConfig.textMultiplier,
                ),
                hintText: "Search Appointment",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontFamily: "Quicksand",
                  fontSize: 2 * SizeConfig.textMultiplier,
                  color: Colors.black12,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.week,
            pageJumpingEnabled: true,
            calendarStyle: const CalendarStyle(
              markerDecoration: BoxDecoration(
                color: primarycolor,
              ),
              todayDecoration: BoxDecoration(
                color: primarycolor,
                shape: BoxShape.circle,
              ),
              defaultTextStyle:
                  TextStyle(color: Color.fromRGBO(91, 105, 116, 1)),
              //  cellMargin: EdgeInsets.only(left: 4 * SizeConfig.widthMultiplier),
            ),
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(
              leftChevronPadding:
                  EdgeInsets.only(left: 10 * SizeConfig.widthMultiplier),
              headerMargin:
                  EdgeInsets.only(bottom: 1 * SizeConfig.heightMultiplier),
              leftChevronVisible: false,
              rightChevronVisible: false,
              formatButtonShowsNext: false,
              headerPadding:
                  EdgeInsets.only(left: 2 * SizeConfig.widthMultiplier),
              formatButtonVisible: false,
              titleTextStyle: TextStyle(
                  color: textcolor,
                  fontSize: 2.3 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Quicksand"),
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(
                  color: textcolor, fontSize: 2 * SizeConfig.textMultiplier),
              weekdayStyle: TextStyle(
                  color: textcolor, fontSize: 1.8 * SizeConfig.textMultiplier),
            ),
          ),
        ],
      ),
    );
  }
}
