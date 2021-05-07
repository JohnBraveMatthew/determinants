import 'package:flutter/material.dart';

class FDFormFields extends StatefulWidget {
  @override
  _FDFormFieldsState createState() => _FDFormFieldsState();
}

class _FDFormFieldsState extends State<FDFormFields> {
  var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
  var determinant = 0;
  final _fDformKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
            elevation: 10,
            child: Container(
              color: Colors.blue[800],

              width: MediaQuery.of(context).size.width * 0.70,
              //decoration: BoxDecoration(boxShadow: [BoxShadow()]),
              child: Form(
                key: _fDformKey,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA11(),
                        inputFieldA12(),
                        inputFieldA13(),
                        inputFieldA14(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA21(),
                        inputFieldA22(),
                        inputFieldA23(),
                        inputFieldA24(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA31(),
                        inputFieldA32(),
                        inputFieldA33(),
                        inputFieldA34(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        inputFieldA41(),
                        inputFieldA42(),
                        inputFieldA43(),
                        inputFieldA44(),
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
                          if (_fDformKey.currentState.validate()) {
                            _fDformKey.currentState.save();
                            setState(() {
                              determinant = (a *
                                      (f * (k * p - o * l) -
                                          g * (j * p - n * l) +
                                          h * (j * o - n * k)) -
                                  (b *
                                      (e * (k * p - o * l) -
                                          g * (l * p - m * l) +
                                          h * (i * o - n * k))) +
                                  (c *
                                      (e * (j * p - n * l) -
                                          g * (l * p - m * l) +
                                          h * (i * n - m * j))) -
                                  (b *
                                      (e * (j * d - n * k) -
                                          f * (i * o - m * k) +
                                          g * (l * m - m * j))));
                            });
                          }
                        },
                        child: Text(
                          "GET DETERMINANT",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
              _fDformKey.currentState.reset();
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

  //A14
  Widget inputFieldA14() {
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

  //A21
  Widget inputFieldA21() {
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

  //A22
  Widget inputFieldA22() {
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

  //A23
  Widget inputFieldA23() {
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

  //A24
  Widget inputFieldA24() {
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

  //A31
  Widget inputFieldA31() {
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

  //A32
  Widget inputFieldA32() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          j = int.parse(val);
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
          k = int.parse(val);
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

  //A34
  Widget inputFieldA34() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          l = int.parse(val);
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

  //A41
  Widget inputFieldA41() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          m = int.parse(val);
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

  //A42
  Widget inputFieldA42() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          n = int.parse(val);
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

  //A43
  Widget inputFieldA43() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          o = int.parse(val);
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

  //A44
  Widget inputFieldA44() {
    return Container(
      padding: EdgeInsets.all(2.0),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextFormField(
        keyboardType: TextInputType.number,
        onSaved: (val) {
          p = int.parse(val);
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
