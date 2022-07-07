import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  String image = "", up1 = "", down1 = "", down2 = "";
  int up2 = 0;
  Transactions(this.image, this.up1, this.down1, this.up2, this.down2);

  dynamic RedOrGreen(up2) {
    if (up2 >= 0) {
      return Colors.green;
    } else
      return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: 80,
      width: MediaQuery.of(context).size.width - 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 51, 50, 50).withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 7,
              offset: Offset(0.0, 0.75) // changes position of shadow
              ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Image.asset(
              image,
              width: 50,
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    up1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          down1,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 14),
                        ),
                      )),
                ],
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$" + up2.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: RedOrGreen(up2)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  down2,
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}

class Credits extends StatelessWidget {
  String number = "", name = "";
  Credits(this.name, this.number);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height /3.5,
        child: Image.asset(
          "assets/images/vis.png",
        ),
      ),
      Positioned(
        child: Text(
          number,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        top: 140,
        left: 150,
      ),
      const Positioned(
        child: Text("HOLDER: "),
        top: 100,
        left: 95,
      ),
      Positioned(
        child: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
        ),
        top: 100,
        left: 160,
      )
    ]);
  }
}
