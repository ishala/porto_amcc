import 'package:flutter/material.dart';

class carDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Mobil',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Merek Mobil',
                    hintText: 'Masukkan merk mobil...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tahun Mobil',
                    hintText: 'Masukkan tahun mobil...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tipe Mobil',
                    hintText: 'Masukkan tipe mobil...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Range Harga Angsuran Asuransi Mobil (12 Bulan)',
                    hintText: 'Masukkan range harga asuransi...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class houseDetail extends StatelessWidget {
  const houseDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Rumah',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Luas Tanah',
                    hintText: 'Masukkan luas tanah...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tahun Beli',
                    hintText: 'Masukkan tahun beli...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Alamat',
                    hintText: 'Masukkan alamat...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Range Harga Angsuran Asuransi Rumah (12 Bulan)',
                    hintText: 'Masukkan range harga asuransi...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class motorDetail extends StatelessWidget {
  const motorDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Motor',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Merk Motor',
                    hintText: 'Masukkan merk motor...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tahun Motor',
                    hintText: 'Masukkan tahun motor...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tipe Motor',
                    hintText: 'Masukkan tipe Motor...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Range Harga Angsuran Motor (12 Bulan)',
                    hintText: 'Masukkan range harga asuransi...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class phoneDetail extends StatelessWidget {
  const phoneDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Smartphone',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Merk Smartphone',
                    hintText: 'Masukkan merk Smartphone...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tipe Merk',
                    hintText: 'Masukkan tipe merk...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tahun Beli',
                    hintText: 'Masukkan tahun beli...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText:
                        'Range Harga Angsuran Asuransi Smartphone (12 Bulan)',
                    hintText: 'Masukkan range harga asuransi...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class detailHealth extends StatelessWidget {
  const detailHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Kesehatan',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Banyak Anggota',
                    hintText: 'Masukkan Banyak Anggota...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Periode Tanggungan',
                    hintText: 'Masukkan Periode Tanggungan...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Kelas Asuransi',
                    hintText: 'Masukkan Kelas Asuransi..'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText:
                        'Range Harga Angsuran Asuransi Kesehatan (12 Bulan)',
                    hintText: 'Masukkan range harga asuransi...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}

class scholarDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size sizeAll = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Asuransi Pendidikan',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        actions: <Widget>[IconButton(onPressed: () {}, icon: Icon(Icons.help))],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tingkat Jenjang',
                    hintText: 'Masukkan tingkat jenjang...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Lama tahun tanggungan',
                    hintText: 'Masukkan Lama tahun tanggungan...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Tingkat Keketatan Diterima',
                    hintText: 'Masukkan Tingkat Keketatan Diterima...'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: sizeAll.width * 0.75,
              child: TextField(
                onChanged: (String value) {},
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Range Lama Uji Kelayakan',
                    hintText: 'Masukkan range Lama Uji Kelayakan...'),
              ),
            ),
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(100.0)),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 15),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
