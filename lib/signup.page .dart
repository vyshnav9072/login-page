import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class signupage extends StatefulWidget {
  const signupage({super.key});

  @override
  State<signupage> createState() => _signupageState();
}

class _signupageState extends State<signupage> {
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
              Text("Create an account  ", style: TextStyle(fontSize: 25)),
              Text("Connect with your friends today!"),
              SizedBox(height: 50),
              SizedBox(
                height: 30,
                child: Text(
                  "Email address",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: 'Enter your email',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 30,
                child: Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
          
              IntlPhoneField(
                showCountryFlag: false,
                // Padding for the flag button
                flagsButtonPadding: const EdgeInsets.all(8),
                // Position of the dropdown icon
                dropdownIconPosition: IconPosition.trailing,
                decoration: const InputDecoration(
                  // Label for the input field
                  labelText: 'Phone Number',
                  // Border style for the input field
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                // Default country code (India)
                initialCountryCode: 'IN',
                // Displays the cursor in the input field
                showCursor: true,
                // Shows the dropdown icon for country selection
                showDropdownIcon: true,
                onChanged: (phone) {
                  // Callback when the phone number changes
                  // Prints the complete phone number
                  print(phone.completeNumber);
                },
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 30,
                child: Text("password", style: TextStyle(color: Colors.purple)),
              ),
          
              TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: '  Please Enter Your Password',
                  labelStyle: TextStyle(fontFamily: 'Manrope'),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Icon(Icons.check_box ),
          
                  Text("Remember Me"),
                  Spacer(),
                  Text("Forgot Password", style: TextStyle(color: Colors.red)),
                  SizedBox(height: 80),
                ],
              ),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.99,
                child: ElevatedButton(
                  child: Text('Login', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(78, 1, 137, 1),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height:10,),
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
          
                  Text("oR"),
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    height: 50,
                    width: 150,
          
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
          
                        children: [
                          Image.asset('assets/images/iconmonstr-github-1 1.png'),
                          Text("GitHub", style: TextStyle(fontSize: 18)),
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
          
                        Text("GitLab", style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Row(
                children: [
                  Text("Already have an account ? ",style: TextStyle(fontSize: 16),),
                  Text("login", style: TextStyle(color: Colors.purple)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
