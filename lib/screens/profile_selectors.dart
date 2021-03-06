import 'package:flutter/material.dart';

class ProfileSelectors extends StatefulWidget {
  const ProfileSelectors({Key? key}) : super(key: key);

  @override
  _ProfileSelectorsState createState() => _ProfileSelectorsState();
}

class _ProfileSelectorsState extends State<ProfileSelectors> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Center(
                  child: const Text(
                'Card Visite - Profil',
                style: TextStyle(color: Colors.black54),
              )),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            body: SafeArea(
                top: true,
                bottom: true,
                left: true,
                right: true,
                child: SingleChildScrollView(
                    child: Stack(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFF),
                              image: const DecorationImage(
                                image: AssetImage(
                                    'assets/logo.png'),
                                fit: BoxFit.fill,
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              
                            ),
                          ),
                        ),
                       Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Center(child: Text('Do??ukan Canerler', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color:Colors.black)),),
                        ),
                     
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Center(child: Text('??irket Ad?? LTD. ??T??.', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold,
                          color:Colors.blue[800])),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.person_search_sharp, size: 30,), 
                          label: Text('Kullan??c?? Bilgerim', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.qr_code_2, size: 30,), 
                          label: Text('QR Kod Olu??turma', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.link, size: 30,), 
                          label: Text('Ki??isel Linkler', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.share, size: 30,), 
                          label: Text('Uygulamay?? Payla??', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.logout, size: 30,), 
                          label: Text('????k???? Yap', style:TextStyle(fontSize:17)))),
                        ),
                      ],
                    )
                  ],
                )))));
  }
}
