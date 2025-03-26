import 'package:flutter/material.dart';

class Mutualfund extends StatelessWidget {
  const Mutualfund({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // centerTitle: true,
        title: const Text('Mutual Funds'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    // color: Colors.amber,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://i.pinimg.com/736x/78/63/c1/7863c1de016b2cecfbff4985ef321cfe.jpg',
                        ))),

                height: 300,
                // color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
