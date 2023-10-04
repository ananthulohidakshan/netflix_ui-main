import 'package:flutter/material.dart';
import 'package:splash/util/image_constant/images.dart';

class preview extends StatefulWidget {
  const preview({super.key});

  @override
  State<preview> createState() => _previewState();
}

class _previewState extends State<preview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "My Previews ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: emalno.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  backgroundColor: Color(0xff161719),
                  radius: 50,
                  child: emalno[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
