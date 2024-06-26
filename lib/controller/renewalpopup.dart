import 'package:flutter/material.dart';

class showDataAlert extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                contentPadding: EdgeInsets.only(
                  top: 10.0,
                ),
                title: Text(
                  "Create ID",
                  style: TextStyle(fontSize: 24.0),
                ),
                content: Container(
                  height: 400,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Mension Your ID ",
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter Id here',
                                labelText: 'ID'),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 60,
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                             // backgroundColor: Colors.black,
                              // fixedSize: Size(250, 50),
                            ),
                            child: Text(
                              "Submit",
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Note'),
                        ),

                      ],
                    ),
                  ),
                ),
              ));

  }
}



