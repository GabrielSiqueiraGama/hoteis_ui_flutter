import 'package:flutter/material.dart';
import 'package:hoteis_ui/models/hotel_model.dart';

class CarrosselVertical extends StatefulWidget {
  const CarrosselVertical({super.key});

  @override
  State<CarrosselVertical> createState() => _CarrosselVerticalState();
}

class _CarrosselVerticalState extends State<CarrosselVertical> {
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
                    'Proximo a você.',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                  GestureDetector(
                    // ignore: avoid_print
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
        SizedBox(
          height: 260,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hoteis.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hoteis[index];
              return Container(
                margin: const EdgeInsets.all(10),
                width: 210,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 10,
                      child: Container(
                        height: 100,
                        width: 210,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 3.0),
                                blurRadius: 6.0),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 24.0),
                              child: Text(
                                hotel.nome,
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.black54),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.place,
                                        color: Colors.green.shade800,
                                        size: 14,
                                      ),
                                      Text(
                                        hotel.cidade,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ],
                                  ),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star_outlined,
                                      color: Colors.amber.shade400,
                                      size: 12,
                                    ),
                                    const Text('4.5')
                                  ])
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            height: 150.0,
                            width: 210.0,
                            fit: BoxFit.cover,
                            image: AssetImage(hotel.imageUrl)),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
