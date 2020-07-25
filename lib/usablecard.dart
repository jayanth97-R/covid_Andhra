import 'package:flutter/material.dart';

const Activecontcolor = Color(0xff031F4B);

class UsableCards extends StatelessWidget {
  final Color col;
  // ignore: non_constant_identifier_names
  final Widget Mychild;
  final Function onTap;
  // ignore: non_constant_identifier_names
  UsableCards({this.col, this.Mychild, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Mychild,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Activecontcolor,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
