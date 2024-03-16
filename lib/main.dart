import 'package:flutter/material.dart';
import '/card_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  Color miColor1 = const Color.fromARGB(255, 73, 25, 82);
  Color miColor2 = const Color.fromARGB(255, 102, 54, 185);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: miColor1,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [miColor1, miColor2],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: ListView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 70,
                        backgroundImage:
                            AssetImage('assets/imagen/HojaAmarilla.jpg'),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Diego Tapia Villalobos",
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontWeight: FontWeight.w400,
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "FLUTTER DEVELOPER",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                          letterSpacing: 4.5,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.5,
                        height: 20,
                        indent: 150,
                        endIndent: 150,
                      ),
                      CardInfo(
                          icon: Icons.phone,
                          miColor1: miColor1,
                          miColor2: miColor2,
                          text: '+56 9 57846054'),
                      CardInfo(
                          icon: Icons.mail,
                          miColor1: miColor1,
                          miColor2: miColor2,
                          text: 'dgtvillalobos@gmail.com'),
                      const SizedBox(height: 10),
                      const Text(
                        "escaneame",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      const Image(
                        image: AssetImage('assets/imagen/qr.png'),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.5,
                        height: 100,
                        indent: 20,
                        endIndent: 20,
                      ),
                      const Text(
                        "INFORMACIÓN",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w800,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et pretium quam, eget lobortis nibh. Morbi efficitur dui sed mi dapibus vulputate. Suspendisse lobortis velit et odio lobortis, vel molestie massa condimentum. Aliquam ut dui non nisl cursus sodales. Nullam tincidunt tortor elit, eu imperdiet quam elementum quis. Donec consequat tellus sed tincidunt lobortis. Vivamus ac fringilla tortor, id feugiat dolor. Pellentesque ornare mauris est. Suspendisse potenti. In quis pharetra diam. Nam nec nunc facilisis, aliquam dolor in, interdum ex. Nulla diam lorem, sagittis eget magna vel, dapibus suscipit libero. Phasellus dapibus volutpat ante at cursus. Donec blandit lacus nulla, et rhoncus metus condimentum ac. Nulla vel dictum nisi. Nunc at commodo dolor, et fringilla metus.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.white,
                        thickness: 0.5,
                        height: 100,
                        indent: 20,
                        endIndent: 20,
                      ),
                      Card(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Text(
                                  "INFORMACIÓN EXTRA",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20,
                                    color: miColor1,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Nullam tincidunt tortor elit, eu imperdiet quam elementum quis. Donec consequat tellus sed tincidunt lobortis. Vivamus ac fringilla tortor, id feugiat dolor. Pellentesque ornare mauris est. Suspendisse potenti. In quis pharetra diam. Nam nec nunc facilisis, aliquam dolor in, interdum ex. Nulla diam lorem, sagittis eget magna vel, dapibus suscipit libero. Phasellus dapibus volutpat ante at cursus. Donec blandit lacus nulla, et rhoncus metus condimentum ac. Nulla vel dictum nisi. Nunc at commodo dolor, et fringilla metus.",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 15,
                                  color: miColor1,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_selectedIndex == 0) {
                                      _selectedIndex = 1;
                                    } else if (_selectedIndex == 1) {
                                      _selectedIndex = 2;
                                    } else {
                                      _selectedIndex = 0;
                                    }

                                    cambiarFondo(_selectedIndex);
                                  },
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            miColor1),
                                  ),
                                  child: const Text(
                                    'Cambia Color',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: cambiarFondo,
          backgroundColor: miColor2,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[500],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Fondo 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin_circle_rounded),
              label: 'Fondo 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.remove_circle),
              label: 'Fondo 3',
            ),
          ],
        ),
      ),
    );
  }

  void cambiarFondo(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        miColor1 = const Color.fromARGB(255, 73, 25, 82);
        miColor2 = const Color.fromARGB(255, 102, 54, 185);
      } else if (_selectedIndex == 1) {
        miColor1 = const Color.fromARGB(255, 236, 110, 7);
        miColor2 = const Color.fromARGB(255, 151, 141, 5);
      } else {
        miColor1 = const Color.fromARGB(255, 2, 15, 90);
        miColor2 = const Color.fromARGB(255, 89, 152, 211);
      }
    });
  }
}
