import 'package:flutter/material.dart';
import 'mainscreen.dart';
import 'network.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const inActiveColor = Color(0xff111328);
const Confcol = Color(0xff007BFE);

const maincolor = Color(0xcff30101);

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setlinks();
  }

  void setlinks() async {
    NetworkHelp n = NetworkHelp(
        link1: 'https://api.covid19india.org/state_district_wise.json',
        link2: 'https://api.covid19india.org/data.json');
    var AndhraData = await n.covidAPData();
    var VizagData = await n.covidVskpData();
    var num = await n.Checknum();
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              MainScreen(VizagData: VizagData, APData: AndhraData, number: num),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          automaticallyImplyLeading: false,
          backgroundColor: Confcol,
          centerTitle: true,
          title: Text(
            'JAYANTH',
            style: TextStyle(
              color: inActiveColor,
              fontSize: 15,
              fontWeight: FontWeight.w100,
              letterSpacing: 6,
            ),
          ),
        ),
        backgroundColor: maincolor,
        body: Container(
          color: Confcol,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: SpinKitWave(
                  color: inActiveColor,
                  size: 50.0,
                ),
              ),
            ],
          ),
        ));
  }
}
