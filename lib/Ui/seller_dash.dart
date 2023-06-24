import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Hello !!",
                  style: GoogleFonts.getFont('Nunito',
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700)),
                ),
                // Image.asset(
                //   'assets/burger.png',
                //   height: 30,
                //   width: 30,
                // )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.greenAccent,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.yellowAccent,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Text(
                        "Hey See how's your sales today !!",
                        style: GoogleFonts.getFont('Nunito',
                            textStyle: TextStyle(
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
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Text(
                                    "10",
                                    style: GoogleFonts.getFont('Nunito',
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                  Text(
                                    "Searches today",
                                    style: GoogleFonts.getFont('Nunito',
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 100,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Text(
                                    "You got",
                                    style: GoogleFonts.getFont('Nunito',
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  Text(
                                    "5",
                                    style: GoogleFonts.getFont('Nunito',
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900)),
                                  ),
                                  Text(
                                    "new orders today",
                                    style: GoogleFonts.getFont('Nunito',
                                        textStyle: TextStyle(
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
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bid Now !!",
              style: GoogleFonts.getFont('Nunito',
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w400)),
            ),
            Column(
              children: [
                Container(
                  height: 150,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellowAccent,
                            blurRadius: 10,
                            offset: const Offset(0, 3))
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Woolen Sari ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Row(
                          children: [
                            Text(
                              "Current Bid : 1000",
                              style: GoogleFonts.getFont('Nunito',
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            Text(
                              "Delivery date : 10/10/2021",
                              style: GoogleFonts.getFont('Nunito',
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300)),
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Add your action here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF44f1a6),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: Text(
                            'Bid Now',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
