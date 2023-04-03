import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width * .6,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  hintText: 'search Product',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            SizedBox(
              width: 50,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_alarm_outlined))
          ],
        ),
        Divider(
          thickness: 2,
        ),
        Container(
          child: CarouselSlider.builder(
              itemCount: 7,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                        width: 350,
                        height: 200,
                        child: Image.asset(
                            'images/sunset-drawing-animals-lake-wallpaper-preview.jpg'),
                      ),
              options: CarouselOptions(autoPlay: true)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'More Category',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.cyan,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15),
          width: double.infinity,
          height: 90,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 30,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                    ),
                    ),
                    Text('User')
                  ],
                ),
              );
            },
          ),
        ),
       
      
     
          
        
      ]),
    );
  }
}
