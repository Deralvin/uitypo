import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CanvasView extends StatelessWidget {
  Widget title;
  Color appBarBackground;
  final List<Widget>? actions;
  final Widget? bodies;
  Color? backgroundColor;
  Color bottomBackgroundColor;
  final int currentIndexTab;
  bool isBottomNavigationBar;
  CanvasView(
      {Key? key,
      required this.title,
      required this.appBarBackground,
      this.actions,
      this.bodies,
      this.backgroundColor,
      this.currentIndexTab = 0,
      this.isBottomNavigationBar = false,
      this.bottomBackgroundColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          centerTitle: true,
          title: title,
          backgroundColor: appBarBackground,
          actions: actions,
        ),
        body: bodies,
        bottomNavigationBar: (isBottomNavigationBar == false)
            ? null
            : Theme(
                data: Theme.of(context).copyWith(
                    canvasColor: bottomBackgroundColor,
                    primaryColor: Colors.white,
                    textTheme: Theme.of(context)
                        .textTheme
                        .copyWith(caption: TextStyle(color: Colors.grey))),
                child: BottomNavigationBar(
                    selectedItemColor: Colors.green,
                    unselectedItemColor: Colors.grey,
                    backgroundColor: bottomBackgroundColor,
                    currentIndex: currentIndexTab,
                    // onTap: (int index) {
                    //   setState(() {
                    //     tabIndex = index;
                    //   });
                    // },
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: "Home",
                      ),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: "Profile"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.av_timer_outlined),
                          label: "History"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: "Settings"),
                    ]),
              ));
    throw UnimplementedError();
  }
}
