import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'lib/images/todo4.jpg'
              ),
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
              fit: BoxFit.cover

            ),

          ),

        ),
            Scaffold(
              backgroundColor: Colors.black12,
              body: Column(
                children: <Widget>[
                  SizedBox(height:50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('MY TODOs',
                      style: GoogleFonts.actor(
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        letterSpacing: 5.0,
                      ),
                      ),

                    ],
                  ),
                  Divider(
                    height: 10,
                    color: Colors.amber,
                  ),
            SizedBox(height: 150,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),

                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.actor(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 0.8,


                    ),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.mail_outlined,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),


                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(height:8,),
              Container(

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5),

                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.actor(
                      fontSize: 12,
                      color: Colors.grey,
                      letterSpacing: 0.8,


                    ),
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Icon(
                        Icons.lock,
                        size: 18,
                        color: Colors.grey,
                      ),
                    ),

                  ),
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                ),
              ),
                ],
              ),
            ),
                  SizedBox(height: 10,),
                  RaisedButton(
                    color: Colors.orange,
                    padding: EdgeInsets.fromLTRB(128, 12, 128, 12),

                    onPressed: (){Navigator.pushNamed(context, '/home');
                    },
                    child: Text('LOGIN',
                      style: GoogleFonts.actor(
                        letterSpacing: 1.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                  ),
      ],
    ),
    ),

  ],
    );

  }
}
