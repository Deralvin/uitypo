import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonMainCanvas extends StatelessWidget{
  final Widget title;
  final Widget? leading;
  final Widget? body;
  final Color? appBarBgColor;
  const CommonMainCanvas({Key? key,required this.title, this.leading, this.body, this.appBarBgColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor:appBarBgColor ,
        title: title,
        leading: leading,
      ),
      body: body,
    );
    throw UnimplementedError();
  }

}