import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:restaurant_menu/main.dart';
import 'package:restaurant_menu/onay.dart';

class Rez extends StatefulWidget {
  @override

  _RezState createState() => _RezState();
}

class _RezState extends State<Rez> {
  final _notifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.light));
  final _formKey = GlobalKey<FormState>();

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
              body: Form(
                key: _formKey,
                child: ListView(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Text(
                            "Rezervasyon Oluşturun",
                            style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                          ),
                              )),//Text
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              "Lütfen Tüm Alanları Eksiksiz Doldurunuz.",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red.shade300,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),//Text
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Adınız",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: Icon(Icons.star,color: Colors.red,size: 11),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 5,
                                    ),
                                  ),
                                  hintText: "Adınız"),
                              validator: (text){
                                if(text==null || text.isEmpty){
                                  return "Lütfen Boş Bırakmayınız";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),//Ad
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Telefon",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: Icon(Icons.star,color: Colors.red,size: 11),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 5,
                                    ),
                                  ),
                                  hintText: "Telefon"),
                              validator: (text){
                                if(text==null || text.isEmpty){
                                  return "Lütfen Boş Bırakmayınız";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),//Tel
                         /* Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: DateTimePickerFormField(
                              style: TextStyle(fontSize: 20),
                              firstDate: DateTime(2010),
                              lastDate: DateTime(2100),
                              inputType: InputType.both,
                              //keyboardType: TextInputType.datetime,
                              editable: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  alignLabelWithHint: true,
                                  contentPadding: EdgeInsets.only(left: 5),
                                  hintText: "Zaman ",
                                  labelStyle: TextStyle(fontSize: 20),
                                  ),
                              onSaved: (girilenzaman) {
                                zaman = girilenzaman;
                              },
                            ),
                          ),//Tarih*/
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Tarih",
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: Icon(Icons.star,color: Colors.red,size: 11),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(
                                    color: Colors.black38,
                                    width: 5,
                                  ),
                                ),
                              ),
                              validator: (text){
                                if(text==null || text.isEmpty){
                                  return "Lütfen Boş Bırakmayınız";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),//Tarih
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Kişi Sayısı",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                    child: Icon(Icons.star,color: Colors.red,size: 11),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 5,
                                    ),
                                  ),
                                  hintText: "Kişi Sayısı"),
                              validator: (text){
                                if(text==null || text.isEmpty){
                                  return "Lütfen Boş Bırakmayınız";
                                }
                                return null;
                              },
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),//Kişi Sayısı
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  labelText: "Özel İstek",
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(bottom: 25),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                      color: Colors.black38,
                                      width: 5,
                                    ),
                                  ),
                                  hintText: "Özel İstek"),
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),//Özel İstek
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                color: Colors.blue,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Rezervasyon Oluştur",
                                    style:
                                        TextStyle(color: Colors.white, fontSize: 25),
                                  ),
                                ),
                                onPressed: () {
                                  if(_formKey.currentState.validate()) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Onay()),
                                    );
                                  }
                                }),
                          ),//Buton
                        ],
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
