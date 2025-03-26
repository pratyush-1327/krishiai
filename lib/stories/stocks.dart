import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // centerTitle: true,
        title: const Text('Stocks'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 20,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    // color: Colors.amber,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://i.pinimg.com/736x/79/68/74/7968740973b0b6dd1b4668fdae827ad7.jpg',
                        ))),

                height: 300,
                // color: Colors.amber,
              ),
              Container(
                // color: Colors.amber,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        Theme.of(context).colorScheme.surfaceContainerHighest),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    spacing: 20,
                    children: [
                      Text(
                        'Stocks: "Own Stocks, Build Wealth!"',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Buying stocks means owning a part of a company. Stocks can offer high returns, but they also come with risks. India’s stock market, led by Sensex and Nifty, has helped many create wealth. Long-term investors benefit from compounding and economic growth. Investing in blue-chip stocks or sectors like IT, banking, and FMCG can yield good returns.',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
