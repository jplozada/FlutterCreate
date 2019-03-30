import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello Rectangle'),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}

class CardLanzamiento extends StatelessWidget {
  String LanzamientoImage = "";
  CardLanzamiento(this.LanzamientoImage);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            Container(
            height: 120.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(LanzamientoImage),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 15.0,
                      offset: Offset(0.0, 1.0)
                  )
                ]
              )
            )
          ],
        )
    );
  }
}
class CardActualizaciones extends StatelessWidget {
  String ActualizacionesImage = "";
  String ActualziacionesText = "";
  String ActualziacionesDesc = "";
  CardActualizaciones(this.ActualizacionesImage, this.ActualziacionesText, this.ActualziacionesDesc);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          children: <Widget>[
            Container(
                  height: 110.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(ActualizacionesImage),
                          fit: BoxFit.cover
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          bottomLeft: const Radius.circular(20.0)
                      ),
                  )
            ),
            Positioned(
              top: 10.0,
              left: 115.0,
                child: Text(
                  ActualziacionesText,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.0,
                      fontWeight: FontWeight.w500
                  ),
                )
            ),
            Positioned(
                top: 40.0,
                left: 115.0,
                child: Text(
                  ActualziacionesDesc,
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                  ),
                )
            )
          ],
        ),
        decoration: BoxDecoration(
          border: new Border.all(color: Colors.black),
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75)
            )
          ]
         )
    );
  }
}

class HelloRectangle extends StatelessWidget {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dia = DateFormat("EEEEE").format(now);
    String mes = DateFormat("LLLL y").format(now);
    return Container(margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0.0,
                child: Text(
                  '$dia, $mes',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Positioned(
                top: 30.0,
                child: Text(
                  "Novedades",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ),
              Positioned(
                top: 80.0,
                child: Text(
                  "Lanzamientos",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Positioned(
                right: 20.0,
                left: 20.0,
                top: 130.0,
                child: CardLanzamiento("assets/images/supermariomaker2.jpg"),
              ),
              Positioned(
                top: 260.0,
                right: 10.0,
                child: Text(
                  "Ver mas...",
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300
                  ),
                ),
              ),
              Positioned(
                top: 280.0,
                child: Text(
                  "Actualizaciones",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
              Positioned(
                right: 20.0,
                left: 20.0,
                top: 330.0,
                child: CardActualizaciones("assets/images/wowlogo.png", "World of Warcraft", "Parche 8.1.5"),
              ),
            ],
          )
      );
  }
}