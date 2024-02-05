
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


import '../../../../config/themes/styles.dart';
import '../../../../controller/auth/verfiy_code_controller.dart';

class VerifyCodeDigit extends StatelessWidget {



  final bool ? first;
  
  final bool ? last;
  final Color? colorValidation;
  final TextEditingController controller;

   const VerifyCodeDigit({
    super.key, this.first, this.last, this.colorValidation, required this.controller,
  });

  @override
  Widget build(BuildContext context) {

 
    return GetBuilder<VerifyController>(
      builder: (verfiyController) {
        return Container(
          alignment: Alignment.center,
          height: 55,
          width: Get.size.width/5,
          decoration: BoxDecoration(
            
          
            borderRadius: BorderRadius.circular(28),
        border: Border.all(width: verfiyController.borderWidth,color: verfiyController.borderColor)),
        
        
        child:TextField(
          controller:controller ,
          keyboardType: TextInputType.number,
          style:TextStyles. font22Black400Weight,
          textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1)
        ],
        decoration: const InputDecoration(
          hintText: "_",
          border:InputBorder.none,
        ),


        onChanged: (val) {


          if (val.isNotEmpty && last==false){
      
            FocusScope.of(context).nextFocus();
          }
           if (val.isEmpty && first==false){
        
         
            FocusScope.of(context).previousFocus();
          }
        },
          
        
        ) ,);
      }
    );
  }
}
