import 'package:bazaar/Ui/buying_home.dart';
import 'package:bazaar/Ui/seller_info.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DividerPage extends StatelessWidget {
  const DividerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 300,
        width: 350,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xfff1f1f1f1)),
        child: Column(
          children: [
            Text(
              'Hello There',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: const Color.fromARGB(239, 33, 33, 33)),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BuyingHome(),
                  ),
                );
              },
              child: Container(
                height: 70,
                width: 290,
                decoration: const BoxDecoration(
                  color: Color(0xFF44f1a6),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Center(
                  child: Text(
                    'Buyer',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromARGB(239, 33, 33, 33)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()));
              },
              child: Container(
                height: 70,
                width: 290,
                decoration: const BoxDecoration(
                  color: Color(0xFF44f1a6),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: Center(
                  child: Text(
                    'Seller',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: const Color.fromARGB(239, 33, 33, 33)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
