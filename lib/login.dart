// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue.shade900,
          Colors.blue,
          Colors.blue.shade900,
        ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "TRICKET",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 60,
                        ),
                        GoogleAuthButton(
                          onPressed: () {},
                          themeMode: ThemeMode.dark,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FacebookAuthButton(
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(children: const <Widget>[
                          Expanded(
                              child: Divider(
                            thickness: 0.6,
                            color: Colors.grey,
                          )),
                          Text(
                            " OR Login With",
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                              child: Divider(
                            thickness: 0.6,
                            color: Colors.grey,
                          )),
                        ]),
                        const SizedBox(
                          height: 20,
                        ),
                        const TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Mobile Number",
                              hintText: "Enter your 10 digit Mobile no."),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              backgroundColor: Colors.grey.shade300,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width / 2, 50)),
                          onPressed: () {},
                          child: Text('Get OTP',style: TextStyle(fontSize: 20),),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        OutlinedButton(
                          onPressed: () {
                            
                          },
                          style: OutlinedButton.styleFrom(
                            fixedSize: Size(
                                  MediaQuery.of(context).size.width / 2, 50)
                          ),
                          child: Text("Skip For Now",style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
