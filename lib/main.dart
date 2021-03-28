import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restaurant_menu/menu.dart';
import 'package:restaurant_menu/reservation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BERK CAFE",
      theme: ThemeData.light(),
      home: MyHomePage(title: 'BERK CAFE'),
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
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("background.jpg"),fit: BoxFit.fitHeight,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.dstATop)) ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  ),
                    color: Colors.black54,
                    child: Text(
                      "Menü",
                      style: TextStyle(color: Colors.white,fontSize: 35),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Menu()),
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    color: Colors.black54,
                    child: Text(
                      "Rezervasyon",
                      style: TextStyle(color: Colors.white,fontSize: 35),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Rez()),
                      );
                    }
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: SizedBox(
                height: 80,
                width: double.infinity,
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    color: Colors.black54,
                    child: Text(
                      "Çıkış",
                      style: TextStyle(color: Colors.white,fontSize: 35),
                    ),
                    onPressed: () {
                      cikis();
                    }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void cikis(){
  SystemNavigator.pop();
}