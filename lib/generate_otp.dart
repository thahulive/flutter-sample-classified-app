import 'package:flutter/material.dart';
import 'package:classifieds_app/verify_otp.dart';

class GenerateOtp extends StatefulWidget {
  static String tag = 'generate-otp';
  @override
  _GenerateOtpState createState() => new _GenerateOtpState();
}

class _GenerateOtpState extends State<GenerateOtp> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Text('Sign In'),
      ),
    );

    final phone = TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: true,
      initialValue: '',
      decoration: InputDecoration(
        hintText: 'Phone',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final otpButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(VerifyOtp.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Send OTP', style: TextStyle(color: Colors.white)),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            phone,
            SizedBox(height: 48.0),
            otpButton,
          ],
        ),
      ),
    );
  }
  
}