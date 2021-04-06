import 'package:flutter/material.dart';
import 'package:splitTheBill/screens/NewBuy/newbuy.dart';
// import '../Products/products.dart';



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de produtos'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ElevatedButton(
                    child: Text("Cadastro"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewBuy()),
                      );
                    },
                  ),
                  margin: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  child: Text("Solicitar Pizza"),
                  onPressed: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => NewBuy()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}