import 'package:denai_app/constant.dart';
import 'package:denai_app/pages/activity_form/components/input_field.dart';
import 'package:denai_app/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime selectedDate = DateTime.now();
  String startTime = DateFormat('hh:mm a').format(DateTime.now()).toString();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add Activity",
              style: TextStyle(
                  fontSize: 22,
                  color: headingColor,
                  fontWeight: FontWeight.bold),
            ),
            // -- TITLE -- //
            const InputField(
              title: "Title",
              hint: "Enter your title",
            ),
            // -- DESCRIPTION -- //
            const InputField(
              title: "Description",
              hint: "Enter your description",
            ),
            // -- DATE -- //
            InputField(
              title: "Date",
              hint: DateFormat.yMd().format(selectedDate),
              widget: IconButton(
                onPressed: () {
                  getDateFromUser();
                },
                icon: const Icon(Icons.calendar_today_outlined),
                color: Colors.grey,
              ),
            ),
            // -- TIME -- //
            InputField(
              title: "Time",
              hint: startTime,
              widget: IconButton(
                onPressed: () {
                  getTimeFromUser(isStartTime: true);
                },
                icon: const Icon(Icons.watch_later_outlined, color: Colors.grey,),
              ),
            )
          ],
        ),
      ),
    );
  }

// -- GET TIME -- //
  getTimeFromUser({required bool isStartTime}) {
 var pickedTime = _showTimePicker(context);
 String formatedTime = pickedTime.format(context);
 if(isStartTime == true && pickedTime != null) {
  startTime = formatedTime;
 } else{
  print('Time Canceled');
 };
//  if(pickedTime == null) {
//   print('Time canceled');
//  } else if (isStartTime == true) {
//     startTime  = formatedTime;
//  } 
}

_showTimePicker(context) {
  return showTimePicker(
    initialEntryMode: TimePickerEntryMode.input,
    context: context, initialTime: const TimeOfDay(hour: 9, minute: 10) );
}

// GET DATE //
getDateFromUser() async {
  DateTime? pickerDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2015),
    lastDate: DateTime(2123),
  );

  if (pickerDate != null) {
    setState((){
selectedDate = pickerDate;  
    }); 

    
  } else {
    print("Something is wrong");
  }
}

}



