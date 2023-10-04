import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:splash/util/image_constant/images.dart';

import 'package:splash/view/home_screen/movies.dart';
import 'package:splash/view/home_screen/preview.dart';
import 'package:splash/view/home_screen/video.dart';

class homeimage extends StatefulWidget {
  const homeimage({super.key});

  @override
  State<homeimage> createState() => _homeimageState();
}

class _homeimageState extends State<homeimage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CarouselSlider(
                items: List.generate(
                    changer.length,
                    (index) => Container(
                          height: 300,
                          child: changer[index],
                        )),
                options: CarouselOptions(
                  height: 350,
                  aspectRatio: 1,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => video()));
                    },
                    child: Container(
                      width: 110,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            size: 30,
                            color: Colors.black,
                          ),
                          Text(
                            "Play",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("My List",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  SizedBox(
                    width: 100,
                  ),
                  Text("info",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              preview(),
              SizedBox(
                height: 20,
              ),
              movie(
                title: "Popular on Netflix",
              ),
              SizedBox(
                height: 20,
              ),
              movie(title: "Trending Now"),
              SizedBox(
                height: 20,
              ),
              movie(title: "Top 10 in India Today"),
              SizedBox(
                height: 20,
              ),
              movie(title: "My List"),
              SizedBox(
                height: 20,
              ),
              movie(title: "African Movies"),
              SizedBox(
                height: 20,
              ),
              movie(title: "Mollywood Movies & TV"),
              SizedBox(
                height: 20,
              ),
              movie(title: "Netflix Originals"),
              SizedBox(
                height: 20,
              ),
              movie(title: " Watch It Again"),
            ],
          ),
        ),
      ),
    );
  }
}
