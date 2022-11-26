import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: screenWidth,child: Image.asset("images/pizza.jpg")),
            Row(
              children: [
                SizedBox(
                  width: screenWidth / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Beğen", style: TextStyle(fontSize: screenWidth/25, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade500,
                    ),
                  ),
                ),
                SizedBox(
                  width: screenWidth / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Yorum Yap", style: TextStyle(fontSize: screenWidth/25, fontWeight: FontWeight.bold),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange.shade900),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 50),
              child: Row(
                children: [
                  Text(
                    "Pizza Tarifi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange.shade900),
                  ),
                  Spacer(),
                  Text(
                    "29 Ağustos",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight/50, bottom: screenHeight/70),
              child: Text("Fırında pişirmeye uygun.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight / 50),
              child: Text(
                "Bir çatal yardımıyla pizza hamurunun üzerinde delikler açın ve önceden ısıtılmış "
                "200 derece fırında 10 dakika pişirin. 10 dakika sonra hafif pişen hamuru fırından çıkarıp, "
                "hazırladığınız domates sosundan üzerine sürün. Pizza sosunu, domates sosuna, fesleğen, kekik, "
                "sarımsak ve zeytinyağı ekleyerek hazırlayabilirsiniz.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
