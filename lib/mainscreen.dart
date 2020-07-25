import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'usablecard.dart';
import 'loadscreen.dart';
import 'DistData.dart';
import 'errorpage.dart';

const Activecontcolor = Color(0xff1D1F33);
const inActiveColor = Color(0xff0A0D22);
const bottomcolor = Color(0xff7B1FA2);
const Confcol = Color(0xff007BFE);
const dthcol = Color(0xff923927);
const reccol = Color(0xff28A645);

class MainScreen extends StatefulWidget {
  MainScreen({this.VizagData, this.APData, this.number});
  final APData;
  final VizagData;
  final number;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var IndConf;
  var IndDeath;
  var IndRecvr;
  var ApConf;
  var APdth;
  var Aprecvr;
  var ApupdtTime;
  var num;
  var ApData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.VizagData != null && widget.APData != null) {
      ApData = widget.VizagData;
      num = widget.number;
      IndConf = widget.APData['statewise'][0]['confirmed'];
      IndDeath = widget.APData['statewise'][0]['deaths'];
      IndRecvr = widget.APData['statewise'][0]['recovered'];
      IndConf = widget.APData['statewise'][0]['confirmed'];
      ApConf = widget.APData['statewise'][num]['confirmed'];
      APdth = widget.APData['statewise'][num]['deaths'];
      Aprecvr = widget.APData['statewise'][num]['recovered'];
      ApupdtTime = widget.APData['statewise'][num]['lastupdatedtime'];
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          actions: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoadScreen(),
                      ));
                },
                child: Icon(Icons.refresh, color: bottomcolor)),
            SizedBox(width: 20.0),
          ],
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: inActiveColor,
          title: Text(
            'COVID-19 TRACKER',
            style: TextStyle(
              color: bottomcolor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
        body: Container(
          color: inActiveColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: UsableCards(
                  col: Activecontcolor,
                  Mychild: Container(
                    height: 400.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(1, 1, 1, 7.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "India",
                            style: TextStyle(
                                fontSize: 35,
                                color: bottomcolor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3),
                          ),
                          Divider(
                            height: 2.0,
                            thickness: 8.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Confirmed ",
                                    style: TextStyle(
                                      color: Confcol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "$IndConf",
                                    style: TextStyle(
                                      color: Confcol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Death ",
                                    style: TextStyle(
                                      color: dthcol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "$IndDeath",
                                    style: TextStyle(
                                      color: dthcol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Recovered ",
                                    style: TextStyle(
                                      color: reccol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "$IndRecvr",
                                    style: TextStyle(
                                      color: reccol,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: UsableCards(
                  col: Activecontcolor,
                  Mychild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "ANDHRA PRADESH",
                        style: TextStyle(
                            fontSize: 30,
                            color: bottomcolor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 3),
                      ),
                      Divider(
                        height: 3.0,
                        thickness: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Confirmed ",
                                style: TextStyle(
                                  color: Confcol,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "$ApConf",
                                style: TextStyle(
                                  color: Confcol,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Death ",
                                style: TextStyle(
                                  color: Color(0xff923927),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "$APdth",
                                style: TextStyle(
                                  color: Color(0xff923927),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Recovered ",
                                style: TextStyle(
                                  color: Color(0xff28A645),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "$Aprecvr",
                                style: TextStyle(
                                  color: Color(0xff28A645),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'HOW IT SPREADS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: bottomcolor,
                          fontSize: 20,
                          letterSpacing: 2,
                        ),
                      ),
                      Divider(
                        indent: 50,
                        endIndent: 50,
                        thickness: 1,
                        color: Activecontcolor,
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(3.0, 0, 3.0, 0),
                        child: SizedBox(
                          height: 100,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              cause(
                                k: 'cough.jpg',
                                t: 'AIR BY COUGH OR SNEEZE',
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              cause(
                                k: 'hs.jpg',
                                t: 'PERSONAL CONTACT',
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              cause(
                                k: 'contobj.png',
                                t: 'CONTAMINATED OBJECTS',
                              ),
                              SizedBox(
                                width: 50,
                              ),
                              cause(
                                k: 'maas gathr.jpg',
                                t: 'MASS GATHERING',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
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
                        'District Wise',
                        style: TextStyle(
                          fontSize: 20,
                          color: bottomcolor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DisData(ApData: ApData),
                        ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class cause extends StatelessWidget {
  const cause({Key key, this.t, this.k}) : super(key: key);
  final k;
  final t;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset(
              'assets/$k',
              width: 80.0,
              height: 80.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          '$t',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
        ),
      ],
    );
  }
}
//    var VskpConf = jsonDecode(vskpData)['Andhra Pradesh']['districtData']['Visakhapatnam']['confirmed'];
//    var ApConf = jsonDecode(apData)['statewise'][8]['confirmed'];
//
//    var APdth = jsonDecode(apData)['statewise'][8]['deaths'];
//
//    var Aprecvr = jsonDecode(apData)['statewise'][8]['recovered'];
//
//    var ApupdtTime = jsonDecode(apData)['statewise'][8]['lastupdatedtime'];
