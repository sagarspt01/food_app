import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/component/mybox.dart';
import 'package:food_app/component/scroable_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            color: Colors.white,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey[300],
                          child: Image.asset("assets/pic.png"),
                        ),
                        Text("name $index")
                      ],
                    ));
              },
            ),
          ),
          Divider(height: 0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ScroableContainer(imagescroll: "assets/pic3.png"),
                ScroableContainer(imagescroll: "assets/pic2.png"),
                ScroableContainer(imagescroll: "assets/pic3.png"),
                SizedBox(
                  width: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Buy Again",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 600,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
              ),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // do some task
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    // color: Colors.grey[300],
                    child: Center(child: MyBox()),
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
