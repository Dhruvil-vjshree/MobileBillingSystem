import 'package:flutter/material.dart';
import 'package:mobilebillingsystem/screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();


  final EmailEditingController = new TextEditingController();
  final PasswordEditingController = new TextEditingController();
  var   LoginButton;

  @override
  Widget build(BuildContext context) {
    var passwordVisible=true;



    // Email Field

    final emailField = TextFormField(
      autofocus: false,
      controller: EmailEditingController,
      keyboardType: TextInputType.emailAddress,
      //validator: () {},
      onSaved: (value){
        EmailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email_rounded),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: " Email Id",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),

      ),

    );




    // password
    final passwordField = TextFormField(
      autofocus: false,
      controller: PasswordEditingController,
      obscureText: true,
      //validator: () {},
      onSaved: (value){
        EmailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: " Password ",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),
    );




    final LoginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width ,

        onPressed: () {},
        child: const Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );



    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blueAccent),
            onPressed: () {
              // main page pr jva mate nu arrow
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(

          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(

                          height: 200,

                          child: Image.asset(
                            "assets/app-icon.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 30),

                      emailField,
                      SizedBox(height: 20),

                      passwordField,
                      SizedBox(height: 20),

                      LoginButton,
                      SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have account?"),
                          GestureDetector(onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) =>
                                SignupScreen()));
                          } ,
                          child: Text(" Signup ",
                                  style: TextStyle(
                                      color:Colors.blueAccent,
                                      fontWeight:FontWeight.bold,
                                          fontSize: 15),) ,)
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),
          ),
        )
    );
  }
}
