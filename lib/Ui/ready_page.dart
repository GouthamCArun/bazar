import 'dart:ffi';

import 'package:bazaar/Ui/display_items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadyPage extends StatefulWidget {
  const ReadyPage({super.key});

  @override
  State<ReadyPage> createState() => _ReadyPageState();
}

class _ReadyPageState extends State<ReadyPage> {
  List<TextEditingController> listController = [TextEditingController()];
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "What you want to buy",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 30,
                      color: const Color(0xFF2E384E),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Today?",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: const Color(0xFF2E384E),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: listController.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            '${index + 1}',
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: const Color(0xFF44f1a6),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                controller: listController[index],
                                autofocus: false,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 22, 22, 22)),
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Enter the item...",
                                  hintStyle: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 20,
                                      color: Color.fromARGB(168, 65, 65, 65)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          index != 0
                              ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      listController[index].clear();
                                      listController[index].dispose();
                                      listController.removeAt(index);
                                    });
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Color.fromARGB(255, 32, 32, 32),
                                    size: 35,
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      listController.add(TextEditingController());
                    });
                  },
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 32, 30, 30),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Add More",
                          style: GoogleFonts.nunito(
                              color: const Color(0xFFF8F8FF))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DisplayPage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                          color: const Color(0xFF44f1a6),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Pick items for me",
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 19, 19, 19),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(Icons.arrow_circle_right_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    width: 350,
                    height: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Color(0xFF44f1a6)),
                    child: Center(
                      child: Text(
                        '____space left for ads____',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            color: Color.fromARGB(238, 96, 96, 96)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
