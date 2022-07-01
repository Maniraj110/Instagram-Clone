import 'package:flutter/material.dart';
import './widget/story_viewer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 250, 244),
      body: Column(
        children: [
          SizedBox(
              height: MediaQuery.of(context).padding.top +
                  MediaQuery.of(context).size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: MediaQuery.of(context).size.width * 0.06,
              ),
              Text(
                "Instagram",
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway",
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: MediaQuery.of(context).size.width * 0.06,
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.03,
                    bottom: MediaQuery.of(context).size.width * 0.04,
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width * 0.03,
                          width: MediaQuery.of(context).size.width * 0.03,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width * 0.01,
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          StoryViewer(),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Explore",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.06),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.04,
                  right: MediaQuery.of(context).size.width * 0.04,
                ),
                height: MediaQuery.of(context).size.height * 0.04,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.search_outlined,
                    size: MediaQuery.of(context).size.width * 0.06,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.05,
                  ),
                  height: MediaQuery.of(context).size.width * 0.7,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
