import 'package:flutter/material.dart';
import 'package:shared_preference/services/pref_services.dart';

import '../model/user_model.dart';
//import 'package:shared_preference/services/pref_services.dart';
//import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailController = TextEditingController();
  final passworController = TextEditingController();

  void _dologin(){

    String email = emailController.text.toString().trim();
    String password = passworController.text.toString().trim();
    User user = User.from(email:email,password:password);
    Prefs.storeUser(user);

    Prefs.loadUser().then((value) => {
      // ignore: avoid_print
      print(user.email),
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 50,right: 50),
              height: 200,
              //color: Colors.orange,
              child: const Image(
                image: AssetImage('assets/images/i1.jpg'),
              ),
            ),
            const Text('Welcome back!',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            Text('Log in your existantaccount of Q Allure',style: TextStyle(fontSize: 16,color: Colors.grey[500]),),
            const SizedBox(height: 50),

            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.blue),
                color: Colors.white10,
              ),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  icon: Icon(Icons.email,color: Colors.blue,),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.blue),
                color: Colors.white,
              ),
              child: TextField(
                controller: passworController,
                decoration: const InputDecoration(
                  hintText: 'Password',

                  border: InputBorder.none,
                  icon: Icon(Icons.lock,color: Colors.blue,),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // #Forget password
            Container(
              margin: const EdgeInsets.only(left: 10,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text('Forget Password?',style: TextStyle(color: Colors.black),),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 80,right: 80),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.indigo,
              ),
              child: TextButton(
                onPressed: () {
                  _dologin;
                },
                child: const Text('LOG IN',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 40),
            const Text('Or connect using',style: TextStyle(color:Colors.black54,fontSize: 18),),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // #Facebook button
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                   child: Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           child: const Icon(Icons.facebook_outlined,size: 25,color: Colors.white,),
                         ),
                         const SizedBox(width: 10),
                         Container(
                           child: const Text('Facebook',style: TextStyle(color: Colors.white,fontSize: 16),),
                         ),
                       ],
                     ),
                   ),
                ),
                const SizedBox(width: 20),
                // # Google button
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.red,
                  ),
                  child: TextButton(
                    onPressed: (){
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.g_mobiledata,size: 25,color: Colors.white,),
                        SizedBox(width: 10),
                        Text('Google',style: TextStyle(color: Colors.white,fontSize: 16),),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: const TextSpan(
                children: [
                TextSpan(
                text: "Do not have an account?  ",
                style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 16),
              ),
              TextSpan(
                  text: "Sign up ",
                  style: TextStyle(color: Colors.blue,fontSize: 16)
              ),
              ]
            ),
            )
          ],
        ),
      ),
    );
  }
}
