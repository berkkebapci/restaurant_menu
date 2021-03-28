import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/adana.dart';
import 'package:restaurant_menu/iskender.dart';
import 'package:restaurant_menu/main.dart';
import 'package:restaurant_menu/menu.dart';
import 'package:restaurant_menu/tandir.dart';
import 'package:restaurant_menu/urfa.dart';

class Kebaplar extends StatelessWidget {
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
                    Text("Kebaplar"),
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
                            MaterialPageRoute(builder: (context) => Adana()),
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
                                    child: Text("Adana Kebap",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("adana.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Adana Kebap
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Urfa()),
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
                                    child: Text("Urfa Kebap",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("urfa.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Urfa Kebap
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Tandir()),
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
                                    child: Text("Tandır Kebap",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("tandir.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//Tandır Kebap
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Iskender()),
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
                                    child: Text("İskender Kebap",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                    image: AssetImage("iskender.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.5),
                                        BlendMode.darken)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),//İskender Kebap
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
