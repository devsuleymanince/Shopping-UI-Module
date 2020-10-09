import 'package:flutter/material.dart';
import 'package:shop_module/constants.dart';

class ThemeBottomSheet extends StatelessWidget {
  final IconData mainIcon;

  ThemeBottomSheet({this.mainIcon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.info_outline,color: kTextColor,),
      onPressed: () {
        showModalBottomSheet(
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Container(
                height: 400,
                padding: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(238, 238, 238, 1),
                  //padding: EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Temalar:",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontFamily: 'Quicksand'
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(Icons.wb_sunny),
                                onPressed: () {},
                              ),
                              Text("Açık")
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              IconButton(
                                icon: Icon(Icons.brightness_3),
                                onPressed: () {

                                },
                              ),
                              Text("Koyu")
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Uygulama Hakkında:",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontFamily: 'Quicksand'
                      ),
                    ),
                    Divider(
                      height: 5,
                      color: Colors.grey,
                    ),
                    Card(
                      color: Colors.white60,
                      child: ListTile(
                        leading: Icon(
                          Icons.sync,
                          color: Colors.red,
                        ),
                        title: Text("Versiyon:"),
                        subtitle: Text(
                          "v1.0",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.white60,
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.red,
                        ),
                        title: Text("Bana Ulaşın:"),
                        subtitle: Text(
                          "dev.suleymanince@gmail.com",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              );
            });
      },
    );
  }
}
