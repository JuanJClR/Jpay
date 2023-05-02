import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jpay/menu.dart';

class DepositoPage extends StatefulWidget {
  @override
  _DepositoPageState createState() => _DepositoPageState();
}

class _DepositoPageState extends State<DepositoPage> {
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
            'Depositar dinero',
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
                          'Tarjeta de crédito',
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        value: 'Tarjeta de crédito',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   MenuPage())
                );

              },
            ),
          ),
          SizedBox(height: 10),
        ]      
      ),
    );
  }
}
