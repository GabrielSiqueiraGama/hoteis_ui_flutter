import 'package:flutter/material.dart';

import '../widgets/carrosel_hotel.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                'Hoteis: ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.place,
                          color: Colors.green,
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Brasil',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 25,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 20),
            CarroselHotel(),
          ],
        ),
      ),
    );
  }
}
