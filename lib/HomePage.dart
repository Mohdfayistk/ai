import 'package:alan_voice/alan_voice.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Spark Al-Virtual Assistant",
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w900,
            ),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Lottie.asset('assets/Animation .json'),
          TextButton(
              onPressed: () {

                 {
                  /// Init Alan Button with project key from Alan AI Studio
                  AlanVoice.addButton("e04f2533b7334f54ec409a0fc91b37842e956eca572e1d8b807a3e2338fdd0dc/stage");

                  /// Handle commands from Alan AI Studio
                  AlanVoice.onCommand.add((command) {
                    debugPrint("got new command ${command.toString()}");
                  });
                }


              },
              child: Container(
                  width: 150,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Center(
                      child: Text(
                    "TAP TO ACTIVE ME",
                    style: TextStyle(color: Colors.black),
                  )))),
          SizedBox(
            height: 150,
          ),
          ElevatedButton(
            child: const Text(
              'Ask me following',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 550,
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 40),
                              child: Text(
                                'Who are you?',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('What is your name?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Become angry',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Who created you?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Can you sing?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Show me weather',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Open facebook',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Can you roll?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('What is my name?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Where you from?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Do you love me?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('What is time?',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Tell me a fact',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('I love you',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('You are awesome',
                                  style: TextStyle(color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 200, top: 20),
                              child: Text('Bye Bye!',
                                  style: TextStyle(color: Colors.black)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
