import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/signup": (BuildContext context)=> const SignupPage()
    },
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.grey),

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
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
                  child: Text('Hello',style: TextStyle(
                    fontFamily: 'Montserrat',fontSize:70,fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 170, 0, 0),
                  child: Text('World',style: TextStyle(
                      fontFamily: 'Montserrat',fontSize: 70,fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(235, 170, 0, 0),
                  child: Text('.',style: TextStyle(fontFamily: 'Montserrat',
                      fontSize: 70,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold
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
                SizedBox(height:25,),
                TextField(
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
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
                SizedBox(height: 10),
                Container(
                  alignment: Alignment(1,0),
                  child: InkWell(
                    child: Text('forgot password',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue,
                      fontFamily: 'Montserrat',
                      decoration: TextDecoration.underline
                    ),),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.lightBlueAccent,
                    color: Colors.lightBlue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Center(
                        child: Text('LOGIN',
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
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: ImageIcon(AssetImage( 'assets/images/vct.png')),
                        ),
                        SizedBox(width: 10,),
                        Center(
                          child: Text('Log in with facebook',
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                            ),),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Spotify?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),),
                      SizedBox(width: 5,),
                      Container(
                        alignment: Alignment(1,0),
                        child: InkWell(
                          onTap: (){
                           Navigator.of(context).pushNamed('/signup');
                          },
                          child: Text('Register',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline
                          ),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
