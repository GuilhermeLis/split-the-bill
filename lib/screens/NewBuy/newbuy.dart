import 'package:flutter/material.dart';
// import '../../service/dataBase.dart';
// import '../../service/migrations/pizza.dart';

class NewBuy extends StatefulWidget {
  NewBuy({Key key}) : super(key: key);

  @override
  _NewBuyState createState() => _NewBuyState();
}

class _NewBuyState extends State<NewBuy> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController completNameController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SplitIt'),
      ),
      body: Form(
        key: _formKey,
        child: new GridView.count(
          padding: const EdgeInsets.all(20),
          childAspectRatio: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          crossAxisCount: 2,
          controller: new ScrollController(keepScrollOffset: false),
          children: <Widget>[
            Container(
              child: TextFormField(
                controller: completNameController,
                decoration: const InputDecoration(
                  hintText: 'Nome do produto',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              child: TextFormField(
                controller: valorController,
                decoration: const InputDecoration(
                  hintText: 'Valor',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Você deve preencher esse input com alguma coisa';
                  } else {
                    var newNumber = double.tryParse(value);
                    if (newNumber == null) {
                      return 'Please enter with a number';
                    }
                    return null;
                  }
                },
              ),
            ),
            Container(
              child: TextFormField(
                controller: categoryController,
                decoration: const InputDecoration(
                  hintText: 'Categoria',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Container(
              child: TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  hintText: 'description',
                ),
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    // Process data.
                    // var newPizza = Pizza(completNameController.text,
                    //     valorController.text, descriptionController.text);
                    // pizzas.add(newPizza);
                  }
                },
                child: Text('Submit', style: new TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
