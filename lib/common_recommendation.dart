import 'package:flutter/cupertino.dart';

class CommonRecommendation extends StatelessWidget{
  final String imageSrc;
  final String titleSrc;
  final Color? textColor;
  const CommonRecommendation({Key? key,required this.imageSrc, this.titleSrc="", this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(

              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.network(imageSrc,fit: BoxFit.cover,width: 300,height: 150,),
                ),
                SizedBox(height: 5,),
                Text(titleSrc,style: TextStyle(color: textColor),)
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
        ),
      ],
    );
    throw UnimplementedError();
  }
  
}