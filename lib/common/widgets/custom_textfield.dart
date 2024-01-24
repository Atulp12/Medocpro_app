import 'package:flutter/material.dart';
import 'package:medocpro_app/utils/global.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final bool isShadow;
  final TextEditingController controller;
  const CustomTextField({
    Key? key,
    required this.text,
    required this.isShadow,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(10),
        // boxShadow:  [ BoxShadow(color: greyColor,spreadRadius:isShadow? 1.0:0,blurRadius:isShadow? 15:0)]
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.grey.shade300,),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: GlobalVariables.primaryColor,),
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        obscureText: isShadow ? false : true,
        keyboardType:
            isShadow ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}
