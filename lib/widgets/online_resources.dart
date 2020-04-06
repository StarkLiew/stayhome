import 'package:flutter/material.dart';

class OnlineResources extends StatefulWidget {
  final Function(String) callback;
  
  OnlineResources(
    this.callback,
  );

  @override
  _OnlineResources createState() => _OnlineResources();


}

class _OnlineResources extends State<OnlineResources> {
  int selectedIndex = 0;
  String selectedCategory = 'Education';
  

  List items = [
    'Education',
    'Entertainment',
    'Sport',
    'Recipes',
    'Art',
    'Do-it-Yourself'
  ];

  callback(category) {
    setState(() {
       selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
          child: Column(
          
            children: <Widget>[
             
              Container(
                height: 50,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index;
                            selectedCategory = items[index];
                          });
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 18.0),
                              Container(
                                decoration: BoxDecoration(
                                    border: BorderDirectional(
                                        bottom: BorderSide(
                                            color: selectedIndex == index
                                                ? Colors.black
                                                : Colors.white,
                                            width: 3))),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Column(children: <Widget>[
                                    Text(
                                      items[index],
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ]),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
             ],
          ),
          
        ),
       
      ]
    );
  }
}
