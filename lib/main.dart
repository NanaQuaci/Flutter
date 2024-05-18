import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //     color: Colors.white70,
    //     child: ButtonBar(
    //       alignment: MainAxisAlignment.spaceEvenly,
    //       children: <Widget>[
    //         IconButton(
    //           icon: Icon(Icons.map),
    //           onPressed: () {},
    //         ),
    //       ],
    //     ));
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Pages'),
      ),
      // body: Center(
      //   child: Image.asset(
      //     'assets/images/logo1.jpeg',
      //   ),
      // ),

      body: SafeArea(
         child: Container(
        height: MediaQuery.of(context).size.height,
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ImagesAndIconWidget(),
                Divider(),
                BoxDecoratorWidget(),
                Divider(),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

class ImagesAndIconWidget extends StatelessWidget {
  const ImagesAndIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage("assets/images/logo1.jpeg"),
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width / 3,
          ),
          Image.network(
            'https://flutter.io/images/catalog-widget-placeholder.png',
            width: MediaQuery.of(context).size.width / 3,
          ),
          Icon(
            Icons.brush,
            color: Colors.lightBlue,
            size: 48.0,
          ),
        ],
      );
    });
  }
}

class BoxDecoratorWidget extends StatelessWidget {
  const BoxDecoratorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: 100.0,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 10.0),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              child: TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 16.0,
                ),
                decoration: InputDecoration(
                  labelText: 'Notess',
                  labelStyle: TextStyle(color: Colors.purple),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
