import 'package:flutter/material.dart';
import 'package:flutter_easyrefresh/easy_refresh.dart';
import 'package:get/get.dart';
import 'package:yoga_student_app/classroom_modules/clssroom_controller.dart';
import 'package:yoga_student_app/common/app_theme.dart';
import 'package:yoga_student_app/common/colors.dart';
import 'package:yoga_student_app/components/gradient_button.dart';

class ClassroomView extends GetView{


  @override
  final ClassroomController controller = Get.put(ClassroomController());

   ClassroomView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GetBuilder<ClassroomController>(builder: (_){
        return SafeArea(child: Stack(
          children: [

            Container(
              color: AppColor.bgColor,
              margin: EdgeInsets.only(top:Get.height/3+70),
              child: EasyRefresh.custom(
                  emptyWidget:controller.dataArr.isEmpty?const Center(child:Text('暫無信息')):null,
                  slivers: [
                SliverList(
                  delegate: _mySliverChildBuilderDelegate(),
                ),
              ]),
            ),
            Align(
              alignment: const Alignment(0, -0.8),
              child:Container(
                width: Get.width,
                height: 220,
                // color: Colors.redAccent,
                // color: Colors.redAccent,
                child: Column(
                  children: [
                    Image.asset('images/login_log.png',width: 130,height: 130,),
                    SizedBox(height: 15,),
                    Text('已預約的課堂',style: TextStyle(fontSize: 22,color: AppColor.textFieldBorderColor),)
                  ],
                ),
              ),
            ),
            Image.asset('images/classroom_bg.png',fit: BoxFit.contain,width: Get.width,),
          ],
        ));
      }),
    );
  }
  _mySliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
          (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.only(left: 30,right: 30,top: 0),
          height: 200,
          color: AppColor.bgColor,
          child: Stack(
            children: [

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  height: 160,
                  width: Get.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 40,left: 15),
                        child: Text('日期：2023-01-09 18:37:54',style: appThemeData.textTheme.bodyText1!.copyWith(
                          color: AppColor.themeTextColor,fontWeight: FontWeight.w500
                        ),),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15,left: 15),
                        child: Text('時間：11.30 上午',style:
                        appThemeData.textTheme.bodyText1!.copyWith(
                            color: AppColor.themeTextColor,fontWeight: FontWeight.w500
                        )),
                      ),
                     Container(
                       margin: const EdgeInsets.only(right: 15,top: 10),
                       alignment: Alignment.centerRight,
                       width: Get.width,
                       child: SizedBox(child:  Container(
                         width: 110,
                         child: const GradientButton(borderRadius: BorderRadius.all(Radius.circular(25)),
                           child: Text('預約'),),
                       ),),
                       // color: Colors.yellowAccent,
                     )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15,left: 40),
                child: Image.asset('images/classroom_icon.png',width: 45,height: 45,),
              )
            ],
          ),
        );
      },
      childCount: controller.dataArr.length,
    );
  }

}