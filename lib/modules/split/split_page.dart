import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:split_the_bill/modules/store/split_store.dart';
import 'package:split_the_bill/shared/services/mask_input_formater.dart';
import 'package:split_the_bill/theme/color.dart';

class SplitPage extends StatefulWidget {
  SplitPage({Key? key}) : super(key: key);

  @override
  _SplitPageState createState() => _SplitPageState();
}

class _SplitPageState extends State<SplitPage> {
  final TextEditingController _controller = TextEditingController();
  late SplitStore _store;

  @override
  void initState() {
    _store = SplitStore();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.plus_one_outlined),
      ),
      body: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 32,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Split it',
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ),
            Container(
              height: 52,
              margin: EdgeInsets.only(
                top: 32,
              ),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                autocorrect: true,
                inputFormatters: [
                  MaskTextInputFormatter(
                      mask: "R\$ ###.##", filter: {"#": RegExp(r'[0-9]')})
                ],
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: ColorPalette.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: ColorPalette.primaryColor,
                    ),
                  ),
                  labelText: 'Valor da conta',
                  labelStyle: TextStyle(
                    color: ColorPalette.primaryColor,
                  ),
                ),
              ),
            ),
            Observer(
              builder: (_) => ListView.builder(
                itemCount: _store.bills.length,
                itemBuilder: (BuildContext context, int index) => Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
