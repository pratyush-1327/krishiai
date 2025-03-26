import 'package:flutter/material.dart';

class Tax extends StatelessWidget {
  const Tax({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // centerTitle: true,
        title: const Text('Tax Saving'),
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
                          'https://i.pinimg.com/736x/f3/aa/ac/f3aaac4ec2c1b28d0985603a7268c626.jpg',
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
                        'Tax Saving: "Save Tax, Grow Money!"',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Indians can save taxes under Section 80C by investing in PPF, ELSS, NPS, and tax-saving FDs. Health insurance premiums (Section 80D) and home loan interest (Section 24) also offer deductions. Strategic tax planning helps you save money while investing wisely. Start early to maximize benefits and build long-term wealth.',
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
