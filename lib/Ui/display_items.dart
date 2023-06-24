import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                child: Text(
                  'Silk Sari',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: const Color(0xFF2E384E),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 350,
                            height: 180,
                            decoration:
                                const BoxDecoration(color: Color(0xFF44f1a6)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, top: 10, bottom: 10),
                                  child: Container(
                                    height: 200,
                                    width: 130,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Nadan Kaythiri',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          color: const Color(0xFF2E384E),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Rating:7.5/10',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15,
                                          color: const Color(0xFF2E384E),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Price: 2300/-',
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 25,
                                          color: const Color(0xFF2E384E),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget sellerList(index) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.lightGreenAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(index),
    );
  }
}
