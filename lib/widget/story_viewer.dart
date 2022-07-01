import 'package:flutter/material.dart';
import '../model/model.dart';

class StoryViewer extends StatelessWidget {
  const StoryViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
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
                      MediaQuery.of(context).size.width * 0.02,
                    ),
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.2,
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
                      left: MediaQuery.of(context).size.width * 0.1,
                      top: MediaQuery.of(context).size.width * 0.2,
                      child: Stack(children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.05,
                          height: MediaQuery.of(context).size.width * 0.05,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 214, 6, 214),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.add,
                            size: MediaQuery.of(context).size.width * 0.05,
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
                    right: MediaQuery.of(context).size.width * 0.01,
                  ),
                  child: Text(
                    data[i].text as String,
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.03,
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
