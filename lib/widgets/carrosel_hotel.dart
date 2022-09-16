import 'package:flutter/material.dart';
import 'package:hoteis_ui/models/hotel_model.dart';

class CarroselHotel extends StatefulWidget {
  const CarroselHotel({super.key});

  @override
  State<CarroselHotel> createState() => _CarroselHotelState();
}

class _CarroselHotelState extends State<CarroselHotel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Melhores ofertas.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () => print("Ver todos"),
                    child: Text(
                      'Ver todos',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green.shade900,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        Container(
          height: 300,
          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hoteis.length,
              itemBuilder: (BuildContext context, int index) {
                Hotel hotel = hoteis[index];
                return Container(
                    width: 210,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          color: Colors.white,
                          height: 150,
                          width: 200,
                        ),
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
