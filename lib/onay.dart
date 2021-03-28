import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/main.dart';

class Onay extends StatelessWidget {
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
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        }),
                    Text("BERK CAFE"),
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
                      padding: const EdgeInsets.all(40),
                      child:
                          Icon(Icons.check, size: 150, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Center(
                        child: Text(
                            "Rezervasyon İşleminiz Başarıyla Tamamlanmıştır.",
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Center(
                        child: Text(
                          "En Kısa Sürede Sizinle İletişime Geçeceğiz.",
                          style:
                              TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          color: Colors.blue,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Ana Sayfa",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyApp()),
                            );
                          }),
                    ),
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
