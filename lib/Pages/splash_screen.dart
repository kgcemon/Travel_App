import 'package:flutter/material.dart';
import 'package:fluxstore/Pages/home_screen.dart';

class splash_Screen extends StatelessWidget {
  const splash_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        decoration: const BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.black)],
          image: DecorationImage(
              image: AssetImage("images/splash.png"), fit: BoxFit.cover),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(50),
                child: Image.asset("images/name.png"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 60),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Plan your ",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              fontSize: 22)),
                      const Text("Luxurious\nVacation",
                          style: TextStyle(
                              color: Colors.white, fontSize: 55, height: 0)),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff176FF2)),
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                )),
                            child: const Text(
                              "Explore",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
