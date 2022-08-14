import 'package:flutter/material.dart';

class Ebpearls extends StatelessWidget {
  const Ebpearls({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: const Color.fromARGB(0xff, 0xf8, 0xf8, 0xf8),
          elevation: 0.8,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Container(
              padding: const EdgeInsets.all(8),
              // child: const Text("ok"),
              child: Image.asset(
                'assets/logo.png',
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: const Center(
            child: Text("Home",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: TabBarView(
            children: [
              ListView(
                children: [
                  const SizedBox(height: 20),
                  const Center(
                      child: Text(
                    "Award-Winning",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                  const Center(
                    child: Text(
                      "digital agency",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      children: [
                        grid('assets/ic_projects.png', "3400+",
                            "Projects Delivered"),
                        const SizedBox(
                          width: 10,
                        ),
                        grid('assets/ic_developers.png', "180+", "Developers"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Row(
                      children: [
                        grid('assets/ic_years_tick.png', "15+",
                            "Years in operation"),
                        const SizedBox(
                          width: 10,
                        ),
                        grid('assets/ic_happy.png', "68+", "awards"),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xfff4f4f4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "God grant me serenity to accept the things i can't change ability to accept the things i can and wisdowm to know the difference between two",
                        style: TextStyle(fontSize: 20, fontFamily: 'poppins'),
                      ))
                ],
              ),
              onConstruction(),
              onConstruction(),
              onConstruction(),
              onConstruction(),
            ],
          ),
        ),
        bottomNavigationBar: menu(),
      ),
    );
  }
}

Widget menu() {
  return Container(
    color: const Color(0xff292A3B),
    child: const TabBar(
      labelColor: Color(0xffffcd06),
      unselectedLabelColor: Colors.white70,
      indicatorColor: Color(0xffffcd06),
      tabs: [
        Tab(
          text: "Home",
          icon: Icon(Icons.home),
        ),
        Tab(
          text: "Projects",
          icon: Icon(Icons.money),
        ),
        Tab(
          text: "About us",
          icon: Icon(Icons.beach_access),
        ),
        Tab(
          text: "Our Team",
          icon: Icon(Icons.abc),
        ),
        Tab(
          text: "Contact",
          icon: Icon(Icons.contact_mail),
        ),
      ],
    ),
  );
}

Widget onConstruction() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(
        'assets/logo.png',
        height: 100,
      ),
      const SizedBox(
        height: 10,
      ),
      const Text("This is work in progress")
    ],
  );
}

Widget grid(String icon, String text1, String text2) {
  return Container(
    padding: const EdgeInsets.all(20),
    constraints: const BoxConstraints(minWidth: 200),
    decoration: BoxDecoration(
        color: const Color(0xffffcd06),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          icon,
          height: 30,
        ),
        Text(
          text1,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
