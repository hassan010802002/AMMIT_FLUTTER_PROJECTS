import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';

class Car_Services_Controller extends GetxController {
  List<DateTime?>? selectedDate;
  var selectedTime;
  RxString? date =
      DateFormat("yyyy-MM-dd").format(DateTime.now()).toString().obs;
  RxString? currentTime =
      DateFormat("hh:mm:ss").format(DateTime.now()).toString().obs;
  BuildContext context;
  RxString normalWashing = "".obs;
  RxString perfeiumSpray = "".obs;

  Car_Services_Controller(this.context);

  Future<List<DateTime?>?> selectDatePicker(context) async {
    List<DateTime?>? value = await showCalendarDatePicker2Dialog(
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(
          selectedDayHighlightColor: Color(0xff0B3FA8),
          calendarType: CalendarDatePicker2Type.single,
          calendarViewMode: DatePickerMode.day,
          cancelButtonTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
          dayBorderRadius: BorderRadius.circular(25.0),
          closeDialogOnCancelTapped: true,
          closeDialogOnOkTapped: true,
          centerAlignModePicker: true,
          currentDate: DateTime.now(),
          firstDate: DateTime(1990),
          gapBetweenCalendarAndButtons: 8.0,
          firstDayOfWeek: 6,
          lastDate: DateTime(2100, 12, 1),
          okButtonTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
          ),
          // selectedDayHighlightColor: Color(0xff0B3FA8),
          yearBorderRadius: BorderRadius.circular(20.0),
          selectedDayTextStyle: TextStyle(
            color: Colors.limeAccent,
            fontSize: 24.0,
            fontWeight: FontWeight.w800,
          ),
          dayTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
          yearTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
          selectedYearTextStyle: TextStyle(
            color: Colors.limeAccent,
            fontSize: 24.0,
            fontWeight: FontWeight.w800,
          ),
          weekdayLabelTextStyle: TextStyle(
            color: Colors.black45,
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
          todayTextStyle: TextStyle(
            color: Colors.limeAccent,
            fontSize: 24.0,
            fontWeight: FontWeight.w800,
          )),
      dialogSize: Size(450, 600),
      borderRadius: BorderRadius.circular(15.0),
      dialogBackgroundColor: Color(0xffC5D4F5),
    );
    return value;
  }

  selectTimePicker(context) {
    Navigator.of(context).push(showPicker(
      value: Time(hour: DateTime.now().hour, minute: DateTime.now().minute , second: 59),
      onChange: (newTime) {
        currentTime!.value = "${newTime.hour}:${newTime.minute}:${newTime.second}:${newTime.period.name}";
      },
      borderRadius: 15.0,
      elevation: 5.0,
      width: 420,
      height: 360,
      context: context,
      dialogInsetPadding: EdgeInsets.all(20.0),
      buttonsSpacing: 8.0,
      showSecondSelector: true,
      iosStylePicker: true,
      blurredBackground: true,
      cancelStyle: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: Color(0xff0B3FA8),
      ),
      is24HrFormat: true,
      minHour: 0,
      maxHour: 23,
      maxMinute: 59,
      minMinute: 0,
      minSecond: 0,
      maxSecond: 59,
      accentColor: Colors.indigoAccent,
      unselectedColor: Colors.blueGrey,
      okStyle: TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: 18.0,
        color: Color(0xff0B3FA8),
      ),
    ));
  }

  void datePickerOnTap() async {
    selectedDate = await selectDatePicker(context).then((value) => value);
    date!.value = DateFormat("yyyy-MM-dd").format(selectedDate![0]!).toString();
  }

  void timePickerOnTap() {
    selectedTime = selectTimePicker(context);
    print(selectedTime);
    currentTime!.value =
        DateFormat("HH : MM : ss").format(selectedTime).toString();
  }

  void NormalWashingOnChange(String? value){
    normalWashing.value = value!;
  }

  void PerfeiumSprayOnChange(String? value){
    perfeiumSpray.value = value!;
  }

  void Navigate(dynamic page){
    Get.toNamed(page);
  }
}
