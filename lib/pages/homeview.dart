import 'package:flutter/material.dart';
import 'package:gaming_app/pages/eventdetails.dart';
import 'package:gaming_app/widgets/EventCard.dart';

import '../widgets/custom_bottom_navigator.dart';

class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _Homeview();
}

class _Homeview extends State<Homeview> {
  TextStyle myStyle = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //Image
                Image.asset(
                  'assets/images/vr_image.png',
                  height: size.height * 0.4,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: size.height * 0.4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.transparent,
                        Colors.deepPurple.withOpacity(0.8),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                // Posiziona il testo desiderato sull'immagine
                Positioned(
                  bottom: 20,
                  left: 20,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Evento Gaming",
                        style: myStyle,
                      ),
                      Text(
                        "Un nuovo universo ",
                        style: myStyle,
                      ),
                      Text(
                        "Un nuovo modo di approcciare al mondo del gaming e dello sviluppo dei videogiochi!",
                        style: myStyle.copyWith(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // spazio
            SizedBox(height: size.height * 0.03), // 3% of the height

            // Seconda parte della home
            // creare due card

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                height: size.height * 0.3,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    EventCard(
                      title: "Workshop e aperitivo",
                      date: "18th January 2025",
                      price: "7.99",
                      imageUrl: "assets/images/workshop_image.png",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Workshop e aperitivo",
                              date: "18 Gen 2025",
                              indirizzoImmagine:
                                  "assets/images/workshop_image.png",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "7.99",
                              organizer: "Nexus Legends",
                              hour: "16.00 -21.00",
                              titleindirizzo: "Oval Lingotto",
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.03),
                    EventCard(
                      title: "Torneo di Zelda",
                      date: "19th January 2025",
                      price: "7.99",
                      imageUrl: "assets/images/zelda.jpg",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Torneo di Zelda",
                              date: "19 Gen 2025",
                              indirizzoImmagine: "assets/images/zelda.jpg",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "7.99",
                              organizer: "Nexus Legends",
                              hour: "09.00 - 18.00",
                              titleindirizzo: "Oval lingotto",
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: size.width * 0.03),
                    EventCard(
                      title: "Evento speciale",
                      date: "20th January 2025",
                      price: "9.99",
                      imageUrl: "assets/images/vr_image.png",
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Eventdetails(
                              title: "Evento speciale",
                              date: "20 Gen 2025",
                              indirizzoImmagine: "assets/images/vr_image.png",
                              indirizzoEvento: "Via Trucco, 70 -  10126 Torino",
                              price: "12.99",
                              organizer: "Nexus Legend",
                              hour: "16.00 -21.00",
                              titleindirizzo: "Oval lingotto",
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.03),

            //terza sezione
            //creare un bottone con il testo "Acquista"

            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
      // quarta parte della home
      // bottomNavigationBar
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

// Todo: creare una home scorrevole verticalmente con un appbar
