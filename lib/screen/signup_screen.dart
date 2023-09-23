import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _formKey = GlobalKey<FormState>();

  final NameEditingController = new TextEditingController();
  final EmailEditingController = new TextEditingController();
  final PhoneNumberEditingController = new TextEditingController();
  final PasswordEditingController = new TextEditingController();
  final ConfirmPasswordEditingController = new TextEditingController();
  var signUpButton;

  @override
  Widget build(BuildContext context) {
    var passwordVisible=true;

  // name field

    final nameField = TextFormField(
      autofocus: false,
      controller: NameEditingController,
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (value){
        EmailEditingController.text = value!;
        },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Enter Your Name",
        border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(10)
        )
      ),
    );

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
         hintText: " Email ",
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(10)
         ),

       ),

     );


    // Phone Number

    final phoneNumberField = TextFormField(
      autofocus: false,
      controller: PhoneNumberEditingController,
      keyboardType: TextInputType.number,
      //validator: () {},
      onSaved: (value){
        EmailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,

      decoration: InputDecoration(
        prefixIcon: Icon(Icons.phone_outlined),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: " Mobile Number ",
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

     // confirm password

    final confirmPasswordField = TextFormField(
      autofocus: false,
      controller: ConfirmPasswordEditingController,
      keyboardType: TextInputType.visiblePassword,

      //validator: () {},
      onSaved: (value){
        EmailEditingController.text = value!;

      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: " Confirm Password ",
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
        ),
      ),


    );

// signup Button



   final signUpButton = Material(
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

                    nameField,
                    SizedBox(height: 20),
                    emailField,
                    SizedBox(height: 20),
                    phoneNumberField,
                    SizedBox(height: 20),
                    passwordField,
                    SizedBox(height: 20),
                    confirmPasswordField,
                    SizedBox(height: 20),
                    signUpButton,

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
