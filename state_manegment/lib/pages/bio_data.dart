import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/provider/count_test.dart';

class BioData extends StatelessWidget {
  const BioData({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CountTestProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bio Data Page'),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            margin: const EdgeInsets.all(15),
            height: 400,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              itemCount: provider.infoList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [Text('Name: ${provider.infoList[index]['name']}')],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
