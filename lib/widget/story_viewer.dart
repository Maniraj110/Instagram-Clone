import 'package:flutter/material.dart';
import '../model/model.dart';

class StoryViewer extends StatelessWidget {
  const StoryViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (ctx, i) {
          return Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    margin: EdgeInsets.all(
                      width * 0.02,
                    ),
                    width: width * 0.2,
                    height: width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        data[i].url as String,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  if (data[i].text == "1")
                    Positioned(
                      left: width * 0.1,
                      top: width * 0.2,
                      child: Stack(children: [
                        Container(
                          width: width * 0.05,
                          height: width * 0.05,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 6, 214),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            size: width * 0.05,
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ),
                ],
              ),
              if (data[i].text != "1")
                Container(
                  margin: EdgeInsets.only(
                    right: width * 0.01,
                  ),
                  child: Text(
                    data[i].text as String,
                    style: TextStyle(
                      fontSize: width * 0.03,
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
