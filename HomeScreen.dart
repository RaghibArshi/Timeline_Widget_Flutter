import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_project/TimeLineTileUI.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEBE3D5),
      appBar: AppBar(
        title: Text('Time Line Tile'),
        centerTitle: true,
        backgroundColor: Color(0xFF776B5D),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: ListView(
          children: const [
            TimeLineTileUI(isFirst: true, isLast: false, isPast: true,
              eventChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.book_online, color: Colors.white),
                      SizedBox(width: 15.0,),
                      Text(
                          'Order Placed.',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                  Text('Your order is placed successfully. It is yet to be packed & shipped.', style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            TimeLineTileUI(isFirst: false, isLast: false, isPast: true, eventChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.card_giftcard, color: Colors.white),
                    SizedBox(width: 15.0,),
                    Text(
                      'Order Is Packed',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Text('Your order is packed & ready to dispatch from our warehouse.', style: TextStyle(color: Colors.white),),
              ],
            ),),
            TimeLineTileUI(isFirst: false, isLast: false, isPast: true, eventChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.local_shipping, color: Colors.white),
                    SizedBox(width: 15.0,),
                    Text(
                      'Order Dispatched',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Text('Your order is dispatched from our warehouse, it will take 5-7 working days for you to get the delivery.',
                    style: TextStyle(color: Colors.white),
                ),
              ],
            ),),
            TimeLineTileUI(isFirst: false, isLast: true, isPast: true, eventChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Icon(Icons.home_work, color: Colors.white),
                    SizedBox(width: 15.0,),
                    Text(
                      'Order Delivery',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
                Text('You will get your order on 8th of December, please be available at your address to receive the order.',
                    style: TextStyle(color: Colors.white),
                ),
              ],
            ),),
          ],
        ),
      ),
    );
  }
}
