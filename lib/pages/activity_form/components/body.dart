import 'package:denai_app/constant.dart';
import 'package:denai_app/pages/activity/activity_page.dart';
import 'package:denai_app/pages/activity_form/add_activity_form.dart';
import 'package:denai_app/pages/activity_form/components/input_field.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../activity/components/add_activity_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // DateTime selectedDate = DateTime.now();
  String startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2022, 11, 5), end: DateTime(2130, 11, 5));

  @override
  Widget build(BuildContext context) {
    // final start = dateRange.start;
    // final end = dateRange.end;

    return 
    SafeArea(child: 
    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   "Add Activity",
            //   style: TextStyle(
            //       fontSize: 22,
            //       color: headingColor,
            //       fontWeight: FontWeight.bold),
            // ),
            // -- TITLE -- //
            InputField(
              title: "Title",
              hint: "Enter your title",
              height: 54,
              controller: titleController,
            ),
            
            // InputField(
            //   title: "Date",
            //   height: 54,
            //   hint: DateFormat.yMd().format(selectedDate),
            //   widget: IconButton(
            //     onPressed: () {
            //       getDateFromUser();
            //     },
            //     icon: const Icon(Icons.calendar_today_outlined),
            //     color: Colors.grey,
            //   ),
            // ),
            // -- START AND END DATE -- //
            Row(
              children: [
                Expanded(
                  child: InputField(
                    title: "Start Date",
                    height: 54,
                    hint: DateFormat('dd/MM/yyyy').format(dateRange.start),
                    widget: IconButton(
                      onPressed: () {
                        pickDateRange();
                      },
                      icon: const Icon(Icons.calendar_today_outlined),
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 14,
                ),
                Expanded(
                  child: InputField(
                    title: "End Date",
                    height: 54,
                    hint: DateFormat('dd/MM/yyyy').format(dateRange.end),
                    // widget: IconButton(
                    //   onPressed: () {
                    //     pickDateRange();
                    //   },
                    //   icon: const Icon(Icons.calendar_today_outlined),
                    //   color: Colors.grey,
                    // ),
                  ),
                ),
              ],
            ),
            // -- TIME -- //
            InputField(
              title: "Time",
              height: 54,
              hint: startTime,
              widget: IconButton(
                onPressed: () {
                  getTimeFromUser(isStartTime: true);
                },
                icon: const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
            // -- DESCRIPTION -- //
            InputField(
              title: "Description",
              hint: "Enter your description",
              controller: descriptionController,
              height: 100,
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            AddActivityButton(
                title: 'Create Activity', press: () => validateData())
          ],
        ),
      ),
    )
    
    );
    
  }

  validateData() {
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      // add to database
      // back to previous page
      Navigator.pushNamed(context, ActivityPage.routeName);
    } else if (titleController.text.isEmpty ||
        descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: const [
              Icon(
                Icons.warning_amber_outlined,
                color: Colors.red,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "All fields are required!",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          showCloseIcon: true,
          closeIconColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

// -- GET TIME -- //
  getTimeFromUser({required bool isStartTime}) async {
    var pickedTime =
        await _showTimePicker(context); // kene letak await untuk future
    String formatedTime = pickedTime.format(context);
    if (isStartTime == true && pickedTime != null) {
      setState(() {
        startTime = formatedTime;
      });
    } else {
      if (kDebugMode) {
        print('Time Canceled');
      }
    }
//  if(pickedTime == null) {
//   print('Time canceled');
//  } else if (isStartTime == true) {
//     startTime  = formatedTime;
//  }
  }

  _showTimePicker(context) {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
            hour: int.parse(startTime.split(":")[0]),
            minute: int.parse(startTime.split(":")[1].split(" ")[0])));
  }

// GET DATE //
  // getDateFromUser() async {
  //   DateTime? pickerDate = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2015),
  //     lastDate: DateTime(2123),
  //   );

  //   if (pickerDate != null) {
  //     setState(() {
  //       selectedDate = pickerDate;
  //     });
  //   } else {
  //     if (kDebugMode) {
  //       print("Something is wrong");
  //     }
  //   }
  // }

// GET RANGE DATE //
  pickDateRange() async {
   DateTimeRange? newDateRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2015),
      lastDate: DateTime(2123),
      builder: (context, child) {
        return Theme(data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
            primary: buttonColor,
            onPrimary: Colors.white,
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(foregroundColor: buttonColor)
          )
        ), child: child!);
      },
    );
    if(newDateRange == null) return;

    setState(() {
      dateRange = newDateRange;
    });
  }
}
