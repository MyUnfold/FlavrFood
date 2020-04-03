import 'package:flutter/cupertino.dart';

class parking extends StatelessWidget {
  parking(){
    ///
  }

  Widget build(BuildContext context) {  // login page
    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flavor Food",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              textScaleFactor: 5,
            ),
            SizedBox(height: 100.0,),
            RaisedButton(
              padding: EdgeInsets.all(10.0),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
                //side: BorderSide(color: Colors.red)
              ),
              child: Text(
                'Sign In', style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signUpPage()),
                );
                // Navigate to second route when tapped.
              },
            ),
            SizedBox(height: 20.0,),
            RaisedButton(
              padding: EdgeInsets.all(8.0),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(25.0),
                //side: BorderSide(color: Colors.red)
              ),
              child: Text('Log In',
                style: TextStyle(fontWeight: FontWeight.bold),
                textScaleFactor: 1.2,),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogInPage()),
                );
                // Navigate to second route when tapped.
              },
            ),
          ]
      ),
    );
  }
}