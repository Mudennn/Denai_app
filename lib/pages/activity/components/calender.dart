import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:denai_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'add_activity_button.dart';
import '../../activity_form/add_activity_form.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: const TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Today",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: headingColor),
                ),
              ],
            ),
            AddActivityButton(
              press: () => Navigator.pushNamed(context, AddActivityForm.routeName),
              title: 'Add Activity',
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: DatePicker(
            DateTime.now(),
            height: 100,
            width: 65,
            initialSelectedDate: DateTime.now(),
            selectionColor: buttonColor,
            selectedTextColor: Colors.white,
            dateTextStyle:  const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.grey, fontFamily: "assets/fonts/muli/Muli.ttf" ),
            dayTextStyle:   const TextStyle(fontSize: 12,color: Colors.grey, fontFamily: "assets/fonts/muli/Muli.ttf" ),
            monthTextStyle: const TextStyle(fontSize: 12,color: Colors.grey, fontFamily: "assets/fonts/muli/Muli.ttf" ),
            onDateChange: (date){
              selectedDate = date;
            },
          ),
        )
      ],
    );
  }
}
