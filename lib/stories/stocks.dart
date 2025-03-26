import 'package:flutter/material.dart';

class Stocks extends StatelessWidget {
  const Stocks({super.key});

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
            spacing: 20,
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
                        'Mutual Funds-Sahi Hai !',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Mutual funds allow you to invest in stocks, bonds, or other assets without needing deep market knowledge. Managed by experts, they offer diversification, reducing risks. You can start with as little as ₹500 through SIP (Systematic Investment Plan). There are different types—equity for high returns, debt for stability, and hybrid for balance. Ideal for long-term wealth creation, mutual funds help achieve financial goals like buying a home or retirement.',
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
