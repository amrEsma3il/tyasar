
import 'package:flutter/material.dart';
import '../../constant/color.dart';

// ignore: must_be_immutable
class CustomSubmattiedButton extends StatelessWidget {
 final double width,height;
  void Function()? onPressed;
  Color colorButtom;
  final Widget textWidget;
  CustomSubmattiedButton({
    Key? key,
    required this.width,
    required this.height,
     this.onPressed,
     this.colorButtom=AppColor.mainBlue, required this.textWidget,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colorButtom),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
           Size(width,height),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
      child:textWidget
    );
  }
}





