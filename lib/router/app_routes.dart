import 'package:yoga_student_app/classroom_modules/classroom_view.dart';
import 'package:yoga_student_app/student_login_modules/register_module/register_controller.dart';
import 'package:yoga_student_app/student_login_modules/register_module/register_view.dart';

import '../student_login_modules/student_login_view.dart';
import 'app_pages.dart';
import 'package:get/get.dart';

class AppPages {

  static final routes = [
    GetPage(
      name: AppRoutes.login,
      page: () => StudentLoginView(),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterView(),
    ),
    GetPage(
      name: AppRoutes.classroom,
      page: () => ClassroomView(),
    ),
    //
    // GetPage(
    //   name: AppRoutes.teacherRegister,
    //   page: () => TeacherRegisterView(),
    // ),
    //
    // GetPage(
    //   name: AppRoutes.joinClass,
    //   page: () => JoinClassView(),
    // ),
  ];
}