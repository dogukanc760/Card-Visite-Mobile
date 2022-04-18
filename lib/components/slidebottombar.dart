import 'package:cardvisite/screens/homepage.dart';
import 'package:cardvisite/screens/library.dart';
import 'package:cardvisite/screens/profile_selectors.dart';
import 'package:cardvisite/widgets/search_display.dart';
import 'package:flutter/material.dart';
import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';

class DenemeSayfa extends StatefulWidget {
  @override
  _DenemeSayfaState createState() => _DenemeSayfaState();
}

class _DenemeSayfaState extends State<DenemeSayfa> {
  int seciliSayfa = 0;
  void sayfaDegistir(int index) {
    setState(() {
      seciliSayfa = index;
      print(seciliSayfa);
    });
    sayfaGoster(seciliSayfa);
  }

  sayfaGoster(int seciliSayfa) {
    if (seciliSayfa == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Anasayfa()),
      );
    } else if (seciliSayfa == 1) {
      _displayDialog(context);
    } else if (seciliSayfa == 2) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Taleplerim()),
      // );
    } else if (seciliSayfa == 3) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Kategoriler()),
      // );
      return Anasayfa();
    } else {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Hesabim()),
      // );
    }
  }

  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color(0xFFEB3A18),
            title: Text(
              'Arama İçeriğinizi Giriniz',
              style: TextStyle(color: Colors.white),
            ),
            content: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: "Arama İçeriğiniz",
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  new FlatButton(
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white, size: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Ara',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ), //new Text('Ara', style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  new FlatButton(
                    child: Row(
                      children: [
                        Icon(Icons.highlight_off,
                            color: Colors.white, size: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Kapat',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ), //new Text('Ara', style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              )
            ],
          );
        });
  }

  List<TabItem> tabItems = List.of([
    new TabItem(Icons.home, "Anasayfa", Colors.blue),
    new TabItem(Icons.search, "Kartvizit Ara", Colors.orange),
    new TabItem(Icons.layers, "Kitaplık", Colors.red),
    new TabItem(Icons.new_label_outlined, "Yeni Katılanlar", Colors.cyan),
    new TabItem(Icons.person_pin_rounded, "Profil", Colors.black),
  ]);

  int seciliPozisyon = 0;
  late CircularBottomNavigationController _navigationController;

  @override
  void initState() {
    super.initState();
    _navigationController =
        new CircularBottomNavigationController(seciliPozisyon);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Padding(
            child: bodyContainer(),
            padding: EdgeInsets.only(bottom: 60),
          ),
          Align(alignment: Alignment.bottomCenter, child: bottomNav())
        ],
      ),
    );
  }

  Widget bodyContainer() {
    Color selectedColor = tabItems[seciliPozisyon].color;
    String slogan = '';
    Widget? vicit;
    switch (seciliPozisyon) {
      case 0:
        slogan = 'Anasayfa';
        vicit = AnasayfaIcerik();

        break;
      case 1:
        slogan = "Kartvizit Ara";
        // vicit = SearchBar();
        break;
      case 2:
        slogan = "Kitaplık";
        vicit = Library();
        break;
      case 3:
        slogan = "Yeni Katılanlar";
        break;
      case 4:
        slogan = "Profil";
        vicit = ProfileSelectors();
        break;
    }
    return Container(
      child: vicit,
    );
  }

  Widget bottomNav() {
    return CircularBottomNavigation(
      tabItems,
      controller: _navigationController,
      barHeight: 60,
      barBackgroundColor: Colors.white,
      animationDuration: Duration(milliseconds: 300),
      selectedCallback: (int selectedPos) {
        setState(() {
          seciliSayfa = selectedPos;
          seciliPozisyon = selectedPos;
          print(seciliSayfa);
        });
      },
    );
  }
}
