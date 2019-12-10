import 'package:flutter/material.dart';

void main() => runApp(BorgiaMobile());

class BorgiaMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Borgia mobile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextStyle _inputTextStyle = TextStyle(color: Color(0xFF8B8B8B));
  Padding _separation = Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 20));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/img/logo-borgia-text.png'),
                        Image.asset('assets/img/logo-borgia.png'),
                      ],
                    )
                  ),
                  _separation,
                  
                  Align(
                    child: Text(
                      "NOM D'UTILISATEUR",
                      style: _inputTextStyle,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE2E2E2))
                      ),
                    ),
                  ),
                  _separation,

                  Align(
                    child: Text(
                      "MOT DE PASSE",
                      style: _inputTextStyle,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE2E2E2))
                      ),
                      suffixIcon: FlatButton(
                        onPressed: () => {},
                        child: Text(
                          "Mot de passe oublié",
                          style: TextStyle(
                            color: _inputTextStyle.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                          )
                        ),
                      )
                    ),
                  ),
                  _separation,

                  FlatButton(
                    color: Color.fromARGB(255, 101, 19, 25),
                    onPressed: () => {},
                    child: Container(
                      width: double.infinity,
                      child: AspectRatio(
                        aspectRatio: 5,
                        child: Center(
                          child: Text(
                            "SE CONNECTER",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
