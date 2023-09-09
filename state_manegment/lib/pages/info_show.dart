import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/provider/count_test.dart';
import 'package:state_manegment_test/widget/show_data_text.dart';

class InfoShow extends StatelessWidget {
  var getInfo = 0;
  InfoShow({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CountTestProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Show'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                provider.reset();
              },
              child: const Text('Go Back To First Data')),
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.red.withOpacity(.5),
                borderRadius: BorderRadius.circular(20)),
            child: provider.count < provider.infoList.length
                ? const Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ShowTextData(title: "Name is", value: 'name'),
                      ShowTextData(title: "Roll is", value: 'roll'),
                      ShowTextData(title: "Depatment is", value: 'deparment'),
                      ShowTextData(title: "Shift is", value: 'shift'),
                    ],
                  ))
                : const Center(child: Text('Data finised')),
          ),
          ElevatedButton(
              onPressed: () {
                print(provider.count.toString());
                provider.information();
              },
              child: const Text('Next Data'))
        ],
      )),
    );
  }
}
