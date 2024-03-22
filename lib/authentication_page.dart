import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: GlassContainer(
              margin: const EdgeInsets.symmetric(
                vertical: 71,
                horizontal: 32,
              ),
              borderRadius: BorderRadius.circular(17),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white.withOpacity(0.1),
              isFrostedGlass: true,
              frostedOpacity: 0.04,
              blur: 16,
              borderWidth: 1.5,
              borderColor: Colors.white.withOpacity(0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      // This is the Company Icon of app
                      Image.asset(
                        'images/2.png',
                        height: 70,
                      ),
                      // This is the Swift Cafe of app
                      const Column(
                        children: [
                          Text(
                            'Swift',
                            style: TextStyle(
                              height: 1,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              fontSize: 64,
                            ),
                          ),
                          Text(
                            'Café',
                            style: TextStyle(
                              height: 1,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      // This is the Latter But Never Late of app
                      Container(
                        height: 20,
                        width: 150,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.25),
                              blurRadius: 10,
                            ),
                          ],
                        ),
                        child: const Text(
                          '"Latte but never late"',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xffababab),
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // This is the User Name of app
                  SizedBox(
                    width: 270,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: '  User Name',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  // This is the Password of app
                  SizedBox(
                    width: 270,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: '  Password',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  // This is the Log In of app
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/searchPage');
                    },
                    child: Container(
                      height: 50,
                      width: 245,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff4D2B1A),
                            Color(0xffA7745A),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.65),
                            blurRadius: 15,
                            spreadRadius: -2,
                          )
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                    ),
                  ),
                  // This is the Sign Up of app
                  Container(
                    height: 50,
                    width: 245,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ),
                  // This is the Privacy Policy of app
                  const Text(
                    'Privacy Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
