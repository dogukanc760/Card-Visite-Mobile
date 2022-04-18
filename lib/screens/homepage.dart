import 'package:cardvisite/components/slidebottombar.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
              child: const Text(
            'Card Veeeisite',
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
                child: Stack(children: [AnasayfaIcerik()]))),
      ),
    );
  }
}

class AnasayfaIcerik extends StatefulWidget {
  const AnasayfaIcerik({Key? key}) : super(key: key);

  @override
  _AnasayfaIcerikState createState() => _AnasayfaIcerikState();
}

class _AnasayfaIcerikState extends State<AnasayfaIcerik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(
              child: const Text(
            'Card Visite - Anasayfa',
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
                child: Stack(children: [
              Container(
                  color: Colors.grey.shade300,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                     Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 10,
                            height: 400,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        'assets/logo.png',
                                        width: 70,
                                        height: 70,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 0, 0),
                                      child: Text('Şirket Adı',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, -15.0, 0.0),
                                      child: TextButton.icon(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.person_add,
                                            size: 20,
                                          ),
                                          label: Text(
                                            'Takip Et',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                        transform: Matrix4.translationValues(
                                            70.0, 0.0, 0.0),
                                        child: FlatButton.icon(
                                            onPressed: () => showDialog(
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                        content: Container(
                                                      
                                                      height: 220,
                                                      child: Column(
                                                        children: [
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Şikayet Et',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .personal_injury_outlined),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Engelle',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .image_not_supported_rounded),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Direkt Mesaj',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .assistant_direction_sharp),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                          TextButton.icon(
                                                            label: Text(
                                                                'Görüşme İste',
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold)),
                                                            onPressed: () {},
                                                            icon: Icon(Icons
                                                                .phone),
                                                          ),
                                                          Divider(
                                                            color: Colors.grey,
                                                            height: 5,
                                                            thickness: 1,
                                                          ),
                                                        ],
                                                      ),
                                                    ))),
                                            icon: Icon(Icons.menu_open_rounded),
                                            label: Text('')))
                                  ],
                                ),
                                Container(
                                    transform: Matrix4.translationValues(
                                        0.0, -15.0, 0.0),
                                    child: Divider(
                                      color: Colors.grey,
                                      height: 5,
                                      thickness: 1,
                                      indent: 5,
                                    )),
                                Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width - 20,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/kartvizit.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width - 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Şirketimiz Yeni Kart Vizit ve Hizmetleri İle Karşınızda! '
                                        'Daha Fazlası İçin Takipte Kalın! ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black87),
                                      ),
                                    )),
                                Row(
                                  children: [
                                    Container(
                                      transform: Matrix4.translationValues(
                                          0.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon:
                                                Icon(Icons.volunteer_activism),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -20.0, 2.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -40.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.share),
                                            label: Text('')),
                                      ),
                                    ),
                                    Container(
                                      transform: Matrix4.translationValues(
                                          -60.0, 0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: TextButton.icon(
                                            onPressed: () {},
                                            icon: Icon(
                                                Icons.now_widgets_outlined),
                                            label: Text('')),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )),
                      ),
                    
                     ],
                  ))
            ]))),
      ),
    );
  }
}
