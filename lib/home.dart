import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(250.0),
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(bottom: 10, top: 70),
            decoration: const BoxDecoration(
              color: Color(0xff4f4f5a),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                          ),
                        )),
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(right: 7),
                          alignment: Alignment.centerRight,
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[500],
                              borderRadius: BorderRadius.circular(20)),
                          child: const Icon(Icons.arrow_drop_down),
                        ),
                        Container(
                          width: 170,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey[900],
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              const Text(
                                'Compate de carte',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const Icon(
                              Icons.laptop_outlined,
                              size: 30,
                              color: Colors.white,
                            )),
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: const Icon(
                              Icons.qr_code_scanner_outlined,
                              size: 30,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 20),
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: const Text(
                    'LT72 3259 8574 8574 9578',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: const Text(
                    '€0',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                )
              ],
            ),
          )),
      
    );
  }
}

// Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.vertical,
          //     itemCount: 10,
          //     itemBuilder: (BuildContext context, int index) {
          //       return ListTile(title: Text('AliExpress.com',style: TextStyle(color: Colors.red),),) ;
          //     },
          //   ),
          // ),