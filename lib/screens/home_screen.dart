import 'package:flutter/material.dart';
import 'package:stayhome/models/resource_model.dart';
import 'package:stayhome/widgets/home_activities.dart';
import 'package:stayhome/widgets/online_resources.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Education';
  callback(category) {
    setState(() {
      selectedCategory = category;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: Row(children: [
            Text('Home activities',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ),
        Container(
          child: HomeActivities(),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 10, 20),
          child: Row(children: [
            Text('Online resources',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ),
        OnlineResources(callback),
        Expanded(
          child: Container(
              child: Row(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 10.0),
                    scrollDirection: Axis.vertical,
                    itemCount: filter().length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {});
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: index % 2 == 0 ? Theme.of(context).accentColor : Theme.of(context).errorColor,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Row(children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(filter()[index].name,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30)),
                                      Text( filter()[index].schools.toString() + ' schools',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14)),
                                       Text('> ' + filter()[index].courses.toString() + ' courses',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14)),       
                                    ],
                                  ),
                                ]),
                              ))
                        ),
                      );
                    }),
              ),
            ),
          ])),
        ),
      ]),
    );

 
  }
  List<Resource> filter(){
    return resources.where((item) => item.category == selectedCategory).toList();
  }
}
