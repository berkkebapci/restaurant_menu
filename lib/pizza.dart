import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/adana.dart';
import 'package:restaurant_menu/iskender.dart';
import 'package:restaurant_menu/main.dart';
import 'package:restaurant_menu/menu.dart';
import 'package:restaurant_menu/sucukluPizza.dart';
import 'package:restaurant_menu/tandir.dart';
import 'package:restaurant_menu/urfa.dart';

import 'karisikPizza.dart';
import 'konyaliPizza.dart';
import 'mozarellaliPizza.dart';

class Pizza extends StatelessWidget {
  final _notifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.light));

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeModel>(
        valueListenable: _notifier,
        builder: (_, model, __) {
          final mode = model.mode;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: mode,
            home: Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.arrow_back_sharp,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Menu()),
                          );
                        }),
                    Text("Pizza"),
                    IconButton(
                      icon: Icon(Icons.lightbulb),
                      onPressed: () => _notifier.value = ThemeModel(
                          mode == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light),
                    )
                  ],
                ),
              ),
              body: Container(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SucukluPizza()),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: DecoratedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Sucuklu Pizza",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("sucukluPizza.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Sucuklu Pizza
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MozarellaliPizza()),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: DecoratedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Mozarellalı Pizza",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("mozarellalipizza.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Mozarellalı Pizza
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KarisikPizza()),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: DecoratedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Karışık Pizza",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("karisikPizza.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Karışık Pizza
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => KonyaliPizza()),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: DecoratedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("Konyalı Pizza",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("konyaliPizza.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Konyalı Pizza
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class ThemeModel with ChangeNotifier {
  final ThemeMode _mode;
  ThemeMode get mode => _mode;

  ThemeModel(this._mode);
}
