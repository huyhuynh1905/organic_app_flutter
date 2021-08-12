import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({
    Key? key,
    required this.hintText,
    required this.iconData,
  }) : super(key: key);

  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width/1.1,
      decoration: BoxDecoration(
          color: Colors.grey[500]?.withOpacity(0.5),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  iconData,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              )
          ),
          style: TextStyle(
              color: Colors.white,
              fontSize: 18
          ),
          obscureText: true,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),
      ),
    );
  }
}