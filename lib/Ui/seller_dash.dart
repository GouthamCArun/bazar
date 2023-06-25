import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bar.dart';

class Selldash extends StatefulWidget {
  const Selldash({super.key});

  @override
  State<Selldash> createState() => _SelldashState();
}

class _SelldashState extends State<Selldash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 173, 255, 215),
        Color.fromARGB(255, 205, 239, 255)
      ])),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Hello !!",
                    style: GoogleFonts.getFont('Nunito',
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.w700)),
                  ),
                  // Image.asset(
                  //   'assets/burger.png',
                  //   height: 30,
                  //   width: 30,
                  // )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 320,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                      boxShadow: [
                        const BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "Hey See how's your sales today !!",
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "You appeared in ",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    Text(
                                      "10",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w900)),
                                    ),
                                    Text(
                                      "Searches today",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 100,
                              width: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      "You got",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                    Text(
                                      "5",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900)),
                                    ),
                                    Text(
                                      "new orders today",
                                      style: GoogleFonts.getFont('Nunito',
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 205,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Profile Views",
                                        style: GoogleFonts.getFont('Nunito',
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      Text(
                                        "15",
                                        style: GoogleFonts.getFont('Nunito',
                                            textStyle: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 30,
                                                fontWeight: FontWeight.w900)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          "You appeared in",
                                          style: GoogleFonts.getFont('Nunito',
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Text(
                                          "our ad's",
                                          style: GoogleFonts.getFont('Nunito',
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400)),
                                        ),
                                        Text(
                                          "8",
                                          style: GoogleFonts.getFont('Nunito',
                                              textStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w900)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              HomePage(),
              Container(
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                      boxShadow: [
                        const BoxShadow(
                            color: Color.fromARGB(255, 255, 255, 255),
                            blurRadius: 10,
                            offset: Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          "You fall in Level 1 Category ",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Text(
                          "Service Scheme",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Text(
                          "Free publicity upto 1 year in our app ui and social media",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 61, 61, 61),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Text(
                          "You can avail our App features for free upto 1 year",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 61, 61, 61),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900)),
                        ),
                        Text(
                          "You Service charges in any of your orders upto 1 year",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 61, 61, 61),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "                                                     ***terms and conditions apply***",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 61, 61, 61),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ],
                    ),
                  )),
              Text(
                "Bid Now !!",
                style: GoogleFonts.getFont('Nunito',
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w400)),
              ),
              Column(
                children: [
                  Container(
                    height: 170,
                    width: 400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: [
                          const BoxShadow(
                              color: Color.fromARGB(255, 255, 255, 255),
                              blurRadius: 10,
                              offset: Offset(0, 3))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Silk Sari ",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.getFont('Nunito',
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900)),
                          ),
                          Row(
                            children: [
                              Text(
                                "Current Bid : 1000",
                                style: GoogleFonts.getFont('Nunito',
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Text(
                                "Last Bid date : 10/10/2021",
                                style: GoogleFonts.getFont('Nunito',
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Text(
                            "Location: Mala",
                            style: GoogleFonts.getFont('Nunito',
                                textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400)),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                height: 40,
                                child: TextField(
                                    cursorColor: Colors.blue,
                                    // obscureText: true,
                                    enableSuggestions: false,
                                    autocorrect: false,
                                    // controller: _place,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        prefixIcon:
                                            const Icon(Icons.currency_rupee),
                                        hintText: "")),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your action here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF44f1a6),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  child: const Text(
                                    'Bid Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent,
                          boxShadow: [
                            const BoxShadow(
                                color: Color.fromARGB(255, 255, 255, 255),
                                blurRadius: 10,
                                offset: Offset(0, 3))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Add New Product",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900)),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      )),
    ));
  }
}
