import 'package:flutter/material.dart';
import 'package:school_management/Widgets/Attendance/OverAllAttendanceCard.dart';

class OverallAttendance extends StatefulWidget {
  @override
  _OverallAttendanceState createState() => _OverallAttendanceState();
}

class _OverallAttendanceState extends State<OverallAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        OverallAttendanceCard(
          date: "17.03.2022",
          day: "Thursday",
          firsthalf: true,
          secondhalf: true,
        ),
         OverallAttendanceCard(
          date: "15.03.2022",
          day: "Tuesday",
          firsthalf: true,
          secondhalf: true,
        ),
         OverallAttendanceCard(
          date: "14.03.2022",
          day: "Monday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "16.03.2022",
          day: "Wednesday",
          firsthalf: true,
          secondhalf: true,
        ),
        OverallAttendanceCard(
          date: "12.02.2022",
          day: "Saturday",
          firsthalf: true,
          secondhalf: true,
        ),
        OverallAttendanceCard(
          date: "12.03.2022",
          day: "Thursday",
          firsthalf: true,
          secondhalf: true,
        ),
        OverallAttendanceCard(
          date: "28.02.2022",
          day: "Monday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "11.03.2022",
          day: "Saturday",
          firsthalf: true,
          secondhalf: false,
        ),
        OverallAttendanceCard(
          date: "10.03.2022",
          day: "Tuesday",
          firsthalf: true,
          secondhalf: true,
        ),
        OverallAttendanceCard(
          date: "03.03.2022",
          day: "Friday",
          firsthalf: true,
          secondhalf: true,
        ),
        OverallAttendanceCard(
          date: "07.03.2022",
          day: "Wednesday",
          firsthalf: true,
          secondhalf: true,
        ),
      ],),
    );
  }
}