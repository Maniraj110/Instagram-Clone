import 'package:flutter/material.dart';
import 'package:test_app/model/model.dart';
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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 245, 241, 236),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.add_circle_outline,
                size: width * 0.06,
              ),
              Text(
                "Instagram",
                style: TextStyle(
                  fontSize: width * 0.07,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Raleway",
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    size: width * 0.06,
                  ),
                  Positioned(
                    left: width * 0.03,
                    bottom: width * 0.04,
                    child: Stack(
                      children: [
                        Container(
                          height: width * 0.03,
                          width: width * 0.03,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.red,
                          ),
                        ),
                        Positioned(
                          left: width * 0.01,
                          child: Text(
                            "2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: width * 0.025,
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
          const Divider(),
          SizedBox(height: height * 0.01),
          StoryViewer(),
          SizedBox(height: height * 0.01),
          const Divider(),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Explore",
                style: TextStyle(fontSize: width * 0.06),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: width * 0.04,
                  right: width * 0.04,
                ),
                height: height * 0.05,
                width: width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    height * 0.2,
                  ),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.search_outlined,
                    size: width * 0.06,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: body_data.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(
                    width * 0.02,
                  ),
                  margin: EdgeInsets.all(
                    width * 0.02,
                  ),
                  height: width * 1.1,
                  width: width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      width * 0.05,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: height * 0.08,
                                  width: height * 0.08,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.network(
                                      body_data[index].avatar as String,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      body_data[index].name as String,
                                      style: TextStyle(
                                        fontSize: width * 0.05,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      body_data[index].text as String,
                                      style: TextStyle(fontSize: width * 0.03),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: width * 0.4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.send_rounded,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: width * 0.02,
                                ),
                                Icon(
                                  Icons.menu_rounded,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Container(
                        height: height * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(width * 0.05),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(width * 0.05),
                          child: Image.network(
                            body_data[index].img as String,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        body_data[index].desc as String,
                        style: TextStyle(fontSize: width * 0.04),
                      )
                    ],
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
