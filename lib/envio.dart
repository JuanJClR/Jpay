import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnvioPage extends StatefulWidget {
  @override
  _EnvioPageState createState() => _EnvioPageState();
}

class _EnvioPageState extends State<EnvioPage> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15),
            Text(
              'Jpay',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 250),
            Text(
              'Enviar dinero',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(height: 40),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              decoration: InputDecoration(
                                hintText: 'Monto',
                                hintStyle: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color:Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                border: InputBorder.none,
                              ), 
                            ),
                          ]
                        )
                      )
                    ),
            SizedBox(height: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextField(
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              decoration: InputDecoration(
                                hintText: 'Cuenta',
                                hintStyle: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color:Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                border: InputBorder.none,
                              ), 
                            ),
                          ]
                        )
                      )
                    ),
            SizedBox(height: 10),
            ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 19),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'Continuar',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Acción a realizar al presionar el botón
                      },
             ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 19),
                  primary: Colors.black,
                ),
                child: Text(
                  'Volver',
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                onPressed: () {
                  // Acción a realizar al presionar el botón
                },
              ),
            ),
            SizedBox(height: 10),
          ]      
        )
      ),
    );
  }
}