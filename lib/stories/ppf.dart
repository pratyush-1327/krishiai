import 'package:flutter/material.dart';

class Ppf extends StatelessWidget {
  const Ppf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // centerTitle: true,
        title: const Text('PPF'),
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
                          'https://i.pinimg.com/736x/57/5a/23/575a239f458f4c4e661db7a3e027542e.jpg',
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
                        'PPF: "Secure Future with PPF!"',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Public Provident Fund (PPF) is a government-backed savings scheme with guaranteed returns. It has a 15-year lock-in, making it great for long-term wealth building. The interest is tax-free, and investments qualify for deductions under Section 80C. You can invest between ₹500 and ₹1.5 lakh per year. Ideal for risk-averse investors, PPF ensures financial security while offering compounding benefits.',
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
