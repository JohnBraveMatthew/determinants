import 'package:flutter/material.dart';

class FormFields extends StatefulWidget {
  @override
  _FormFieldsState createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  var a, b, c, d, e, f, g, h, i;
  var determinant = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            elevation: 10,
            child: Container(
              color: Colors.blue[800],
              width: MediaQuery.of(context).size.width * 0.5,
              //decoration: BoxDecoration(boxShadow: [BoxShadow()]),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA11(),
                        inputFieldA12(),
                        inputFieldA13(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA21(),
                        inputFieldA22(),
                        inputFieldA23(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA31(),
                        inputFieldA32(),
                        inputFieldA33(),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(color: Colors.blue[900]))),
                      child: FlatButton(
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            setState(() {
                              determinant = ((a * e * i) +
                                  (b * f * g) +
                                  (c * d * h) -
                                  (g * e * c) -
                                  (h * f * a) -
                                  (i * d * b));
                            });
                          }
                        },
                        child: Text(
                          "GET DETERMINANT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              "Determinant: ",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                determinant.toString(),
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(color: Colors.redAccent),
          child: FlatButton(
            onPressed: () {
              _formKey.currentState.reset();
            },
            child: Text(
              "CLEAR",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

//A11
  Widget inputFieldA11() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          a = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A12
  Widget inputFieldA12() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          b = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A13
  Widget inputFieldA13() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          c = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A21
  Widget inputFieldA21() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          d = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A22
  Widget inputFieldA22() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          e = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A23
  Widget inputFieldA23() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          f = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A31
  Widget inputFieldA31() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          g = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A32
  Widget inputFieldA32() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          h = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }

  //A33
  Widget inputFieldA33() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          i = int.parse(val);
        },
        validator: (val) {
          if (val.isEmpty) {
            return "fill entry";
          }
          return null;
        },
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.zero),
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );
  }
}
