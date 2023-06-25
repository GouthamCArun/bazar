import 'package:bazaar/database/getdata.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class DisplayPage extends StatefulWidget {
  DisplayPage({super.key, required this.state});
  int state;
  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  GetDataBase getDataBase = GetDataBase();
  Stream? leaderStream;
  @override
  void initState() {
    getDataBase.listProducts().then((value) {
      setState(() {
        leaderStream = value;
      });
    });
    super.initState();
  }

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
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 20),
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
                    width: 90,
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(10),
                          backgroundColor:
                              MaterialStatePropertyAll(Color(0xFF44f1a6))),
                      onPressed: () {
                        QuickAlert.show(
                          context: context,
                          type: QuickAlertType.confirm,
                          text: 'Confirm Bidding ',
                          onConfirmBtnTap: () {
                            Navigator.of(context).pop();
                            QuickAlert.show(
                              context: context,
                              type: QuickAlertType.success,
                              text: 'Confirm order',
                              cancelBtnText: 'OK',
                              confirmBtnColor: Colors.green,
                            );
                          },
                          confirmBtnText: 'Yes',
                          cancelBtnText: 'No',
                          confirmBtnColor: Colors.green,
                        );
                      },
                      child: Text(
                        'Open Bidding',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 38, 38, 38),
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: StreamBuilder(
                    stream: leaderStream,
                    builder: (context, snapshot) {
                      return snapshot.hasData
                          ? ListView.builder(
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (context, index) {
                                Map price =
                                    snapshot.data!.docs[index].get('Saree');
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Container(
                                      width: 350,
                                      height: 180,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
                                          color: Color(0xFF44f1a6)),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 10, bottom: 10),
                                            child: Container(
                                              height: 200,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: NetworkImage(
                                                          price['url'])),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: Colors.white),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  snapshot.data!.docs[index].id,
                                                  style: GoogleFonts.poppins(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20,
                                                    color:
                                                        const Color(0xFF2E384E),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  'Rating: ${snapshot.data!.docs[index].get('rating')} /10',
                                                  style: GoogleFonts.poppins(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 15,
                                                    color:
                                                        const Color(0xFF2E384E),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '${price['price']}',
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25,
                                                        color: const Color(
                                                            0xFF2E384E),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: widget.state == 0
                                                            ? 50
                                                            : 30,
                                                      ),
                                                      child: ElevatedButton(
                                                        onPressed: () {
                                                          QuickAlert.show(
                                                            context: context,
                                                            type: QuickAlertType
                                                                .confirm,
                                                            text:
                                                                'Confirm order',
                                                            confirmBtnText:
                                                                'Yes',
                                                            onConfirmBtnTap:
                                                                () {
                                                              getDataBase.updateBuy(
                                                                  snapshot
                                                                      .data!
                                                                      .docs[
                                                                          index]
                                                                      .id,
                                                                  price['buy'],
                                                                  price['url'],
                                                                  price['price']);

                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              QuickAlert.show(
                                                                context:
                                                                    context,
                                                                type:
                                                                    QuickAlertType
                                                                        .success,
                                                                text:
                                                                    'Confirm order',
                                                                cancelBtnText:
                                                                    'OK',
                                                                confirmBtnColor:
                                                                    Colors
                                                                        .green,
                                                              );
                                                            },
                                                            cancelBtnText: 'No',
                                                            confirmBtnColor:
                                                                Colors.green,
                                                          );
                                                        },
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          backgroundColor:
                                                              const Color
                                                                      .fromARGB(
                                                                  255,
                                                                  181,
                                                                  252,
                                                                  218),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                        ),
                                                        child: Text(
                                                          widget.state == 0
                                                              ? 'Buy'
                                                              : 'Contact',
                                                          style:
                                                              const TextStyle(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    22,
                                                                    22,
                                                                    22),
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              })
                          : const Center(child: CircularProgressIndicator());
                      ;
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
