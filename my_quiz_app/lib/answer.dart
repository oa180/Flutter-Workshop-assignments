import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String _answer;
  final Function x;
  Answer(this.x, this._answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        child: MaterialButton(
          color: Colors.amber,
          onPressed: x,
          child: Text(
            _answer,
            style: TextStyle(fontSize: 25),
          ),
        ),


        /*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Container(
                 margin: EdgeInsets.all(5.0),
                child: RaisedButton(
                   onPressed: () {},
                   child: Text(
                     "12",
                     style: TextStyle(fontSize: 25),
                   ),
                 ),
               ),
                Container(
                  margin: EdgeInsets.all(5.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "25",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                )
              ],
            )
*/
    );
  }
}
