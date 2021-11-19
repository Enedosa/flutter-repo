import 'package:flutter/material.dart';


class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: -5,
            child: Image.asset("assets/images/1.png", width: 270, height: 240)
          ),
          Positioned(
              top: 0,
              left: -5,
              child: Image.asset("assets/images/3.png", width: 230, height: 210)
          ),  Positioned(
              bottom: 0,
              left: -5,
              child: Image.asset("assets/images/2.png", width: 200, height: 200)
          ),  Positioned(
              bottom: 0,
              right: -5,
              child: Image.asset("assets/images/4.png", width: 200, height: 200)
          ),

          SizedBox(
            width: size.width,
            height: size.height,

            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text("Log in", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 36),),
                  SizedBox(height: 20,),

                  Form(child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Email"
                        ),
                      ),
                      SizedBox(height: 20,),

                      TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password"
                      )
                      ),
                     SizedBox(height: 20,),
                     Container(
                       decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(30)),
                       height: 55,
                       width: double.infinity,
                       child: TextButton(
                         child: Text("Login", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),),
                         style: TextButton.styleFrom(primary: Colors.white),
                         onPressed: (){},
                       ),
                     ),

                      TextButton(child: Text("Forgot Password?", style: TextStyle(color: Theme.of(context).primaryColor),),
                      onPressed: (){
                        print("reset my password");
                      },
                      )
                    ],
                  )


                  ),

                  Text("Register Here", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
