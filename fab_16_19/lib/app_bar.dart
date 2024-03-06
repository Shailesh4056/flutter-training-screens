import 'package:flutter/material.dart';
const TextStyle _textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
class AppBarOne extends StatelessWidget {
  const AppBarOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Without Back Button & Action",
            style: _textStyle,
          ),
      ),
    );
  }
}

class AppBarTwo extends StatelessWidget {
  const AppBarTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Center",
            style: _textStyle, textAlign: TextAlign.center)
      ),
    );
  }
}

class AppBarThree extends StatelessWidget {
  const AppBarThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("With Back Button",
              style: _textStyle, textAlign: TextAlign.center)
      ),
    );
  }
}

class AppBarFour extends StatelessWidget {
  const AppBarFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          leading: const Icon(Icons.arrow_back),
          title: const Text("With Single Action Button",
              style: _textStyle, textAlign: TextAlign.center),
        actions: const [
           Padding(
             padding: EdgeInsets.all(8.0),
             child: Icon(Icons.settings),
           ),
        ],
      ),
    );
  }
}

class AppBarFive extends StatelessWidget {
  const AppBarFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Search toolbar",
            style: _textStyle, textAlign: TextAlign.center),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded),
          )
        ],
      ),
    );
  }
}

class AppBarSix extends StatelessWidget {
  const AppBarSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Page Title",
            style: _textStyle, textAlign: TextAlign.center),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.share),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.horizontal_distribute),
          ),
        ],
      ),
    );
  }
}




