import 'package:flutter/material.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/home_page.dart';
import 'package:mini_project_mobile_app/Screens/HomePage/user_selection_page.dart';
import 'package:mini_project_mobile_app/Screens/ParentAccount/OTP_verified.dart';
import 'package:mini_project_mobile_app/Screens/ParentAccount/login_page.dart';
import 'package:mini_project_mobile_app/Screens/ParentAccount/parent_profile.dart';
import 'package:mini_project_mobile_app/Screens/Homework&Assignments/homework_&_assignments.dart';
import 'package:mini_project_mobile_app/Screens/Homework&Assignments/homework.dart';
import 'package:mini_project_mobile_app/Screens/Homework&Assignments/assignments.dart';
import 'package:mini_project_mobile_app/Screens/MarksOfQuizzes&Exams/marks_of_quizzes_&_exams.dart';
import 'package:mini_project_mobile_app/Screens/MarksOfQuizzes&Exams/marks_of_quizzes.dart';
import 'package:mini_project_mobile_app/Screens/MarksOfQuizzes&Exams/marks_of_exams.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/assignments2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/homework2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/Homework&Assignments/homework_&_assignments2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/notification2.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teacher_profile.dart';
import 'package:mini_project_mobile_app/Screens/Updates/updates.dart';
import 'package:mini_project_mobile_app/Screens/Updates/events.dart';
import 'package:mini_project_mobile_app/Screens/Updates/holidays.dart';
import 'package:mini_project_mobile_app/Screens/Updates/extra_classes.dart';
import 'package:mini_project_mobile_app/Screens/Attendance/attendance_report.dart';
import 'package:mini_project_mobile_app/Screens/ParentAccount/forgot_password.dart';
import 'package:mini_project_mobile_app/Screens/ParentAccount/verify_code.dart';
import 'package:mini_project_mobile_app/Screens/notifications.dart';
import 'package:mini_project_mobile_app/Screens/recommandations.dart';
import 'package:mini_project_mobile_app/Screens/Progress.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teachers_verify_code.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teachers_OTP_verified.dart';
import 'package:mini_project_mobile_app/Screens/TeachersAccount/teachers_login_page.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        // '/one': (context) => LoadingScreen(),
        '/two': (context) => UserSelectionPage(),
        '/three': (context) => ParentProfile(),
        '/four': (context) => HomeworkAndAssignments(),
        '/five': (context) => Homework(),
        '/six': (context) => Assignments(),
        '/seven': (context) => MarksOfQuizzesAndExams(),
        '/eight': (context) => MarksOfQuizzes(),
        '/nine': (context) => MarksOfExams(),
        '/ten': (context) => Updates(),
        '/eleven': (context) => Events(),
        '/twelve': (context) => Holidays(),
        '/thirteen': (context) => ExtraClasses(),
        '/fourteen': (context) => AttendanceReport(),
        '/fifteen': (context) => ForgotPassword(),
        '/sixteen': (context) => VerifyCode(),
        '/seventeen': (context) => LoginPage(),
        '/eighteen': (context) => VerifiedOTP(),
        '/nineteen': (context) => Notifications(),
        '/twenty': (context) => Recommendations(),
        '/twenty_one': (context) => Progress(),
        '/twenty_two': (context) => VerifyCode2(),
        '/twenty_three': (context) => VerifiedOTP2(),
        '/twenty_four': (context) => LoginPage2(),
        '/twenty_five': (context) => Notifications2(),
        '/twenty_six': (context) => TeacherProfile(),
        '/twenty_seven': (context) => HomeworkAndAssignments2(),
        '/twenty_eight': (context) => Homework2(),
        '/twenty_nine': (context) => Assignments2(),

        
        




        


      },
    );
  }
}

