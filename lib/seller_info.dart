import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late final TextEditingController _name;
  late final TextEditingController _age;
  late final TextEditingController _school;
  late final TextEditingController _place;
  Color _borderColor1 = Colors.greenAccent;
  Color _borderColor2 = Colors.greenAccent;
  Color _borderColor3 = Colors.greenAccent;
  Color _borderColor4 = Colors.greenAccent;
  int _index = 1;

  void _changeBorderColor(choice) {
    setState(() {
      if (choice == 1) {
        _index = 1;
        _borderColor1 = Colors.red;
        _borderColor2 = Colors.greenAccent;
        _borderColor3 = Colors.greenAccent;
        _borderColor4 = Colors.greenAccent;
      } else if (choice == 2) {
        _index = 2;
        _borderColor2 = Colors.red;
        _borderColor1 = Colors.greenAccent;
        _borderColor3 = Colors.greenAccent;
        _borderColor4 = Colors.greenAccent;
      } else if (choice == 3) {
        _index = 3;
        _borderColor3 = Colors.red;
        _borderColor2 = Colors.greenAccent;
        _borderColor1 = Colors.greenAccent;
        _borderColor4 = Colors.greenAccent;
      } else if (choice == 4) {
        _index = 4;
        _borderColor4 = Colors.red;
        _borderColor2 = Colors.greenAccent;
        _borderColor3 = Colors.greenAccent;
        _borderColor1 = Colors.greenAccent;
      }
    });
  }

  @override
  void initState() {
    _name = TextEditingController();
    _age = TextEditingController();
    _school = TextEditingController();
    _place = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _name.dispose();
    _age.dispose();
    _school.dispose();
    _place.dispose(); // TODO: implement
    // pose
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // SizedBox(
          //   height: 10,
          // ),
          Text(
            'Would you mind sharing these details?',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'What you produce',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 169, 169, 169),
                    fontSize: 15)),
          ),
          SizedBox(
            height: 8,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                SizedBox(
                  height: 82,
                  width: 82,
                  child: Card(
                    color: Color(0xFF44f1a6),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: _borderColor1,
                      ),
                      // borderRadius: BorderRadius.circular(70), //<-- SEE HERE
                    ),
                    child: InkWell(
                        onTap: () {
                          _changeBorderColor(1);
                          print(
                              '------------------------avatar selected---------' +
                                  _index.toString());
                        },
                        child: Text(
                          'Fruits',
                          style: GoogleFonts.getFont('Nunito',
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700)),
                        )),
                  ),
                ),
                SizedBox(
                  height: 82,
                  width: 82,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: _borderColor2,
                      ),
                      borderRadius: BorderRadius.circular(70), //<-- SEE HERE
                    ),
                    child: InkWell(
                      onTap: () {
                        _changeBorderColor(2);
                        print(
                            '------------------------avatar selected---------' +
                                _index.toString());
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/woman.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 82,
                  width: 82,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: _borderColor3,
                      ),
                      borderRadius: BorderRadius.circular(70), //<-- SEE HERE
                    ),
                    child: InkWell(
                      onTap: () {
                        _changeBorderColor(3);
                        print(
                            '------------------------avatar selected---------' +
                                _index.toString());
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/man1.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 82,
                  width: 82,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: _borderColor4,
                      ),
                      borderRadius: BorderRadius.circular(70), //<-- SEE HERE
                    ),
                    child: InkWell(
                      onTap: () {
                        _changeBorderColor(4);
                        print(
                            '------------------------avatar selected---------' +
                                _index.toString());
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/woman2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: EdgeInsets.all(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Your Business Id?',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 169, 169, 169),
                    fontSize: 15)),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
                cursorColor: Colors.blue,
                // obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: _name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.numbers_outlined),
                    hintText: "")),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Business Name',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 169, 169, 169),
                    fontSize: 15)),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
                cursorColor: Colors.blue,
                // obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: _age,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    prefixIcon: const Icon(Icons.calendar_month_outlined),
                    hintText: "")),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Your Location',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 169, 169, 169),
                    fontSize: 15)),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
                cursorColor: Colors.blue,
                // obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: _place,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.house_outlined),
                    hintText: "")),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'A short description about your business \n (this will be shown to the buyers))',
            style: GoogleFonts.getFont('Nunito',
                textStyle: TextStyle(
                    color: const Color.fromARGB(255, 169, 169, 169),
                    fontSize: 15)),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: TextField(
                cursorColor: Colors.blue,
                // obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                controller: _school,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.school_outlined),
                    hintText: "")),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF44f1a6)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          side: BorderSide(color: Color(0xFF44f1a6))))),
              onPressed: () async {
                final name = _name.text;
                final age = _age.text;
                final school = _school.text;
                final place = _place.text;
                final index = _index;
                try {
                  print("name is" + name);
                  print("school is" + school);
                  print("place is" + place);
                  print("age " + age);
                  print("index " + index.toString());
                } catch (e) {}
              },
              child: Text(
                "Ready to boost your business",
                style: GoogleFonts.getFont("Poppins",
                    textStyle: TextStyle(
                        color: Color.fromARGB(255, 250, 250, 250),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
