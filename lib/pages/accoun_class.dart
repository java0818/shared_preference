import 'package:flutter/material.dart';

class AccounClass extends StatefulWidget {
  const AccounClass({Key? key}) : super(key: key);

  @override
  State<AccounClass> createState() => _AccounClassState();
}

class _AccounClassState extends State<AccounClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined,size: 30),
          color: Colors.black54,
          onPressed: (){},
        ),

      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lets Get Started!',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            const Text('Create an account to Q Allure to get all features',style: TextStyle(color: Colors.grey,fontSize: 15),),
            const SizedBox(height: 80),
            // #Name
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.blue),
                color: Colors.white10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: InputBorder.none,
                  icon: Icon(Icons.account_box_outlined,color: Colors.blue,),
                ),
              ),
            ),
            // #Email
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey),
                color: Colors.white10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: InputBorder.none,
                  icon: Icon(Icons.email_outlined,color: Colors.grey,),
                ),
              ),
            ),
            // #Phone
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey),
                color: Colors.white10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Phone',
                  border: InputBorder.none,
                  icon: Icon(Icons.phone_android_outlined,color: Colors.grey,),
                ),
              ),
            ),
            // #Password
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey),
                color: Colors.white10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  icon: Icon(Icons.password,color: Colors.grey,),
                ),
              ),
            ),
            // #Confirm Password
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 20,right: 20),
              height: 60,
              padding: const EdgeInsets.only(left: 15,right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey),
                color: Colors.white10,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  border: InputBorder.none,
                  icon: Icon(Icons.password,color: Colors.grey,),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 120,right: 120),
              height: 45,
              //color: Colors.blue,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              child: Center(
                child: Text('GREATE',style: TextStyle(fontSize: 18,color: Colors.white)),
              ),
            ),
            const SizedBox(height: 30),
            RichText(
              softWrap: true,
              overflow: TextOverflow.visible,
              text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an accunt?  ",
                      style: TextStyle(color: Colors.grey,fontSize: 16),
                    ),
                    TextSpan(
                        text: "Login here",
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
