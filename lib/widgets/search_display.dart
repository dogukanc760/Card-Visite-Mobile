import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({ Key? key }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _textFieldController;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      AlertDialog(
            backgroundColor: Color(0xFFEB3A18),
            title: Text(
              'Arama İçeriğinizi Giriniz',
              style: TextStyle(color: Colors.white),
            ),
            content: Text(''),
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
          )
       
    );
  }
}