import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RetiroPage extends StatefulWidget {
  @override
  _RetiroPageState createState() => _RetiroPageState();
}

class _RetiroPageState extends State<RetiroPage> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            'Retirar dinero',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 40),
            Expanded(
              child: Column(
                children: [
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
                              hintText: 'Ingresa el monto',
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
                  )
                ]
              )
            ),             
          SizedBox(height: 10),
          Expanded(
            child: Column(
              children: [
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
                        DropdownButtonFormField<String>(
                          value: _selectedOption,
                          onChanged: (value) {
                            setState(() {
                              _selectedOption = value;
                            });
                          },
                          items: [
                            DropdownMenuItem<String>(
                              child: Text(
                                'PayPal',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              value: 'PayPal',
                            ),
                            DropdownMenuItem<String>(
                              child: Text(
                                'Tarjeta de débito',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              value: 'Tarjeta de débito',
                            ),
                          ],
                          decoration: InputDecoration(
                            hintText: 'Seleccionar método',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
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
                  ),
          SizedBox(height: 380),

                ]      
      ),
    );
  }
}