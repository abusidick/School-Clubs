import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/screen/SignUp.dart';
import 'package:helloworld/screen/bottom_bar.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/widgets/text_widget.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool obserText = true;
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextWidget(
                text: "Login",
                color: kTextcolor,
                textSize: 35,
                isTitle: true,
              ),
              const SizedBox(height: 20),
              Image.asset(
                'images/Profile.png',
                scale: 1,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        child: TextFormField(
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(width: 1, color: Colors.grey),
                              ),
                              labelText: 'Email'),
                          validator: Validators.compose([
                            Validators.required('Email is required'),
                          ]),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: TextFormField(
                          controller: password,
                          obscureText: obserText,
                          decoration: InputDecoration(
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            labelText: 'Password',
                            suffixIcon: GestureDetector(
                              onTap: () {
                                FocusScope.of(context).unfocus();
                                setState(() {
                                  obserText = !obserText;
                                });
                              },
                              child: Icon(
                                obserText == true
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          validator: Validators.compose([
                            Validators.required('Password is required'),
                            Validators.minLength(
                                6, "Minimum Password characters Should be 6"),
                            Validators.maxLength(
                                8, "Maximum Password characters Should be 8")
                          ]),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: FlatButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => BottomBar(),
                                  ));
                            }
                          },
                          child: Text("Login"),
                          textColor: Colors.white,
                          color: Colors.cyan,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Color(0xff0f0f0f), fontSize: 18),
                  ),
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return new SignUp();
                      }));
                    },
                    child: Text(
                      ' Register now',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
