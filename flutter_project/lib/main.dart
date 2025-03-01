import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bidding Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MaximumBid(),
    );
  }
}

class MaximumBid extends StatefulWidget {
  const MaximumBid({super.key});

  @override
  _MaximumBidState createState() => _MaximumBidState();
}

class _MaximumBidState extends State<MaximumBid> {
  int _currentBid = 100; // Initial bid amount

  void _increaseBid() {
    setState(() {
      _currentBid += 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bidding Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Maximum Bid:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '\$$_currentBid',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increaseBid,
              child: const Text('Increase Bid by \$50'),
            ),
          ],
        ),
      ),
    );
  }
}
