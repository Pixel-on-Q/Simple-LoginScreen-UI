

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pixelonq login',
      theme:ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String password='';
  bool isPasswordVisible=true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body:  Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/login_ui.png'),
            fit:BoxFit.fitWidth,
              alignment: Alignment.topCenter
          ),

        ),
        child: SingleChildScrollView(
          child: Column
            (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height:118.0),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:15),
                child: Text('Welcome back !', style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Jura',

                  color: Colors.white,
                  fontSize: 25.0,
                  // shadows: <Shadow>[
                  //    Shadow(
                  //      color: Colors.blueGrey,
                  //      offset: Offset(4.0,1.0),
                  //      blurRadius: 4.0,
                  //    )
                  // ]
                )
                ),
              ),

              Padding(
                padding:EdgeInsets.symmetric(horizontal:15),
                child: Text('Mark', style:TextStyle(
                  fontFamily: 'MajorMono',
                  backgroundColor: Colors.white54,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 85.0,
                    // shadows: <Shadow>[
                    //   Shadow(
                    //     color: Colors.blueGrey,
                    //     offset: Offset(4.0,2.0),
                    //     blurRadius: 4.0,
                    //   )
                    // ]
                ),
                ),
              ),

              SizedBox(height: 180),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 12,horizontal:23 )
                ,
                child: TextField(
                 decoration: InputDecoration(
                   labelText: '   Email or Password',
                   hintText:'  abc@mail.com',
                   border: OutlineInputBorder(),
                   prefixIcon: Icon(Icons.mail)
                   // filled: true,
                   // fillColor: Colors.white,
                 ),
                ),
              ),
              SizedBox(height:7),

              Padding(
                padding: EdgeInsets.symmetric(vertical:12 ,horizontal: 23),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '   Enter Password',
                    hintText: '   ******',
                    // errorText: 'Password is Wrong',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: isPasswordVisible? Icon(Icons.visibility_off): Icon(Icons.visibility),
                      onPressed: (){
                        setState(() {
                          isPasswordVisible=!isPasswordVisible;
                        });
                      },

                    ),//
                    // fillColor: Colors.white70,
                  ),
                  obscureText: isPasswordVisible,
                ),
              ),
              SizedBox(height:20),
              Row(
                children: <Widget>[
                  SizedBox(height: 80.0),
                  Text('  Sign in', style: TextStyle(fontSize: 45.0, color: Colors.lightBlue),
                  ),
                  SizedBox(width:149.0),
                  FloatingActionButton(onPressed: null,
                  elevation: 3,
                  child:Icon(Icons.arrow_forward_ios)),

                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('          Forgot Password?',style: TextStyle( color: Colors.blueGrey),),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
