import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButtonIcon extends StatelessWidget{
  final VoidCallback onpressed;
  final Icon icon;
  final Widget tittle;
  final Color? colorsBtn;
  const CommonButtonIcon({Key? key, required this.onpressed,required this.icon,required this.tittle, this.colorsBtn}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary:colorsBtn ,
          minimumSize: Size(double.infinity, 30), // double.infinity is the width and 30 is the height
        ),
        onPressed: onpressed,
        label:tittle ,
        icon: icon,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
    );
    throw UnimplementedError();
  }

}