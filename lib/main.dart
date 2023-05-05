import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Myapp(), 
    )
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  List View = [
    {
      'img': "assets/images/amit-pritam-jTBQapbsf7I-unsplash.jpg",
      'name': "Animal 1",
      'exten': 1,
      'hight': 1.7,
    },
    {
      'img': "assets/images/daniel-shapiro-tr_J_9_9-Do-unsplash.jpg",
      'name': "Animal 2",
      'exten': 1,
      'hight': 1.4,
    },
    {
      'img': "assets/images/georgi-kalaydzhiev-rNGPTMWLwo0-unsplash.jpg",
      'name': "Animal 3",
      'exten': 1,
      'hight': 1.4,
    },
    {
      'img': "assets/images/kristin-o-karlsen-iqV24hXU2f4-unsplash.jpg",
      'name': "Animal 4",
      'exten': 1,
      'hight': 1.7,
    },
    {
      'img': "assets/images/robbin-grimm-uO1tb_Cd2yk-unsplash.jpg",
      'name': "Animal 5",
      'exten': 1,
      'hight': 1.7,
    },
    {
      'img': "assets/images/sam-power-doBTcL41bws-unsplash.jpg",
      'name': "Animal 6",
      'exten': 1,
      'hight': 1.7,
    },
    {
      'img': "assets/images/samuel-jeronimo-yKkOcP4Tz3U-unsplash.jpg",
      'name': "Animal 7",
      'exten': 1,
      'hight': 1.7,
    },
    {
      'img': "assets/images/toby-G6fCo4KwPes-unsplash.jpg",
      'name': "Animal 8",
      'exten': 1,
      'hight': 1.7,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered View"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff122950), Color(0xff4c7fce)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: [
                    ...View.map(
                          (e) => StaggeredGridTile.count(
                          crossAxisCellCount: e['exten'],
                          mainAxisCellCount: e['hight'],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(e['img']),
                              Text(e['name'],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),)
                            ],
                          )),
                    ).toList(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
