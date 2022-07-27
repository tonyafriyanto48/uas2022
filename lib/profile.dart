import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(  
        children: [
        SizedBox(
          height: 40,
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Text(
                  'Profile Details',
                  style: GoogleFonts.lato(
                      color: Color.fromARGB(255, 26, 143, 238),
                      fontSize: 26,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              decoration: new BoxDecoration(color: Colors.white),
              height: 180,
              child: Stack(
                children: <Widget>[
                  Container(
                      height: 108,
                      width: 101,
                      margin: const EdgeInsets.only(
                          left: 15.0, right: 15, top: 25, bottom: 5),
                      padding: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(140)),
                      child: CircleAvatar(
                  backgroundImage: AssetImage('assets/asaw.jpg'),
                )
                ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Name ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 37.0),
                child: Text(
                  ' Tony Afiyanto',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'NIM',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '       20180801323',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Hobby ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '       Kegiatan luar Ruang',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
           SizedBox(
            height: 30,
          ),
           Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Pekerjaan ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '       Mahasiswa',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Text(
                  'Status ',
                  style: GoogleFonts.lato(
                      color: Colors.grey[900],
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Text(
                  '       Belum Menikah',
                  style: GoogleFonts.lato(
                      color: Colors.grey[600],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Divider(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Icon(Icons.person),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Detail Infromasi',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 17,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.mail, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Tony.afriyanto48@gmail.com',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.phone, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  '+62 - 89647768544',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 54.0),
                child: Icon(Icons.home_outlined, color: Colors.grey[500]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Cikupa Kabupaten Tangerang 15710',
                  style: GoogleFonts.lato(
                      color: Colors.grey[700],
                      fontSize: 14,
                      letterSpacing: 1,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
        ] 
      ),
    );
  }
}