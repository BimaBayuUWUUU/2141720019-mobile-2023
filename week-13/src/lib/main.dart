import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Bima',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State <StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  int lastNumber = 0;
  late NumberStream numberStream;
  late StreamController numberStreamController;
  late StreamTransformer transformer;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Bima'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(value),
            // Text(lastNumber.toString() , style: const TextStyle(fontSize: 50),),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: const Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(),
              child: const Text('Stop Subscription'),
            ),
          ],
      ),
      ),
    );
  }

  void changeColor() async{
    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
    }

  @override
  void initState() {
    // super.initState();
    // colorStream = ColorStream();
    // changeColor();

    transformer = StreamTransformer<int,int>.fromHandlers(
        handleData: (value,sink){
          sink.add(value * 10);
        },
        handleError: (error,trace,sink){
          sink.addError(-1);
        },
        handleDone: (sink) => sink.close());

    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();
    // Stream stream = numberStreamController.stream;
    // stream.transform(transformer).listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error){
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
    subscription = stream.listen((event) {
      setState(() {
        // lastNumber = event;
        value += '$event - ';
      });
    });

    subscription = stream.listen((event) {
      setState(() {
        // lastNumber = event;
        value += '$event - ';
      });
    });

    super.initState();

    subscription.onError((error){
      setState(() {
        lastNumber = -1;
      });
    });

    subscription.onDone(() {
      print('OnDone was called');
    });

  }

  void stopStream() {
    numberStreamController.close();
  }

  @override
  void dispose() {
    // numberStreamController.close();
    // super.dispose();
    subscription.cancel();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if(!numberStreamController.isClosed){
      numberStreamController.sink.add(myNum);
    }else{
      setState(() {
        lastNumber = -1;
      });
    }
    // numberStream.addNumberToSink(myNum);
    // // numberStream.addError();
  }

}
