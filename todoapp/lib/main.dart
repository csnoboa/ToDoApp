import 'package:flutter/material.dart';
import 'models/global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(
    
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(title: 'ToDo App Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: SafeArea(
        child: DefaultTabController(
              length: 3,
              child: new Scaffold(
                body: Stack(
                  children: <Widget>[ 
                    TabBarView(
                      children: [
                        new Container(
                          color: darkGreyColor,
                        ),
                        new Container(
                          color: Colors.orange,
                        ),
                        new Container(
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 50),
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)
                          ),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Intray", style: intrayTitleStyle),
                          Container()
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(top: 135, left: MediaQuery.of(context).size.width*0.5 - 25),
                      child: FloatingActionButton(
                        child: Icon(Icons.add, size: 50),
                        backgroundColor: redColor,
                        onPressed: () {},
                      ),
                    ),
                  ]
                ),
                appBar: AppBar(
                  elevation: 0,
                  title: new TabBar(
                    tabs: [
                      Tab(
                        icon: new Icon(Icons.home),
                      ),
                      Tab(
                        icon: new Icon(Icons.rss_feed),
                      ),
                      Tab(
                        icon: new Icon(Icons.perm_identity),
                      ),
                    ],
                    labelColor: darkGreyColor,
                    unselectedLabelColor: Colors.blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorPadding: EdgeInsets.all(5.0),
                    indicatorColor: Colors.transparent,
                    ),
                    backgroundColor: Colors.white,
                ),
                backgroundColor: Colors.white,
              ),
            ),
        ),
    );
  }
}
