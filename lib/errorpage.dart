import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'loadscreen.dart';

const Activecontcolor = Color(0xff031F4B);
const inActiveColor = Color(0xff6497B1);
const bottomcolor = Color(0xff6497B1);
const Confcol = Color(0xff007BFE);
const dthcol = Color(0xff923927);
const reccol = Color(0xff28A645);

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFCFDFF),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: Image(
                  image: AssetImage('assets/errorfin.jpg'),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Text(
                  'SOMETHING WENT WRONG!!!',
                  style: TextStyle(
                      color: bottomcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Activecontcolor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    height: 70,
                    child: Center(
                      child: Text(
                        'Refresh',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoadScreen(),
                        ));
                  },
                ),
              )
            ],
          ),
        ));
  }
}
