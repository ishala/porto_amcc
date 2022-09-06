import 'detail/detail_screen.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatelessWidget {
  final String name, pass;
  mainScreen({required this.name, required this.pass});

  Widget listCategory(String txt) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black)),
      child: Text(
        txt,
        style: TextStyle(fontSize: 12),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    Widget gridItem(
        String title,
        String imgUrl,
        //memasukkan class kedalam fungsi parameter
        Widget Function() detailScreen) {
      return Column(
        children: [
          SizedBox(
            height: 20.0,
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  fontFamily: 'Lato'),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imgUrl,
              width: 150,
              height: 106,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return detailScreen();
              }));
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(90, 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.black))),
            child: Text('Pilih'),
          )
        ],
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
                padding: EdgeInsets.only(right: 20.0),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.door_front_door_outlined,
                  color: Colors.black,
                  size: 30.0,
                ))
          ],
          elevation: 0,
          title: Text('Main Menu'),
        ),
        body: Column(
          children: <Widget>[
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 50),
                      height: sizeAll.height * 0.2 - 45,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50))),
                      child: Expanded(
                        child: Container(
                          height: sizeAll.height * 0.1 - 10,
                          width: sizeAll.width * 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'SELAMAT DATANG , ${name.toString()}',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 15.0),
                                child: Icon(
                                  Icons.account_circle,
                                  size: 50,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: sizeAll.height * 0.1,
                    child: Expanded(
                        child: Text(
                      'KATEGORI',
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: sizeAll.height * 0.1 - 47,
              width: sizeAll.width * 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Flexible(flex: 1, child: listCategory('Terpopuler')),
                  Flexible(flex: 1, child: listCategory('Terbaik')),
                  Flexible(flex: 1, child: listCategory('Paling Diminati')),
                  Flexible(flex: 1, child: listCategory('Pilihan Terbaik')),
                  Flexible(flex: 1, child: listCategory('Paling Bersahabat')),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: sizeAll.height * 0.1,
                    child: Text(
                      'Pilih Asuransi ',
                      style: TextStyle(fontFamily: 'Raleway', fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: sizeAll.height * 0.5 + 5,
              child: GridView.count(
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 10.0,
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                children: <Widget>[
                  gridItem('Mobil', 'images/car.jpg', () => carDetail()),
                  gridItem('Rumah', 'images/house.jpg', () => houseDetail()),
                  gridItem('Motor', 'images/motor.jpg', () => motorDetail()),
                  gridItem(
                      'Smartphone', 'images/phone.jpg', () => phoneDetail()),
                  gridItem(
                      'Kesehatan', 'images/health.jpg', () => detailHealth()),
                  gridItem(
                      'Pendidikan', 'images/scholar.jpg', () => scholarDetail())
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
