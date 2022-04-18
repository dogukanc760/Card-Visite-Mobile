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
                          child: Center(child: Text('Doğukan Canerler', style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          color:Colors.black)),),
                        ),
                     
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: Center(child: Text('Şirket Adı LTD. ŞTİ.', style:TextStyle(fontSize: 17, fontWeight: FontWeight.bold,
                          color:Colors.blue[800])),),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.person_search_sharp, size: 30,), 
                          label: Text('Kullanıcı Bilgerim', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.qr_code_2, size: 30,), 
                          label: Text('QR Kod Oluşturma', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.link, size: 30,), 
                          label: Text('Kişisel Linkler', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.share, size: 30,), 
                          label: Text('Uygulamayı Paylaş', style:TextStyle(fontSize:17)))),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0,0,0),
                          child: Center(child:TextButton.icon(onPressed: (){}, 
                          icon: Icon(Icons.logout, size: 30,), 
                          label: Text('Çıkış Yap', style:TextStyle(fontSize:17)))),
                        ),
                      ],
                    )
                  ],
                )))));
  }
}
