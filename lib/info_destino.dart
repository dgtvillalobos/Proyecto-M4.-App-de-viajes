import 'package:flutter/material.dart';
import 'model/item.dart';

class DetalleDestino extends StatelessWidget {
  DetalleDestino({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Cambia el color de la flecha a rojo
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          item.nombre,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(item.imagen),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.6),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 200,
                    child: Hero(
                        tag: item.nombre,
                        child: Image.asset(
                          item.imagen,
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                  thickness: 0.5,
                  height: 30,
                  indent: 60,
                  endIndent: 60,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  margin: const EdgeInsets.fromLTRB(30, 0, 30, 5),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            item.nombre.toUpperCase(),
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w800,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 300,
                          child: Text(
                            textAlign: TextAlign.justify,
                            item.texto,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.mail),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: const Icon(Icons.phone),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.location_on),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: const Text('Otros Destinos',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w200,
                          fontSize: 14,
                          color: Color.fromARGB(255, 27, 27, 27))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
