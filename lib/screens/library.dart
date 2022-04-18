import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Center(
                  child: const Text(
                'Card Visite - Kitaplık',
                style: TextStyle(color: Colors.black54),
              )),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            body: Scrollbar(
              isAlwaysShown: true,
              child: Container(
                child: Container(
                  child: GridView.builder(
                    padding: EdgeInsets.all(25),
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        childAspectRatio: 0.9,
                        mainAxisSpacing: 25,
                        crossAxisSpacing: 20),
                    itemBuilder: (BuildContext context, int sayi) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage('assets/kartvizit.jpg'),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 7,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 220, 0, 0),
                                child: Container(
                                  transform: Matrix4.translationValues(120.0, 0.0, 0.0),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Text('Şirket Adı',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.indigo.shade400))),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                                child: Container(
                                   transform: Matrix4.translationValues(-40.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.facebook)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.video_call)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.app_registration)),
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              Icon(Icons.brightness_low_outlined)),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.account_balance)),
                                    ],
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.fromLTRB(0, 250, 0, 0),
                                child: Container(
                                   transform: Matrix4.translationValues(-320.0, 0.0, 0.0),
                                  child: Row(
                                    children: [
                                     TextButton.icon(onPressed: (){}, icon: Icon(Icons.person_add), 
                                     label: Text('Takip Et')),
                                     TextButton.icon(onPressed: (){}, icon: Icon(Icons.call), 
                                     label: Text('Görüşme İste')),
                                     TextButton.icon(onPressed: (){}, icon: Icon(Icons.favorite), 
                                     label: Text('Favori')),
                                    ],
                                  ),
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )));
  }
}
