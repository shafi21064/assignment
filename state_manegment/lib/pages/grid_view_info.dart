import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_manegment_test/provider/count_test.dart';

class GridViewInfo extends StatelessWidget {
  const GridViewInfo({super.key});

  @override
  Widget build(BuildContext context) {

    var provider = Provider.of<CountTestProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 100,
              maxCrossAxisExtent: 200,
              mainAxisExtent: 200
            ),
            itemCount: provider.infoList.length,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red
                  ),
                  child: Center(child: Text('Name: \n ${provider.infoList[index]['name']}', style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),)),
                ),
              );
            }),
        ),
    );
  }
}
