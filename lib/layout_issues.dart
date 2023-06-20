import 'package:flutter/material.dart';

class LayoutIssuesPage extends StatelessWidget {
  const LayoutIssuesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout with issues'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //Card with tap issue
            GestureDetector(
              onTap: () {
                onItemClick('Custom Card');
              },
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.purple.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12.0),
                ),
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
            //Listview with splash issue
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: 6,
                itemBuilder: (contex, index) {
                  return InkWell(
                    onTap: () {
                      onItemClick('Item $index');
                    },
                    child: Column(
                      children: [
                        Container(
                          color: Colors.amberAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Item $index'),
                                const Icon(Icons.chevron_right),
                              ],
                            ),
                          ),
                        ),
                        const Divider(),
                      ],
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
