import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:form_view_flutter/Utils/decoration_functions.dart';
import 'package:form_view_flutter/Utils/palette.dart';
import 'package:form_view_flutter/Utils/sign_in_up_bar.dart';
import 'package:form_view_flutter/Utils/title.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    Key key,
    @required this.onRegisterClicked,
  }) : super(key: key);

  final VoidCallback onRegisterClicked;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SignInForm(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.centerLeft,
                child: LoginTitle(
                  title: 'Bienvenido\nde Nuevo',
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: signInInputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: signInInputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SignInBar(
                    label: 'Inicia Sesión',
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {
                        widget.onRegisterClicked?.call();
                      },
                      child: const Text(
                        'Registrate',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                          color: Palette.darkBlue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
