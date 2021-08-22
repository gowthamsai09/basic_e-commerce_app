

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "",
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Card(
                  child: Padding(padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      TextFormField(
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        validator: (email){
                          if (email.isEmpty || !email.contains('@')){
                            return 'Invalid email';
                          }
                          return null;
                        },
                        onSaved: (email){},
                        decoration: InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _password,
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.done,
                        obscureText: true,
                        validator: (value){
                          if (value.isEmpty || value.length <= 6){
                            return 'Check password!!! and try again.';
                          }
                          return null;
                        },
                        onSaved: (value){},
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FlatButton(
                        color: Colors.lightBlue,
                        textColor: Colors.white,
                        onPressed: (){ },
                        child: Text("Login Account"),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
