

import 'package:flutter/material.dart';

import '../../../config/themes/styles.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  String? hintText;
  double? width,height;
  void Function()? suffixIconHitEvent;
  void Function(String)? onChanged;
  void Function()? onTap;
  String? Function(String?)? validator;
  Widget? suffiWidget;
   Widget? prefixWidget;
 
   CustomTextField({
    Key? key,
    this.hintText,
this.prefixWidget,
    this.height,
    this.width,
   this. onChanged,
   this.validator,
   this.onTap,
   this.suffixIconHitEvent,
   this.suffiWidget

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width,
      height: height,
      child: Directionality(
           
               textDirection: TextDirection.rtl,
               child: TextFormField(
                onChanged:onChanged ,
                onTap: onTap,
                validator: validator,
                
                 textAlign: TextAlign.right,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle:  TextStyles.font13GrayRegular.copyWith(fontSize: 22),
                  suffixIcon:  suffiWidget,
                  prefixIcon: prefixWidget,
                  focusedBorder: OutlineInputBorder(
                     borderSide: const BorderSide(color: Color.fromARGB(255, 120, 122, 122), width: 1.0),
                     borderRadius: BorderRadius.circular(30)
                ) ,
                      enabledBorder:  OutlineInputBorder(
                     borderSide: const BorderSide(color: Color.fromARGB(255, 120, 122, 122), width: 1.0),
                     borderRadius: BorderRadius.circular(30)
                ),
               )),
             ),
    );
  }
}
