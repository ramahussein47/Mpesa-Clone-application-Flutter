import 'package:flutter/material.dart';
import 'package:mpesa/const/const.dart';
import 'package:mpesa/models/balanceprovider.dart';
import 'package:mpesa/models/riverpod.dart';
import 'package:provider/provider.dart';

// Provider for managing the current balance and Fuliza




class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final balanceProvider = Provider.of<BalanceProvider>(context);


    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("RH"),
        ),
        title: Row(
          children: [
            Text(
              'Good morning, RAMADHAN 👋',
              style: TextStyle(color: colorWhite, fontSize: 16),
            ),
          ],
        ),
        actions: [
        IconButton(onPressed:(){} , icon: Icon(Icons.notifications),),
          SizedBox(width: 10),
    IconButton(onPressed:() {

    }, icon: Icon(Icons.qr_code_scanner_rounded)),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Balance', style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ksh. ${balanceProvider.balance.toStringAsFixed(2)}',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Icon(Icons.visibility_off, color: Colors.grey),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Available FULIZA: Ksh ${balanceProvider.fuliza.toStringAsFixed(2)}',
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(Icons.send, 'SEND AND REQUEST', greenMpesaColor),
                _buildActionButton(Icons.payment, 'PAY', blueMpesa),
                _buildActionButton(Icons.money, 'WITHDRAW', redMpesa),
                _buildActionButton(Icons.phone_iphone, 'AIRTIME', lightBlueMpesa),
              ],
            ),
            SizedBox(height: 20),
            // M-PESA Statements Header
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('M-PESA STATEMENTS', style: TextStyle(color: Colors.white)),
                Text('SEE ALL', style: TextStyle(color: Colors.green)),
              ],
            ),
            SizedBox(height: 10),
            // Transaction List (Sample Data)// will implement api for this and create sample data for this
            _buildTransactionTile('PETER MWANGI', '254705***471', '- Ksh. 40.00', '17 Aug, 09:22 PM'),
          ],
        ),
      ),

    );
  }

  // Action Button Widget
  Widget _buildActionButton(IconData icon, String label, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon, color: colorWhite),
        ),
        SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: colorWhite, fontSize: 12),
        ),
      ],
    );
  }

  // Transaction Tile Widget
  Widget _buildTransactionTile(String name, String phone, String amount, String time) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: blueMpesa,
        child: Text(
          name[0],
          style: TextStyle(color: colorWhite),
        ),
      ),
      title: Text(name, style: TextStyle(color: colorWhite)),
      subtitle: Text(phone, style: TextStyle(color: greyColor)),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(amount, style: TextStyle(color: redMpesa)),
          Text(time, style: TextStyle(color: greyColor)),
        ],
      ),
    );
  }
}
