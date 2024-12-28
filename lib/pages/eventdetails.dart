import 'package:flutter/material.dart';

import '../widgets/custom_bottom_navigator.dart';

class Eventdetails extends StatelessWidget {
  final String title;
  final String date;
  final String indirizzoImmagine;
  final String indirizzoEvento;
  final String titleindirizzo;
  final String price;
  final String organizer;
  final String hour;

  const Eventdetails({
    super.key,
    required this.title,
    required this.date,
    required this.indirizzoImmagine,
    required this.indirizzoEvento,
    required this.price,
    required this.organizer,
    required this.hour,
    required this.titleindirizzo,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromRGBO(79, 9, 248, 100),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  indirizzoImmagine,
                  height: size.height * 0.4,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    title: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    actions: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    title: Text(
                      date,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle:
                        Text(hour, style: TextStyle(color: Colors.white70)),
                  ),
                  ListTile(
                    leading: const Icon(
                      Icons.location_on_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      titleindirizzo,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: Text(indirizzoEvento,
                        style: TextStyle(color: Colors.white70)),
                  ),
                  ListTile(
                    leading: Image.asset(
                      "assets/icons/nexus_legends.png",
                      width: 40,
                      height: 40,
                    ),
                    title: Text(
                      organizer,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    subtitle: const Text(
                      "organizzatore",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFA9EC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {},
                child: const Text("Acquista € 7.99"),
              ),
            ),
          ],
        ),

        //todo: spostare la bottomnavigationbar in un widget a parte

        bottomNavigationBar: const CustomBottomNavigator());
  }
}
