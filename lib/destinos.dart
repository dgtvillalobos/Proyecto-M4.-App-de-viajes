import 'package:flutter/material.dart';
import 'model/item.dart';
import 'info_destino.dart';

class Destinos extends StatefulWidget {
  const Destinos({super.key});

  @override
  State<Destinos> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Destinos> {
  Color miColor1 = const Color.fromARGB(255, 2, 15, 90);
  Color miColor2 = Color.fromARGB(255, 47, 85, 122);

  List<Item> listaDatos = [
    Item(
      'Roma',
      'Descubre la majestuosidad de la Ciudad Eterna, con sus antiguos monumentos y su rica historia. Roma es el hogar del Coliseo, el Vaticano y la Fontana di Trevi.',
      'assets/imagen/roma.jpg',
    ),
    Item(
      'Milán',
      'Explora el corazón de la moda y el diseño en Milán, una ciudad vibrante llena de elegancia y estilo. Además de su famoso Duomo y la Galería Vittorio Emanuele II, Milán ofrece una experiencia de compras incomparable.',
      'assets/imagen/milan.jpg',
    ),
    Item(
      'Nápoles',
      'Sumérgete en la auténtica vida italiana en Nápoles, donde la pizza nació. Disfruta de la calidez de su gente, sus encantadoras calles y la cercanía al majestuoso Monte Vesubio y las ruinas de Pompeya.',
      'assets/imagen/napoles.jpg',
    ),
    Item(
      'Turín',
      'Descubre la elegancia y la historia de Turín, una ciudad conocida por sus museos, su arquitectura barroca y su deliciosa gastronomía. No te pierdas la Mole Antonelliana y el Museo Egipcio, uno de los más importantes del mundo.',
      'assets/imagen/turin.jpg',
    ),
    Item(
      'Palermo',
      'Sumérgete en la atmósfera única de Palermo, la capital de Sicilia, con su mezcla de culturas y su rica herencia árabe-normanda. Explora sus mercados, palacios y catedrales mientras te deleitas con la deliciosa comida siciliana.',
      'assets/imagen/palermo.jpg',
    ),
    Item(
      'Génova',
      'Explora el encanto marítimo de Génova, una ciudad portuaria con una rica historia marítima y una arquitectura impresionante. Visita el acuario más grande de Europa y déjate sorprender por sus estrechas calles medievales.',
      'assets/imagen/genova.jpg',
    ),
    Item(
      'Bolonia',
      'Conocida como la Ciudad Roja por el color de sus tejados, Bolonia es una ciudad universitaria llena de vida y energía. Descubre sus torres medievales, sus plazas animadas y su famosa cocina, especialmente la pasta boloñesa.',
      'assets/imagen/bolonia.jpg',
    ),
    Item(
      'Florencia',
      'Embárcate en un viaje al Renacimiento en Florencia, la cuna del arte y la cultura italiana. Visita la Galería Uffizi, el Ponte Vecchio y el impresionante Duomo, y déjate seducir por la belleza de sus calles empedradas y sus magníficas iglesias.',
      'assets/imagen/florencia.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/imagen/pisa.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: ListView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Viajes Turisticos",
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w400,
                          fontSize: 35,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.grey,
                              offset: Offset(3.0, 3.0),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "DESTINOS ITALIA",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          letterSpacing: 4.5,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 2.0,
                              color: Colors.grey,
                              offset: Offset(2.0, 2.0),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.5,
                        height: 20,
                        indent: 150,
                        endIndent: 150,
                      ),
                      SizedBox(
                        height: 600,
                        child: Card(
                          elevation: 1,
                          color: Colors.transparent,
                          margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: listaDatos.length,
                              itemBuilder: (context, index) {
                                final nombre = listaDatos[index].nombre;
                                final imagen = listaDatos[index].imagen;
                                final texto = listaDatos[index].texto;
                                return GestureDetector(
                                  onTap: () {
                                    Item listaDatos =
                                        Item(nombre, texto, imagen);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DetalleDestino(
                                                item: listaDatos,
                                              )),
                                    );
                                  },
                                  child: Card(
                                    color: const Color.fromARGB(
                                        255, 231, 226, 231),
                                    margin:
                                        const EdgeInsets.fromLTRB(20, 0, 20, 5),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 15, 0, 0),
                                            child: CircleAvatar(
                                              radius: 20,
                                              backgroundImage:
                                                  AssetImage(imagen),
                                            ),
                                          ),
                                          Container(
                                            width: 270,
                                            height: 70,
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 10, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  nombre,
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 13,
                                                    color: miColor1,
                                                  ),
                                                ),
                                                Text(
                                                  '${texto.substring(0, 100)}...',
                                                  textAlign: TextAlign.justify,
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 12,
                                                    color: miColor1,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
