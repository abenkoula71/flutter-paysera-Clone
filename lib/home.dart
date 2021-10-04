import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var date = [
    'Heir',
    '2 Octobre 2021',
    '3 Octobre 2021',
    '4 Octobre 2021',
    '5 Octobre 2021',
    '6 Octobre 2021'
  ];

  @override
  Widget build(BuildContext context) {
    int a = -1;
    int v = 0;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(230.0),
          child: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(bottom: 10, top: 70),
            decoration: const BoxDecoration(
              color: Color(0xee222222),
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
                  margin: const EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  child: const Text(
                    '€37550,72',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                )
              ],
            ),
          )),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          v = index % 2;
          if (v == 0) {
            a++;
          }
          return Column(
            children: [
              v == 0
                  ? Container(
                      height: 30,
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.centerLeft,
                      color: Color(0xee222222),
                      child: Text(
                        date[a],
                        style: TextStyle(color: Colors.white60),
                      ))
                  : Container(),
              Container(
                color: Colors.black87,
                child: const ListTile(
                  leading: CircleAvatar(),
                  trailing: Text(
                    '€30,15',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.greenAccent, fontSize: 16),
                  ),
                  title: Text(
                    'Tm071',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0.5),
                  ),
                  subtitle: Text(
                    'De "Compte de paiment" a " C...',
                    style: TextStyle(color: Colors.white30, height: 0.5),
                  ),
                ),
              ),
              Container(
                color: Colors.black87,
                child: const ListTile(
                  leading: CircleAvatar(),
                  trailing: Text(
                    '€20,15',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.redAccent, fontSize: 16),
                  ),
                  title: Text(
                    'AliExpress.com',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 0.5),
                  ),
                  subtitle: Text(
                    'Payment 2021-10-03 08:50:19...',
                    style: TextStyle(color: Colors.white30, height: 0.5),
                  ),
                ),
              ),
            ],
          );
        },
      ),
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