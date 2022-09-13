import 'package:flutter/material.dart';

import 'package:responsive_spacing/responsive_spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveScaffold(
        appBar: AppBar(
          title: const Text("The Title"),
        ),
        body: const CardList());
  }
}

class CardList extends StatelessWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
                decoration: const BoxDecoration(color: Colors.lightGreen),
                padding: const EdgeInsets.all(8),
                child: Center(child: Text("Width: ${constraints.maxWidth}")));
          },
        ),
        Spacing.of(context).sizedBoxGutter,
        ResponsiveCard(
          color: Colors.amber,
          child: Padding(
            padding: Spacing.of(context).padding.allEdgeInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This is a Title",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text("This is the subtitle, usually you explain something",
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        ),
        ResponsiveGrid(
          primary: false,
          shrinkWrap: true,
          children: [
            for (int i = 0; i < 9; i++)
              const Placeholder(
                color: Colors.green,
              )
          ],
        ),
        Card(
          color: Colors.amber,
          margin: Spacing.of(context).margin.horizontalEdgeInsets,
          child: Padding(
            padding: Spacing.of(context).padding.allEdgeInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This is a Title",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text("This is the subtitle, usually you explain something",
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        )
      ],
    );
  }
}
