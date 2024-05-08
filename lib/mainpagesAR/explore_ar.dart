import 'package:flutter/material.dart';

import '../mainpagesEN/activitieslist.dart';
import '../mainpagesEN/home_page.dart';
import '../mainpagesEN/restaurantlist.dart';

class ExplorePAgeAR extends StatefulWidget {
  const ExplorePAgeAR({super.key});

  @override
  State<ExplorePAgeAR> createState() => _ExplorePAgeARState();
}

class _ExplorePAgeARState extends State<ExplorePAgeAR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "استكشف",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromRGBO(40, 87, 69, 1),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: const Icon(
              Icons.language,
              size: 35,
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://pbs.twimg.com/media/FB-uQo0VcAcWkXK?format=jpg&name=4096x4096", // Make sure the image path is correct
                        ),
                        fit: BoxFit.cover)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ActivitiesListAR()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 87, 69, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black45,
                                offset: Offset(3, 3),
                                blurRadius: 8)
                          ],
                        ),
                        Text(
                          'المناطق السياحية',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://golden4tic.com/storage/images/events/3OpbfpTC7hhiVt6GoeW9vdVzz4FlUEC5DZ6VQ0YG.jpg", // Make sure the image path is correct
                        ),
                        fit: BoxFit.cover)),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RestaurantListAR()),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(40, 87, 69, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Colors.black45,
                                offset: Offset(3, 3),
                                blurRadius: 8)
                          ],
                        ),
                        Text(
                          'المطاعم',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://jamalouki.net/jamalouki/uploads/images/2023/10/05/50197.jpeg", // Make sure the image path is correct
                        ),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
