import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/domatesCorbasi.dart';
import 'package:restaurant_menu/ezogelinCorbasi.dart';
import 'package:restaurant_menu/main.dart';
import 'package:restaurant_menu/menu.dart';
import 'package:restaurant_menu/mercimekCorbasi.dart';

class Corba extends StatelessWidget {
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
                    Text("Çorbalar"),
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
                            MaterialPageRoute(builder: (context) => MercimekCorbasi()),
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
                                    child: Text("Mercimek Çorbası",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("mercimekCorbasi.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Mercimek Çorbası
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DomatesCorbasi()),
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
                                    child: Text("Domates Çorbası",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("domatesCorbasi.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Domates Çorbası
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EzogelinCorbasi()),
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
                                    child: Text("Ezogelin Çorbası",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("ezogelinCorbasi.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Ezogelin Çorbası
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
