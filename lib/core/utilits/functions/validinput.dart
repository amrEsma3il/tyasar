


import 'package:flutter/material.dart';

validInput(String value, int min, int max, String type,BuildContext context) {

    if (value.isEmpty) {
    return "value must be not empty";
  }

  if (value.length < min) {
    return "value must be more than ${min-1}";
  }

  if (value.length > max) {
    return "value must be less than ${max+1}";
  }


  
  if (type == "username") {
   
    if ( !RegExp(r'^[a-zA-Z0-9][a-zA-Z0-9_.]+[a-zA-Z0-9]$').hasMatch(value) ) {
      return 'not valid username';
    }
  }
  if (type == "email") {
    if (! RegExp( r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$').hasMatch(value))
     {
      return 'not valid email';
    }
  }

  if (type == "phone") {
    if (!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$').hasMatch(value)) {
      return 'not phone number';
    }
  }


}
