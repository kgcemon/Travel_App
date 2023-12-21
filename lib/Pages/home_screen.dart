import 'package:flutter/material.dart';
import 'package:fluxstore/Pages/Appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Icon(Icons.home,color: Colors.blue),
            Icon(Icons.track_changes),
            Icon(Icons.bus_alert),
            Icon(Icons.travel_explore_rounded),
        ],),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 20,
          backgroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const MyAppBar(),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const mySearchBar(),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 45,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 90,
                                  alignment: Alignment.center,
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      color: index == 0
                                          ? const Color(0x7ec0d6ef)
                                          : Colors.transparent,
                                      borderRadius: BorderRadius.circular(25)),
                                  child: Text("Hotels",
                                      style: TextStyle(
                                          color: index == 0
                                              ? const Color(0xff176FF2)
                                              : const Color(0xffB8B8B8))),
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Popular ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17)),
                              Text("See all",
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff176FF2))),
                            ],
                          ),
                          const PopularList(),
                          const Text("Recommended ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17)),
                          const SizedBox(
                            height: 10,
                          ),
                          GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisExtent: 150,
                                    crossAxisSpacing: 10),
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(
                                          'https://tfe-bd.sgp1.digitaloceanspaces.com/uploads/1623685867.jpg')),
                                  Container(
                                      alignment: Alignment.bottomLeft,
                                      child: const Text(
                                        "sajek rangamati",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ))
                                ],
                              );
                            },
                          )
                        ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class mySearchBar extends StatelessWidget {
  const mySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      elevation: MaterialStatePropertyAll(0),
      leading: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(Icons.search),
      ),
      hintText: "Find things to do",
      hintStyle: MaterialStatePropertyAll(
        TextStyle(fontSize: 12),
      ),
      backgroundColor: MaterialStatePropertyAll(
        Color(0xffF3F8FE),
      ),
    );
  }
}

class PopularList extends StatelessWidget {
  const PopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(10),
            width: 150,
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              image: DecorationImage(
                  image: NetworkImage(
                      'https://www.pegah.com.bd/images/tourist-spot/1691658816163_gallary_1jpg.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  width: 70,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Color(0xff4D5652)),
                  child: const FittedBox(
                    child: Text("Alley Palace",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                        color: Color(0xff4D5652),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.star, size: 15, color: Colors.yellow),
                          Text(
                            "4.1",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Image.asset('images/Heart.png', height: 15),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
