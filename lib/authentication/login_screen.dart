import 'package:flutter/material.dart';
import 'package:login_app/authentication/forgot_password_screen.dart';
import 'package:login_app/authentication/sign_up_screen.dart';
import 'package:login_app/home_screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey= GlobalKey<FormState>();
  final emailcontroller=TextEditingController();
  final passwordcontroller= TextEditingController();

  bool  ispasswordhiden=true;
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login.png"), fit: BoxFit.cover)
        ),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 35, top: 130, bottom: MediaQuery.of(context).viewInsets.bottom,),
                    child: Text('Welcome\nBack',style: TextStyle(
                      color: Colors.white, fontSize: 30,
                      fontWeight: FontWeight.w500
                    ),
                    ),
                  ),
                  Container(
                     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.9/2,
                     right: 35,
                     left: 35
                     ),
                    child: Column(
                      children: [
                        TextFormField(
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
                              return "Enter email";
                            }
                            if (!value.contains('@')||!value.contains(".")) {
                              return 'Enter valid email';
                            }
                            final emailRegex = RegExp(
                             r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                              );
            
                             if (!emailRegex.hasMatch(value)) {
                             return 'Enter valid email';
                          }
                           return null;
                           }, 
                           
                        ),
                          SizedBox(height: 20,),
                         TextFormField(
                          obscureText: ispasswordhiden,
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            suffixIcon: IconButton(onPressed: (){
                             setState(() {
                                ispasswordhiden=!ispasswordhiden;
                             });
                            }, icon: Icon(ispasswordhiden?Icons.visibility_off:Icons.visibility)
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            
                          ),
                          validator: (value) {
                            if (value==null || value.isEmpty) {
                              return 'Enter password';
                            }
                            if (value.length<8) {
                              return 'password must be at least 6 characters';
                            } 
                            final passwordRegex = RegExp(
                            r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$',
                             );
            
                             if (!passwordRegex.hasMatch(value)) {
                             return "Password must contain uppercase, lowercase, number & special character";
                            }
                            return null;
                          },
                        ),
                         SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                             InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                              },
                               child: Text('Forgot Password',style: TextStyle(
                                decoration: TextDecoration.underline,
                                  
                               ),
                               ),
                             )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Login', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                               fontSize: 27,
                            ),
                            ),
                            
                            GestureDetector(
                              onTap: () {
                                if (_formkey.currentState!.validate()) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                                }
                              },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.arrow_forward,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                             child: Image.asset("assets/images/google (1).png",fit: BoxFit.cover,
                             ),
                            ),
                             SizedBox(width: 20,),
                             CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                             child: Image.asset("assets/images/facebook (1).png",fit: BoxFit.cover,
                             ),
                            ),
              
                          ],
                         ),
                           SizedBox(height: 10,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("If you don't have an Account!"),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                          }, child: Text('Sign up', style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold
                          ),))
                        ],
                       ),
              
                      ],
                    ),
                  )
              
                ],
              ),
            ),
          ),
        )
      );
            
        
  
  }
}