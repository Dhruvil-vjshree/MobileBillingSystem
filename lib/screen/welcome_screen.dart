import 'package:flutter/material.dart';
import 'package:mobilebillingsystem/screen/login_screen.dart';
import 'package:mobilebillingsystem/screen/signup_screen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        // safe area no mean screeen thi niche camera noch thi niche and nevigatin default thi upper
        child: Container(
         // double infinity no use krvathi it says make me as big as my parent screen allow me
          width:double.infinity,
          // mediaquery mean make me big as my screen as possible
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal:30,vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Column(
                children: <Widget>[
                  Text(
                    textAlign: TextAlign.center,
                    " \"Welcome To New Era Of Billing System\" ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blueAccent,
                    ),
                  ),
                  SizedBox(height:30),
                ],
              ),

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: SizedBox(

                      height: 300,

                      child: Image.asset(
                        "assets/welcome-image.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),




        //login button
                   Column(
                    children:<Widget> [
                      MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        color:Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.black
                            ),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black
                            ),
                          ),
                      ),

                      SizedBox(height:20),




                      //signup button
                      Column(
                        children:<Widget> [
                          MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                            },

                            color:Colors.blue,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(

                                ),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                  color: Colors.white,
                              ),
                            ),
                          ),
                    ],
                  ),

                  SizedBox(height:10,),

                  Column(
                    children: [
                      Text(" *Signup If You Are New User   ",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.red),
                      ),

                    ],
                  )
                  
                      

            ],
          ),
        ],
      ),
    ),
      ),
    );
  }
}
