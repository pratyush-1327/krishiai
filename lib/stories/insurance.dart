import 'package:flutter/material.dart';

class Insurance extends StatelessWidget {
  const Insurance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        // centerTitle: true,
        title: const Text('Insurance'),
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
                        'Insurance: "Protect Life, Stay Secure!"',
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        'Insurance is essential for financial security. Life insurance ensures your family’s well-being in your absence, while health insurance covers rising medical costs. Term plans provide high coverage at low premiums, and ULIPs offer investment benefits. In India, having adequate coverage helps during emergencies, reducing financial burdens on families.',
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
