import 'package:flutter/material.dart';
import 'package:login_app/authentication/reset_email_password.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formkey=GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child: Column(
          children:[
             Container(
            height: 350,
            decoration: BoxDecoration(
             color: Colors.white
            ),
            child: Image.asset("assets/images/forgotpassword.png", ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text("Forgot Password", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                ),   
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("No worries! Enter your registered email address\n and we'll help you reset your password.", style: TextStyle(
                  color: Colors.black
                ),
                ),
              ],
            ),
          ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: emailcontroller,
              decoration: InputDecoration(
              hintText: 'Email',
              labelText: 'Email',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
              )
              ),
              validator: (value) {
                if (value==null || value.isEmpty) {
                  return 'Enter emai';
                }
                return null;
        
              },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetEmailPassword()));
                },
                child: GestureDetector(
                  onTap: () {
                    if (_formkey.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetEmailPassword()));
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity/2,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 2, 12, 155),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GestureDetector(
                      child: Center(
                        child: Text("Submit", style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
      
    );
  }
}