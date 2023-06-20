import 'package:flutter/material.dart';

class LayoutFixedPage extends StatelessWidget {
  const LayoutFixedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Fixed'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Card with tap issue
            Container(
              margin: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.purple.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    onItemClick('Custom Card');
                  },
                  borderRadius: BorderRadius.circular(12.0),
                  splashColor: Colors.purpleAccent.withOpacity(0.5),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Custom Card',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const Text('Click here to subscribe'),
                            ],
                          ),
                        ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //Listview with splash issue
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: 6,
                itemBuilder: (contex, index) {
                  return Container(
                    color: Colors.amberAccent,
                    margin: const EdgeInsets.only(bottom: 8.0),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          onItemClick('Item $index');
                        },
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Item $index'),
                                  const Icon(Icons.chevron_right),
                                ],
                              ),
                            ),
                            const Divider(height: 0),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onItemClick(String source) {
    debugPrint('--Click Source: $source');
  }
}
