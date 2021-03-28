import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/izgaralar.dart';

class IzgaraKofte extends StatelessWidget {
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
                            MaterialPageRoute(builder: (context) => Izgaralar()),
                          );
                        }),
                    Text("Izgara Köfte"),
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
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                      child: SizedBox(
                        width: double.infinity,
                        height: 350,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: DecoratedBox(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: Text("Izgara Köfte",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: AssetImage("kofte.jpg"),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.darken)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.white,Colors.black]
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
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
                                padding: const EdgeInsets.all(15),
                                child: Center(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("Porsiyon",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.bold),),
                                            Text("Fiyat",style: TextStyle(fontSize: 14,color: Colors.black54,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text("1 porsiyon",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 22),),
                                            Text("20.00 ₺",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 22),),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12),
                                          child: Divider(height: 1,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 25),
                                          child: Text("200 gr Köfte (Bulgur Pilavı ve Salata ile Servis Edilir)",
                                            style: TextStyle(fontSize: 14,color: Colors.black54),),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
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
