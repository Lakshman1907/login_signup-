import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool passwordVisible=false;

  @override
  void initState(){
    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: Text('Signup',style: TextStyle(
                        fontFamily: 'Montserrat',fontSize:70,fontWeight: FontWeight.bold
                    ),),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(270,130, 0, 0),
                    child: Text('.',style: TextStyle(fontFamily: 'Montserrat',
                        fontSize: 70,color: Colors.lightBlue,fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 50,right: 20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  SizedBox(height: 22,),
                  TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      helperText:"Password must contain special character",
                      helperStyle:TextStyle(color:Colors.lightBlue),
                      suffixIcon: IconButton(
                      icon: Icon(passwordVisible? Icons.visibility: Icons.visibility_off),
                      onPressed: () {
                      setState(
                      () {
                      passwordVisible = !passwordVisible;
                      },
                      );
                      },
                    ),
                     alignLabelWithHint: false,
                      filled: true,
                  ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'NICK NAME',
                      labelStyle: TextStyle(
                          fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Container(
                    height: 40,
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.lightBlue,
                      color: Colors.lightBlue,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text('SIGNUP',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Container(
                    height: 40,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).pop();
                          },
                          child: Center(
                            child: Text('Go back',
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                  ),),
                          ),
                        ),
                          )

                    ),



                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer
      // for build methods.
    );
  }
}
