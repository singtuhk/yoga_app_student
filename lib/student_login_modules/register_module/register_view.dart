import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:yoga_student_app/student_login_modules/register_module/register_controller.dart';

import '../../common/colors.dart';

class RegisterView extends GetView{

  @override
  final RegisterController controller = Get.put(RegisterController());

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: GetBuilder<RegisterController>(builder: (_){
        return Scaffold(
          appBar: AppBar(

          ),
          body: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Text('學生註冊',style: TextStyle(fontSize: 31,color: AppColor.themeColor),),
              ),
              const SizedBox(height: 25,),
              Center(
                child:  Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 15),
                  width: Get.width-50,
                  //边框设置
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    //设置四周圆角 角度
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //设置四周边框
                    border:  Border.all(width: 1, color: AppColor.textFieldBorderColor),
                  ),
                  child: TextField(
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(13) //限制长度
                    ],
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '用戶名稱'
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Center(
                child:Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 15),
                  width: Get.width-50,
                  //边框设置
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    //设置四周圆角 角度
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //设置四周边框
                    border:  Border.all(width: 1, color: AppColor.textFieldBorderColor),
                  ),
                  child: TextField(
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(13) //限制长度
                    ],
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '用戶電話'
                    ),
                  ),
                ),
              ),
              const  SizedBox(height: 5,),
              Center(
                child:  Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 15),
                  width: Get.width-50,
                  //边框设置
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    //设置四周圆角 角度
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //设置四周边框
                    border:  Border.all(width: 1, color: AppColor.textFieldBorderColor),
                  ),
                  child: TextField(
                    obscureText: true,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(13) //限制长度
                    ],
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '密碼'
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Center(
                child:  Container(
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.only(left: 15),
                  width: Get.width-50,
                  //边框设置
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    //设置四周圆角 角度
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    //设置四周边框
                    border:  Border.all(width: 1, color: AppColor.textFieldBorderColor),
                  ),
                  child: TextField(
                    obscureText: true,
                    inputFormatters: <TextInputFormatter>[
                      LengthLimitingTextInputFormatter(13) //限制长度
                    ],
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: '確認密碼'
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Center(
                child:Container(
                  height: 45,
                  width: Get.width -50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: AppColor.themeColor,
                  ),
                  child: const Text('註冊賬號',style: TextStyle(color: Colors.white),),
                ),
              ),

            ],
          ),
        );
      }),
    );
  }

}