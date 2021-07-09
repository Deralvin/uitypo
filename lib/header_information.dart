import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderInformation extends StatelessWidget {
  final String circleText;
  final Color? bacgroundColorCircle;
  final String iconApp;
  final Color? titleColor;
  final Color? subColor;
  final Color? cardColor;
  const HeaderInformation(
      {Key? key, this.circleText = "", this.bacgroundColorCircle, required this.iconApp, this.titleColor, this.subColor, this.cardColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      child: Card(
        color: cardColor,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: bacgroundColorCircle,
                  child: Text(circleText),
                ),
                Container(
                  margin: EdgeInsets.only(left: 13),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Text",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,color: titleColor),
                      ),
                      Text("089999999999",style: TextStyle(color: subColor),)
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    child:ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        iconApp,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    alignment: Alignment.centerRight,
                  )
                )
          ],
        ),
      )),
    );
    throw UnimplementedError();
  }
}
