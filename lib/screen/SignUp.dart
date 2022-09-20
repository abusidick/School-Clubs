import 'package:flutter/material.dart';
import 'package:helloworld/screen/loginPage.dart';
import 'package:helloworld/service/constants.dart';
import 'package:helloworld/widgets/text_widget.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'bottom_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController program = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  String? gender;
  bool obserText = true;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: <Widget>[
          const SizedBox(height: 40),
          TextWidget(
            text: "SignUP",
            color: kTextcolor,
            textSize: 35,
            isTitle: true,
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    child: TextFormField(
                      controller: firstname,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: 'First Name'),
                      validator: Validators.compose([
                        Validators.required('First Name is required'),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                      controller: lastname,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: 'Last Name'),
                      validator: Validators.compose([
                        Validators.required('Last Name is required'),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        RadioListTile(
                          title: Text("Male"),
                          value: "male",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("Female"),
                          value: "female",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                      controller: program,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: 'Program Of Study'),
                      validator: Validators.compose([
                        Validators.required('Program is required'),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                      controller: address,
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          labelText: 'Address'),
                      validator: Validators.compose([
                        Validators.required('Address is required'),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                        TextFormField(
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
                        const SizedBox(height: 10),
                        TextWidget(
                            text: "*Minimum Password characters Should be 6",
                            color: kTextLightColor,
                            textSize: 14),
                        TextWidget(
                            text: "*Maximum Password characters Should be 8",
                            color: kTextLightColor,
                            textSize: 14),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: FlatButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                            return new BottomBar();
                          }));
                        }
                      },
                      child: Text("SignUp"),
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
                'Already an account?',
                style: TextStyle(color: Color(0xff0f0f0f), fontSize: 18),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return new LoginPage();
                  }));
                },
                child: Text(
                  ' Login now',
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ]),
      )),
    );
  }
}
