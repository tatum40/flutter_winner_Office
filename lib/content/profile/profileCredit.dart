import 'package:flutter/material.dart';
import 'package:flutter_winner_office/theme/color.dart';
import 'package:flutter_winner_office/widget/notify_widget.dart';
import '../../widget/pickDate_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Credit extends StatefulWidget {
  const Credit({Key? key}) : super(key: key);

  @override
  _CreditState createState() => _CreditState();
}

class _CreditState extends State<Credit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Credit account',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: mcl10,
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'บัตรเครดิต/บัตรเดบิตของฉัน',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                underLine(),
                _myCredit(),
                underLine(),
                setCredit(),
                underLine(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget underLine() {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      padding: EdgeInsets.only(top: 1.0),
      color: mcl25,
    );
  }

  Widget _myCredit() {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Image.asset('assets/images/master.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0),
                child: Text(
                  'ธนาคารไทยพาณิชย์',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 5.0),
                child: Text(
                  '*1234',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget setCredit() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Setcredit(),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: Image.asset('assets/images/addCredit.png'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'เพิ่มบัตรเครดิต/บัตรเดบิต',
                    style: TextStyle(fontSize: 16, color: mcl27),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Setcredit extends StatefulWidget {
  const Setcredit({Key? key}) : super(key: key);

  @override
  _SetcreditState createState() => _SetcreditState();
}

class _SetcreditState extends State<Setcredit> {

  var credirCrad = new MaskTextInputFormatter(
      mask: '#### #### #### ####', filter: {"#": RegExp(r'[0-9]')});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'บัตรเครดิต/บัตรเดบบิต',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          backgroundColor: mcl10,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Form(
                child: Column(
                  children: <Widget>[
                    // MaterialButton(onPressed: () {}),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: TextFormField(
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            labelText: "Name on card"),
                      ),
                    ),
                    Container(
                      width: 320,
                      margin: EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          _creditCradPictrue('visa'),
                          _creditCradPictrue('master'),
                          _creditCradPictrue('jcb'),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: TextFormField(
                        inputFormatters: [credirCrad],
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            labelText: "Card number"),
                      ),
                    ),
                    DatePickerWidget(
                      labelText: 'Expiry date (MM/YY)',
                      pickerType: 'credit',
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: TextFormField(
                        decoration: InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          labelText: "Security code",
                          suffixIcon: Icon(
                            Icons.help,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      width: 320,
                      child: TextFormField(
                        onTap: () => showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            actions: <Widget>[
                              Center(
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(10.0),
                                      child:
                                          Image.asset('assets/images/card.png'),
                                    ),
                                    MaterialButton(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30.0),
                                        ),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('OK'),
                                      color: mcl1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                            ),
                            labelText: "ZIP/Postal code"),
                      ),
                    ),
                    saveCreditBtn(context),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _creditCradPictrue(imgName) {
    return Container(
      width: 50,
      height: 30,
      margin: EdgeInsets.symmetric(horizontal: imgName == "master" ? 5.0 : 0.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        border: Border.all(color: mcl26, width: 2),
      ),
      child: Image.asset('assets/images/$imgName.png'),
    );
  }

  Widget saveCreditBtn(context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      width: 320,
      height: 35,
      child: MaterialButton(
        onPressed: () =>
            dialogNotify(context, "Bank account was successfully added"),
        child: Text(
          'Save',
          style: TextStyle(fontSize: 16),
        ),
        color: mcl1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
