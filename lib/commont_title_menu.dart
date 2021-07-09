import 'package:flutter/cupertino.dart';

class CommonTittleMenu extends StatelessWidget{
  final String title;
  final double verticalMargin;
  final Color textColor;
  const CommonTittleMenu({Key? key,required this.title, this.verticalMargin=0, this.textColor=const Color(0xff000000)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: verticalMargin),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: textColor
        ),
      ),
    );
    throw UnimplementedError();
  }

}