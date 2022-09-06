import 'package:flutter/material.dart';
import 'main_screen.dart';

TextStyle title =
    TextStyle(fontFamily: 'Roboto', fontSize: 30, color: Colors.amber);
TextStyle hintText = TextStyle(
    fontFamily: 'Lato',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.black54);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Forsure : Insurance for Life',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  bool _securetext = false;
  @override
  Widget build(BuildContext context) {
    Size mainSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: mainSize.height * 0.1,
            ),
            Text(
              'ForSure',
              style: title,
            ),
            SizedBox(
              height: mainSize.height * 0.10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'images/facebook.png',
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'images/google.png',
                  height: 20,
                  width: 20,
                ),
                Image.asset(
                  'images/twitter.png',
                  height: 20,
                  width: 20,
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
              child: Expanded(
                child: TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.account_circle_outlined)),
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Masukkan username anda...',
                      hintStyle: hintText),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, right: 50.0, top: 10.0),
              child: Expanded(
                child: TextField(
                    controller: _pass,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _securetext = !_securetext;
                              });
                            },
                            icon: Icon(_securetext
                                ? Icons.remove_red_eye_outlined
                                : Icons.security_outlined)),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Masukkan password anda...',
                        hintStyle: hintText),
                    obscureText: _securetext),
              ),
            ),
            SizedBox(
              height: mainSize.height * 0.08,
            ),
            Container(
              width: 150,
              height: 55,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(19)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return mainScreen(
                      //mengubah controller menjadi text dan string
                      name: _name.text.toString(),
                      pass: _pass.text.toString(),
                    );
                  }));
                },
                child: Text(
                  'Beranda',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _name.dispose();
    _pass.dispose();
    super.dispose();
  }
}
