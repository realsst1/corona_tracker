import 'package:coronatracker/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stack_card/flutter_stack_card.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

class SelfTestScreen extends StatefulWidget {
  @override
  _SelfTestScreenState createState() => _SelfTestScreenState();
}

class _SelfTestScreenState extends State<SelfTestScreen> {
  List<String> _questions = [
    "Do you have fever ?",
    "Do you have cough ?",
    "Did you travel international in the last 14 days ?",
    "Do you have shortness of breath ?",
    "Do you have headache ?",
    "Do you have soar throat ?",
    "Have you or your family come in contact with any COVID-19 patient in last 14 days?",
    "Do you have any other health problems ?"
  ];

  String _buttonText = "Check Results";
  bool _isTestCompleted = false;
  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;
  int _radioValue6 = -1;
  int _radioValue7 = -1;
  int _radioValue8 = -1;
  Color _color = Colors.red;
  String _result = "";
  int _yesCount = 0;

  _handleRadioButton1(int value) {
    setState(() {
      _radioValue1 = value;
      switch (_radioValue1) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton2(int value) {
    setState(() {
      _radioValue2 = value;
      switch (_radioValue2) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton3(int value) {
    setState(() {
      _radioValue3 = value;
      switch (_radioValue3) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton4(int value) {
    setState(() {
      _radioValue4 = value;
      switch (_radioValue4) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton5(int value) {
    setState(() {
      _radioValue5 = value;
      switch (_radioValue5) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton6(int value) {
    setState(() {
      _radioValue6 = value;
      switch (_radioValue6) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton7(int value) {
    setState(() {
      _radioValue7 = value;
      switch (_radioValue7) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  _handleRadioButton8(int value) {
    setState(() {
      _radioValue8 = value;
      switch (_radioValue8) {
        case 0:
          break;
        case 1:
          _yesCount = _yesCount + 1;
          break;
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isTestCompleted = false;
  }

  @override
  Widget build(BuildContext context) {
    var b=MediaQuery.of(context).platformBrightness;
    bool isDark=b==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: isDark?Colors.white:Colors.black87,
        ),
        backgroundColor: isDark?Colors.black54:Colors.white,
        title: Text(
          "Self Test",
          style: GoogleFonts.poppins(letterSpacing: 2, color: isDark?Colors.white:Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Check Your risk level",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600, fontSize: 16.0),
                        ),
                        Text(
                          "Answer a few simple question below and get to know your risk level.",
                          style: GoogleFonts.poppins(fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              _isTestCompleted
                  ? Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal:8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0))
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10.0),
                              child: Text(
                                "COVID-19 Risk*:",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0,
                                  letterSpacing: 1.4
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10.0),
                              child: Text(
                                _result,
                                style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                  color: _color
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal:10.0,vertical: 8.0),
                              child: Text(
                                "*This is subject to error and just gives a possiblity of COVID-19. Please contact your doctor if you are feeling unwell.",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  : Container(
                      height: MediaQuery.of(context).size.height*1.08,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                              physics: AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[0],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue1,
                                              onChanged: _handleRadioButton1),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue1,
                                              onChanged: _handleRadioButton1),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[1],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue2,
                                              onChanged: _handleRadioButton2),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue2,
                                              onChanged: _handleRadioButton2),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[2],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue3,
                                              onChanged: _handleRadioButton3),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue3,
                                              onChanged: _handleRadioButton3),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[3],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue4,
                                              onChanged: _handleRadioButton4),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue4,
                                              onChanged: _handleRadioButton4),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[4],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue5,
                                              onChanged: _handleRadioButton5),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue5,
                                              onChanged: _handleRadioButton5),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[5],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue6,
                                              onChanged: _handleRadioButton6),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue6,
                                              onChanged: _handleRadioButton6),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[6],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue7,
                                              onChanged: _handleRadioButton7),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue7,
                                              onChanged: _handleRadioButton7),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 4.0),
                                        child: Text(
                                          _questions[7],
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Radio(
                                              value: 0,
                                              groupValue: _radioValue8,
                                              onChanged: _handleRadioButton8),
                                          Text("No"),
                                          SizedBox(width: 50.0),
                                          Radio(
                                              value: 1,
                                              groupValue: _radioValue8,
                                              onChanged: _handleRadioButton8),
                                          Text("Yes")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _buttonText,
                        style: GoogleFonts.poppins(
                            color: Colors.blue,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0),
                      ),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                    color: Colors.white,
                    onPressed: () {
                      if (_buttonText == "Check Results") {
                        if (_radioValue1 != -1 &&
                            _radioValue2 != -1 &&
                            _radioValue3 != -1 &&
                            _radioValue5 != -1 &&
                            _radioValue6 != -1 &&
                            _radioValue7 != -1 &&
                            _radioValue8 != -1 &&
                            _radioValue4 != -1) {
                          _yesCount = _yesCount + _radioValue1;
                          _yesCount = _yesCount + _radioValue2;
                          _yesCount = _yesCount + _radioValue3;
                          _yesCount = _yesCount + _radioValue4;
                          _yesCount = _yesCount + _radioValue5;
                          _yesCount = _yesCount + _radioValue6;
                          _yesCount = _yesCount + _radioValue7;
                          _yesCount = _yesCount + _radioValue8;
                          var res = _yesCount / 16;
                          if (res >= 0.75) {
                            setState(() {
                              _color = Colors.red;
                              _result = "You have high chances of COVID-19";
                            });
                          } else if (res >= 0.4 && res < 0.75) {
                            setState(() {
                              _color = Colors.orange;
                              _result = "You have moderate chances of COVID-19";
                            });
                          } else {
                            setState(() {
                              _color = Colors.lightGreen;
                              _result = "You have low chances of COVID-19";
                            });
                          }
                          setState(() {
                            _isTestCompleted = true;
                            _buttonText = "Done";
                          });
                        } else {
                          Fluttertoast.showToast(
                              msg: "Please answer all questions",
                              toastLength: Toast.LENGTH_LONG);
                        }
                      } else {
                        Navigator.pop(context);
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
