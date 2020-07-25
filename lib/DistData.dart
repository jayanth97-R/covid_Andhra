import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'usablecard.dart';
import 'loadscreen.dart';

const Activecontcolor = Color(0xff031F4B);
const inActiveColor = Color(0xff0A0D22);
const bottomcolor = Color(0xff7B1FA2);
const Confcol = Color(0xff007BFE);
const dthcol = Color(0xff923927);
const reccol = Color(0xff28A645);

class DisData extends StatefulWidget {
  DisData({this.ApData});
  final ApData;
  @override
  _DisDataState createState() => _DisDataState();
}

class _DisDataState extends State<DisData> {
  var vskpC;
  var vskpD;
  var vskpR;
  var AntpC;
  var AntpD;
  var AntpR;
  var chitC;
  var chitD;
  var chitR;
  var egC;
  var egD;
  var egR;
  var gC;
  var gD;
  var gR;
  var krC;
  var krD;
  var krR;
  var kurC;
  var kurD;
  var kurR;
  var pkC;
  var pkD;
  var pkR;
  var nlrC;
  var nlrD;
  var nlrR;
  var skC;
  var skD;
  var skR;
  var wgC;
  var wgD;
  var wgR;
  var kC;
  var kD;
  var kR;
  var vjc;
  var vjd;
  var vjr;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    vskpC = widget.ApData['Andhra Pradesh']['districtData']['Visakhapatnam']
        ['confirmed'];
    vskpD = widget.ApData['Andhra Pradesh']['districtData']['Visakhapatnam']
        ['deceased'];
    vskpR = widget.ApData['Andhra Pradesh']['districtData']['Visakhapatnam']
        ['recovered'];
    AntpC = widget.ApData['Andhra Pradesh']['districtData']['Anantapur']
        ['confirmed'];
    AntpD = widget.ApData['Andhra Pradesh']['districtData']['Anantapur']
        ['deceased'];
    AntpR = widget.ApData['Andhra Pradesh']['districtData']['Anantapur']
        ['recovered'];
    chitC = widget.ApData['Andhra Pradesh']['districtData']['Chittoor']
        ['confirmed'];
    chitD =
        widget.ApData['Andhra Pradesh']['districtData']['Chittoor']['deceased'];
    chitR = widget.ApData['Andhra Pradesh']['districtData']['Chittoor']
        ['recovered'];
    egC = widget.ApData['Andhra Pradesh']['districtData']['East Godavari']
        ['confirmed'];
    egD = widget.ApData['Andhra Pradesh']['districtData']['East Godavari']
        ['deceased'];
    egR = widget.ApData['Andhra Pradesh']['districtData']['East Godavari']
        ['recovered'];
    gC = widget.ApData['Andhra Pradesh']['districtData']['Guntur']['confirmed'];
    gD = widget.ApData['Andhra Pradesh']['districtData']['Guntur']['deceased'];
    gR = widget.ApData['Andhra Pradesh']['districtData']['Guntur']['recovered'];
    krC =
        widget.ApData['Andhra Pradesh']['districtData']['Krishna']['confirmed'];
    krD =
        widget.ApData['Andhra Pradesh']['districtData']['Krishna']['deceased'];
    krR =
        widget.ApData['Andhra Pradesh']['districtData']['Krishna']['recovered'];
    kurC =
        widget.ApData['Andhra Pradesh']['districtData']['Kurnool']['confirmed'];
    kurD =
        widget.ApData['Andhra Pradesh']['districtData']['Kurnool']['deceased'];
    kurR =
        widget.ApData['Andhra Pradesh']['districtData']['Kurnool']['recovered'];
    pkC = widget.ApData['Andhra Pradesh']['districtData']['Prakasam']
        ['confirmed'];
    pkD =
        widget.ApData['Andhra Pradesh']['districtData']['Prakasam']['deceased'];
    pkR = widget.ApData['Andhra Pradesh']['districtData']['Prakasam']
        ['recovered'];
    nlrC = widget.ApData['Andhra Pradesh']['districtData']['S.P.S. Nellore']
        ['confirmed'];
    nlrD = widget.ApData['Andhra Pradesh']['districtData']['S.P.S. Nellore']
        ['deceased'];
    nlrR = widget.ApData['Andhra Pradesh']['districtData']['S.P.S. Nellore']
        ['recovered'];
    skC = widget.ApData['Andhra Pradesh']['districtData']['Srikakulam']
        ['confirmed'];
    skD = widget.ApData['Andhra Pradesh']['districtData']['Srikakulam']
        ['deceased'];
    skR = widget.ApData['Andhra Pradesh']['districtData']['Srikakulam']
        ['recovered'];
    wgC = widget.ApData['Andhra Pradesh']['districtData']['West Godavari']
        ['confirmed'];
    wgD = widget.ApData['Andhra Pradesh']['districtData']['West Godavari']
        ['deceased'];
    wgR = widget.ApData['Andhra Pradesh']['districtData']['West Godavari']
        ['recovered'];
    kC = widget.ApData['Andhra Pradesh']['districtData']['Y.S.R. Kadapa']
        ['confirmed'];
    kD = widget.ApData['Andhra Pradesh']['districtData']['Y.S.R. Kadapa']
        ['deceased'];
    kR = widget.ApData['Andhra Pradesh']['districtData']['Y.S.R. Kadapa']
        ['recovered'];
    vjc = widget.ApData['Andhra Pradesh']['districtData']['Vizianagaram']
        ['confirmed'];
    vjd = widget.ApData['Andhra Pradesh']['districtData']['Vizianagaram']
        ['deceased'];
    vjr = widget.ApData['Andhra Pradesh']['districtData']['Vizianagaram']
        ['recovered'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: inActiveColor,
        title: Text(
          'STAY HOME STAY SAFE',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: inActiveColor,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          slides(Cnf: vskpC, Dth: vskpD, Rcvr: vskpR, name: 'Visakhapatnam'),
          slides(Cnf: AntpC, Dth: AntpD, Rcvr: AntpR, name: 'Anantapur'),
          slides(Cnf: chitC, Dth: chitD, Rcvr: chitR, name: 'Chittoor'),
          slides(Cnf: egC, Dth: egD, Rcvr: egR, name: 'East Godavari'),
          slides(Cnf: gC, Dth: gD, Rcvr: gR, name: 'Guntur'),
          slides(Cnf: krC, Dth: krD, Rcvr: krR, name: 'Krishna'),
          slides(Cnf: kurC, Dth: kurD, Rcvr: kurR, name: 'Kurnool'),
          slides(Cnf: pkC, Dth: pkD, Rcvr: pkR, name: 'Prakasam'),
          slides(Cnf: nlrC, Dth: nlrD, Rcvr: nlrR, name: 'S.P.S. Nellore'),
          slides(Cnf: skC, Dth: skD, Rcvr: skR, name: 'Srikakulam'),
          slides(Cnf: wgC, Dth: wgD, Rcvr: wgR, name: 'West Godavari'),
          slides(Cnf: kC, Dth: kD, Rcvr: kR, name: 'Y.S.R. Kadapa'),
          slides(Cnf: vjc, Dth: vjd, Rcvr: vjr, name: 'Vizianagaram')
        ],
      ),
    );
  }
}

class slides extends StatelessWidget {
  const slides({
    Key key,
    @required this.Cnf,
    @required this.Dth,
    @required this.Rcvr,
    @required this.name,
  }) : super(key: key);

  final Cnf;
  final Dth;
  final Rcvr;
  final name;

  @override
  Widget build(BuildContext context) {
    return UsableCards(
      col: Activecontcolor,
      Mychild: Container(
        height: 200.0,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(1, 1, 1, 7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "$name",
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
                        "$Cnf",
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
                          color: dthcol,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$Dth",
                        style: TextStyle(
                          color: dthcol,
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
                          color: reccol,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$Rcvr",
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
    );
  }
}
