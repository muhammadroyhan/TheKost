import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_kost/pages/promo_screen.dart';
import 'package:the_kost/pages/transaksi_screen.dart';
import 'package:unicons/unicons.dart';

import 'edit_screen.dart';

class ProfilScreen extends StatefulWidget {
  const ProfilScreen({super.key});

  @override
  State<ProfilScreen> createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          "Profile",
          style: GoogleFonts.roboto(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Image.asset("assets/images/Frame.png"),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Kost',
                    style: GoogleFonts.roboto(
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '+6285121024883',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'thekost14@gmail.com',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.edit),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 56,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.discount),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Promo",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PromoScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.payment),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Metode Pembayaran",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 56,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(UniconsLine.bill),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Riwayat Transaksi",
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TransaksiScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 280,
          ),
          ElevatedButton(
            style: ButtonStyle(
              fixedSize: MaterialStateProperty.all(
                Size.fromWidth(200),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Log Out',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
