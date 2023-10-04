import 'package:flutter/material.dart';
import 'package:splash/util/image_constant/images.dart';
import 'package:splash/view/home_screen/bottomnavigation.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              color: Colors.black,
              child: Row(
                children: [
                  SizedBox(
                    width: 130,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    color: Colors.black,
                    child: Image.asset("assets/images/logos_netflix.png"),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    width: 30,
                    height: 50,
                    color: Colors.black,
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 150),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.black,
                child: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bottomnavigation())),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: images[index],
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.add_outlined,
                color: Colors.black,
              ),
              tooltip: "add profile",
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Add Profile",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
