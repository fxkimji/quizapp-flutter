import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Homepage(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/1': (context) => Homepage(),
        '/2': (context) => Pagetwo(),
        '/3': (context) => Score()
      },
    ));

class Homepage extends StatefulWidget {
  Quiz createState() => Quiz();
}

int correctans = 0;

class Quiz extends State<Homepage> {
  String q1 = '';
  String q2 = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QUIZ APP')),
      body: Center(
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Q1) What is the capital of india ?',
                      style: TextStyle(fontSize: 20)),
                  Row(children: <Widget>[
                    Expanded(
                        child: RadioListTile(
                            title: const Text('Mumbai'),
                            value: "Mumbai",
                            groupValue: q1,
                            onChanged: (value) {
                              q1 = value.toString();
                              setState(() {});
                            })),
                    Expanded(
                        child: RadioListTile(
                            title: const Text('Chennai'),
                            value: "Chennai",
                            groupValue: q1,
                            onChanged: (value) {
                              q1 = value.toString();
                              setState(() {});
                            })),
                  ]),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: RadioListTile(
                              title: const Text('Delhi'),
                              value: "Delhi",
                              groupValue: q1,
                              onChanged: (value) {
                                q1 = value.toString();
                                correctans = correctans + 1;
                                setState(() {});
                              })),
                      Expanded(
                          child: RadioListTile(
                              title: const Text('Indore'),
                              value: "Indore",
                              groupValue: q1,
                              onChanged: (value) {
                                q1 = value.toString();
                                setState(() {});
                              }))
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                      'Q2) Which one of the following is not a union territoryy',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center),
                  Row(children: <Widget>[
                    Expanded(
                        child: RadioListTile(
                            title: const Text('Jammu & Kashmir'),
                            value: "Jammu & Kashmir",
                            groupValue: q2,
                            onChanged: (value) {
                              q2 = value.toString();
                              setState(() {});
                            })),
                    Expanded(
                        child: RadioListTile(
                            title: const Text('Manipur'),
                            value: "Manipur",
                            groupValue: q2,
                            onChanged: (value) {
                              q2 = value.toString();
                              correctans = correctans + 1;
                              setState(() {});
                            })),
                  ]),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: RadioListTile(
                              title: const Text('Chandigarh'),
                              value: "Chandigarh",
                              groupValue: q2,
                              onChanged: (value) {
                                q2 = value.toString();
                                setState(() {});
                              })),
                      Expanded(
                          child: RadioListTile(
                              title: const Text('Ladakh'),
                              value: "Ladakh",
                              groupValue: q2,
                              onChanged: (value) {
                                q2 = value.toString();
                                setState(() {});
                              }))
                    ],
                  ),
                ])),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.arrow_right),
          tooltip: 'Next Page',
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            Navigator.pushNamed(context, '/2');
          }),
    );
  }
}

class Pagetwo extends StatefulWidget {
  Quiztwo createState() => Quiztwo();
}

class Quiztwo extends State<Pagetwo> {
  String q3 = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIZ APP'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Q3) Guess the animal', style: TextStyle(fontSize: 20)),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Image.network(
                  'https://images.unsplash.com/photo-1551969014-7d2c4cddf0b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D&w=1000&q=80'),
            ),
            Row(children: <Widget>[
              Expanded(
                  child: RadioListTile(
                      title: const Text('Jaguar'),
                      value: "Jaguar",
                      groupValue: q3,
                      onChanged: (value) {
                        q3 = value.toString();
                        setState(() {});
                      })),
              Expanded(
                  child: RadioListTile(
                      title: const Text('Cheetah'),
                      value: "Cheetah",
                      groupValue: q3,
                      onChanged: (value) {
                        q3 = value.toString();
                        correctans = correctans + 1;
                        setState(() {});
                      })),
            ]),
            Row(
              children: <Widget>[
                Expanded(
                    child: RadioListTile(
                        title: const Text('Leopard'),
                        value: "Leopard",
                        groupValue: q3,
                        onChanged: (value) {
                          q3 = value.toString();
                          setState(() {});
                        })),
                Expanded(
                    child: RadioListTile(
                        title: const Text('Panthera'),
                        value: "Panthera",
                        groupValue: q3,
                        onChanged: (value) {
                          q3 = value.toString();
                          setState(() {});
                        }))
              ],
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_right),
        tooltip: 'Next Page',
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: () {
          Navigator.pushNamed(context, '/3');
        },
        backgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class Score extends StatefulWidget {
  ScorePage createState() => ScorePage();
}

class ScorePage extends State<Score> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SCORE')),
      body: Center(
          child: Text(
        'No of correct ans = $correctans',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
