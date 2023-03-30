import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../util/store.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color.fromARGB(255, 80, 213, 228),
                    ),
                    Text(
                      'Banglore,India',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),

                //profile picture

                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 194, 239, 245),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(Icons.person)),
              ], //children
            ),
          ),
          SizedBox(height: 30),

          // search bar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Color.fromARGB(235, 224, 226, 226),
                borderRadius: BorderRadius.circular(55),
              ),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: 'Search for clinic and hospitals'),
              ),
            ),
          ),

          SizedBox(height: 25),

          //connect with us

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 194, 239, 245),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  //animation or cute picture
                  Container(
                    height: 150,
                    width: 100,
                    child: Lottie.network(
                        'https://assets1.lottiefiles.com/packages/lf20_b3f3m6cq.json'),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  //register + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'List your Hospital Here.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          'If you want to list your hospital,please fill the form.',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Container(
                          padding: EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 80, 213, 228),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Center(
                            child: Text(
                              'Get Started',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 15),

          //Cards

          GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: StoreItems.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  //your action
                },
                child: Card(
                  child: Stack(
                    alignment: FractionalOffset.bottomCenter,
                    children: <Widget>[
                      Container(
                        // margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2,
                              spreadRadius: 1,
                            )
                          ],
                          image: DecorationImage(
                              image: NetworkImage(StoreItems[index].itemImage)),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 40.0,
                        color: Colors.white,
                        child: Text(
                          StoreItems[index].ImageName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),

          //review
        ],
      ),
    );
  }
}
