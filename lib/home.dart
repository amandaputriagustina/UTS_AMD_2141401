import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image(
            image: AssetImage('images/background.jpg'),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            image: AssetImage('images/profile.jpg'),
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Column(
                        children: [
                          Text(
                            'Hi! Amanda Putri',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff081777),
                            ),
                          ),
                          Text(
                            'Cari Buku Apa Hari Ini?',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 60),
                      const Image(
                        image: AssetImage('images/amik_logo.png'),
                        width: 50,
                        height: 50,
                      ),
                    ],
                  ),
                  TextFormField(
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      // hintText: 'Search',
                      labelText: 'Search',
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your text';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/richdad.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'Rich Dad Poor Dad',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/48laws.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            '48 Laws Of Power',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/money.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'The Psychology Of..',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Image(
                            image: AssetImage('images/ai.jpg'),
                            width: 150,
                            height: 150,
                          ),
                          Text(
                            'Artificial Intelligence',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Tersedia',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
