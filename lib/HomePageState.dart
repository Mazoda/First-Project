import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Services.dart';
import 'Transactions.dart';
import 'HomePage.dart';

class HomePageState extends State<HomePage> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
      ),
    drawer: Drawer(

      child: Column(children: const [
        UserAccountsDrawerHeader(accountName: Text("Oday Mutlak"),decoration: BoxDecoration(color: Colors.brown),
        accountEmail: Text("oabumutlak@gmail.com"),currentAccountPicture:CircleAvatar(backgroundImage: AssetImage("assets/images/pfp.png"),) ,),
        // Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        // Text("data",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text("Go to home"),
          title: Text("Home"),
        ) ,ListTile(
          leading: Icon(Icons.favorite),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text("Go to Favourites"),
          title: Text("Favorites"),)
           ,ListTile(
          leading: Icon(Icons.person),
          trailing: Icon(Icons.arrow_forward_ios),
          subtitle: Text("Go to Profile"),
          title: Text("Profile"),)
      ],),
    ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 10, left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 212, 159, 90),
                    ),
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    child: Container(
                      width: 60, height: 60,
                      // child: Image.asset("assets/images/pfp.jpg",width: 50,height: 50,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/images/pfp.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "My Wallet",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  const SizedBox(width: 10),
                  const Icon(Icons.search),
                  const SizedBox(width: 10),
                  const Icon(Icons.language),
                  const SizedBox(width: 10),
                  const Icon(Icons.more_vert)
                ],
              ),
              SingleChildScrollView(
                padding: const EdgeInsets.only(top: 0),
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Credits("ODAY M. ABUMETTLEQ", "1234 5678 9876 5432"),
                    Credits("YUSUF N. MOSABEH", "1234 5678 9876 5432"),
                  ],
                ),
              ),
              Row(
                children: [
                  const Text("Services",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Services()),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 218, 215, 252),
                    ),
                    width: 90,
                    height: 90,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.credit_card),
                      ),
                      const Positioned(
                        child: Text("Card",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 27,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 195, 224, 207),
                    ),
                    width: 90,
                    height: 90,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.currency_exchange),
                      ),
                      const Positioned(
                        child: Text("transfer",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 16,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 250, 220, 230),
                    ),
                    width: 90,
                    height: 90,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.check_box_outline_blank),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 38, vertical: 20),
                        child: Icon(Icons.check_box_outline_blank),
                      ),
                      const Positioned(
                        child: Text("Voucher",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 16,
                      )
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 255, 205, 159),
                    ),
                    width: 90,
                    height: 90,
                    child: Stack(children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                        child: Icon(Icons.receipt),
                      ),
                      const Positioned(
                        child: Text("Pay Bill",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        top: 53,
                        left: 19,
                      )
                    ]),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    const Text("Transaction",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Transactions("assets/images/Facebook.png", "Facebook",
                        "Salary", 6000, "12:46pm"),
                    Transactions("assets/images/Jawwal.png", "Jawwal", "Salary",
                        -700, "12:00pm"),
                    Transactions("assets/images/spotify.png", "Spotify",
                        "Salary", 100, "5:30pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                    Transactions("assets/images/uber.png", "Uber", "Salary",
                        1000, "10:00pm"),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
