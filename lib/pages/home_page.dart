import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem = [
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpeg',
    'assets/images/ic_image3.jpg',
    'assets/images/ic_image4.jpg',
    'assets/images/ic_image5.jpg',
    'assets/images/ic_image6.png',
    'assets/images/ic_image3.jpg',
    'assets/images/ic_image1.jpg',
    'assets/images/ic_image2.jpeg',
    'assets/images/ic_image4.jpg',
    'assets/images/ic_image5.jpg',
    'assets/images/ic_image6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Apple Products'),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 36,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('7',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.deepOrange,
      body: Container(
        child: Column(
          children: [
            // header
            Container(
              margin: EdgeInsets.all(10),
              height: 240,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/ic_image1.jpg'),
                    fit: BoxFit.cover,
                  )
              ),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.7),
                      ],
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Lifestyle Sale',style: TextStyle(fontSize: 35,color: Colors.white),),
                    SizedBox(height: 30,),
                    // Button
                    Container(
                      height: 50,
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextButton(
                        child: Text('Shop now', style: TextStyle(color: Colors.grey.shade900,),),
                        onPressed: (){},
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            // Body
            Expanded(
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  padding: EdgeInsets.all(10),
                  crossAxisCount: 1,
                  children: _listItem.map((item) => cellOfList(item)).toList(),
                )
            )
          ],
        ),
      ),
    );
  }
  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(item),
              fit: BoxFit.cover,
            )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite,color: Colors.red,size: 35,),
          ],
        ),
      ),
    );
  }
}
