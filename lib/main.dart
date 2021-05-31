import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const MaterialColor themeColor = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFF0E7AC7),
    100: const Color(0xFF0E7AC7),
    200: const Color(0xFF0E7AC7),
    300: const Color(0xFF0E7AC7),
    400: const Color(0xFF0E7AC7),
    500: const Color(0xFF0E7AC7),
    600: const Color(0xFF0E7AC7),
    700: const Color(0xFF0E7AC7),
    800: const Color(0xFF0E7AC7),
    900: const Color(0xFF0E7AC7),
  }
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PokeDex',
      theme: ThemeData(
        primarySwatch: themeColor
      ),
      home: MyHomePage(title: 'Pokedex'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpenBox = false; 
  int _selectedIndex = 1;
  var name = 'For You';

  void _openBox() {
    setState(() {
      isOpenBox = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  Widget get bottomNavigationBar {
    return Container(
      color: themeColor,
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(40),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
              backgroundColor: Colors.white,
            ),  
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: '',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: '',
              backgroundColor: Colors.white,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 35,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 4,
            type: BottomNavigationBarType.shifting,
        )
      ),
    );
  }

  Widget get bodyContent {
    return Container(color: Colors.red);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.black,
                child: Text(
                  'For You', 
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,          
                  )
                )
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Following', 
                style: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.black,          
                )
              ),
            )
            ]
        ),
        backgroundColor: Colors.transparent
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://i.pinimg.com/originals/16/67/80/166780b7fbad940e26876a4768eeda2c.jpg',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    height: 350,
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://i.pinimg.com/564x/2d/8e/fc/2d8efcae0ab119d4cd23a40fd1ba5364.jpg',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                            'https://pbs.twimg.com/media/DiCm-anX0AEdPpU.jpg',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    height: 390,
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://i1.wp.com/toppapeldeparede.com.br/wp-content/uploads/2020/11/img_5fb544e585faa.jpg?w=640&ssl=1',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                            'https://animesonline.com.br/wp-content/uploads/2020/11/cyberpunk-4k-wallpaper.jpg',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
                Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Container(
                    padding: EdgeInsets.all(0.0),
                    height: 360,
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            'https://meuprojetoparalelo.com.br/wp-content/uploads/2020/04/0b27db70c9cb47ad6ab6822cadc2e5f0.jpg',
                            width: 185,
                        ),
                       )
                      ],
                    ),
                  )
                ),
              ],
            ),
          ],
        )
      ),
      bottomNavigationBar: bottomNavigationBar
    );
  }
}

