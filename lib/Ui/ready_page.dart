import 'dart:ffi';

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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Text(
                  "What you want to buy",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    color: const Color(0xFF2E384E),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
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
                        SizedBox(width: 10),
                        Text(
                          '${index + 1}',
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                height: 50,
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
                        style:
                            GoogleFonts.nunito(color: const Color(0xFFF8F8FF))),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}