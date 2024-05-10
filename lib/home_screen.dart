
//import 'dart:html';


import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numoneTEcontroller = TextEditingController();
  final TextEditingController _numtwoTEcontroller = TextEditingController();
  double _result= 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        //backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _numoneTEcontroller,
              decoration: const InputDecoration(
                hintText: 'Number 1',
                label: Text('Number 1'),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8,),
            TextField(
              controller: _numtwoTEcontroller,
              decoration: const InputDecoration(
                  hintText: 'Number 2',
                label: Text('Number '),

              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24,),
            Wrap(
              spacing: 16,
              alignment: WrapAlignment.center,
              children: [
                ElevatedButton.icon(onPressed: (){
                  _add();
                }, icon:
                const Icon(Icons.add),
                  label: const Text('Sum'),),

                ElevatedButton.icon(onPressed: (){
                  _sub();
                }, icon:
                const Icon(Icons.remove),
                  label: const Text('Sub'),),

                ElevatedButton.icon(onPressed: (){
                  _mult();
                }, icon:
                const Icon(Icons.star_border_outlined),
                  label: const Text('Mult'),),

                ElevatedButton.icon(onPressed: (){
                  _div();
                }, icon:
                const Icon(Icons.add_box),
                  label: const Text('Div'),),

              ],
            ),
            const SizedBox(height: 24,),
            Text('Result: $_result')

          ],
        ),
      ),
    );
  }

  void _add(){
    double numberOne= double.tryParse(_numoneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numtwoTEcontroller.text) ?? 0;

    _result= numberOne+numberTwo;
    setState(() {

    });
  }
  void _sub(){
    double numberOne= double.tryParse(_numoneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numtwoTEcontroller.text) ?? 0;

    _result= numberOne-numberTwo;
    setState(() {

    });
  }
  void _mult(){
    double numberOne= double.tryParse(_numoneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numtwoTEcontroller.text) ?? 0;

    _result= numberOne*numberTwo;
    setState(() {

    });
  }
  void _div(){
    double numberOne= double.tryParse(_numoneTEcontroller.text) ?? 0;
    double numberTwo= double.tryParse(_numtwoTEcontroller.text) ?? 0;

    _result= numberOne/numberTwo;
    setState(() {

    });
  }


  @override
  void dispose() {
    _numoneTEcontroller.dispose();
    _numtwoTEcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}

