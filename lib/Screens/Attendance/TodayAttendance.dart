import 'package:flutter/material.dart';
import 'package:school_management/Widgets/Attendance/AttendanceCard.dart';

class TodayAttendance extends StatefulWidget {
  @override
  _TodayAttendanceState createState() => _TodayAttendanceState();
}

class _TodayAttendanceState extends State<TodayAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         AttendanceCard(attendance: true,
         endtime: "9:20 AM",
         staff: "Vinay Sir",
         starttime: "8:30 AM",
         subject: "Data Structures",
         ),
         AttendanceCard(attendance: false,
         endtime: "10:10 AM",
         staff: "Stella Ma'am",
         starttime: "9:20 AM",
         subject: "CO",
         ),
          
        ],
      ),
    );
  }
}
