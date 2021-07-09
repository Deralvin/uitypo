import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonIconMenu extends StatelessWidget{
  final Widget? icon;
  final VoidCallback onpressed;
  final String title;
  const CommonIconMenu({Key? key, this.icon,required this.onpressed, this.title=""}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          child: icon,
          onTap: onpressed,
        ),
        SizedBox(height: 6,),
        Text(title,style: TextStyle(color: Colors.blueGrey),)
      ],
    );
    throw UnimplementedError();
  }

}