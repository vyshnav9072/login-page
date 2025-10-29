import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool isChecked=false;
  Color globalStyle = Color.fromRGBO(78, 1, 137, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text("Hi, Wecome Back! 👋 ", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
              Text("Hello again, you’ve been missed!",style: TextStyle(fontWeight: FontWeight.w600),),
              SizedBox(height: 50),

              Text("Email", style: TextStyle(fontWeight: FontWeight.w600,color: globalStyle),),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'sophat.leat@nintrea.live',
                  labelStyle: TextStyle(fontFamily: 'Manrope',fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 25),
              Text("Password", style: TextStyle(fontWeight: FontWeight.w600,color: globalStyle),),

              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Please fasdf Your Password',labelStyle: TextStyle(fontWeight: FontWeight.w600)
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(value: isChecked, onChanged: (value){
                    setState(() {
                      isChecked=value??false;
                    });
                  }),
                  Text("Remember Me",style: TextStyle(fontWeight: FontWeight.w600),),
                  Spacer(),
                  Text("Forgot Password", style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red)),
                  SizedBox(height: 30),
                ],

              ),
SizedBox(height: 30,),
              SizedBox(height: 50,
                width: MediaQuery.of(context).size.width * 0.99,

                child: ElevatedButton(
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(78, 1, 137, 1),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                  Text("or with",style: TextStyle(fontWeight: FontWeight.w600),),
                  Expanded(
                    child: Divider(
                      height: 10,
                      color: Colors.black,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children: [
                        Image.asset('assets/images/iconmonstr-github-1 1.png'),
                        Text("GitHub", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    width: 150,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/iconmonstr-github-1 1.png'),

                        Text("GitLab", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account ? ",style: TextStyle(fontWeight: FontWeight.w600),),
                  Text("Sign up", style: TextStyle(fontWeight: FontWeight.w600,color: Colors.purple)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
