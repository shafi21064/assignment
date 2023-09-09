import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/provider/count_test.dart';
import 'package:state_manegment_test/widget/widget.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final countTestProvider =
        Provider.of<CountTestProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<CountTestProvider>(builder: (context, value, child) {
            print('this is only');
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          }),
          const SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const ButtonWidget(
                          boxColor: Colors.red, boxName: 'SUB'),
                      onTap: () {
                        countTestProvider.decrement();
                      },
                    ),
                    GestureDetector(
                        onTap: () {
                          countTestProvider.increment();
                        },
                        child: const ButtonWidget(
                            boxColor: Colors.blue, boxName: 'ADD')),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                    onTap: () {
                      countTestProvider.reset();
                    },
                    child: const ButtonWidget(
                        boxColor: Colors.black, boxName: 'RESET')),
              ],
            ),
          )
        ],
      )),
    );
  }
}
