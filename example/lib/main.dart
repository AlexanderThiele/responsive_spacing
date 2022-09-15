import 'package:example/responsive_collection/responsive_gutter.dart';
import 'package:example/responsive_collection/responsive_padding.dart';
import 'package:example/widgets/show_all_container.dart';
import 'package:flutter/material.dart';

import 'package:responsive_spacing/responsive_spacing.dart';

void main() {
  // optional setting defaults
  ResponsiveSpacing.setDefaults(
    globalBreakpoints: Breakpoints(
      xl: const BreakpointEntry(1920, enabled: true),
      lg: const BreakpointEntry(1440),
      md: const BreakpointEntry(1240),
      sm2: const BreakpointEntry(905),
      sm1: const BreakpointEntry(600),
    ),
    globalGutter: MyResponsiveGutters(),
    globalPadding: MyResponsivePadding()
  );

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
          title: Text("Width: ${MediaQuery.of(context).size.width}"),
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
        const ShowAllContainer(),
        Container(
            height: 1, decoration: const BoxDecoration(color: Colors.grey)),
        Spacing.of(context).sizedBoxGutter,
        ResponsiveCard(
          color: Colors.amber,
          child: Padding(
            padding: Spacing.of(context).padding.allEdgeInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This is a ResponsiveCard",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text("This is a subtitle, usually you explain something",
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        ),
        Spacing.of(context).sizedBoxGutter,
        ResponsiveGrid(
          primary: false,
          shrinkWrap: true,
          children: [
            Card(
              margin: EdgeInsets.zero,
              color: Colors.amber,
              child: Padding(
                padding: Spacing.of(context).padding.allEdgeInsets,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("This is a Card inside a ResponsiveGrid",
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
              ),
            ),
            for (int i = 0; i < 5; i++)
              const Placeholder(
                color: Colors.green,
              )
          ],
        ),
        Spacing.of(context).sizedBoxGutter,
        ResponsiveGrid(
          primary: false,
          shrinkWrap: true,
          axisSpaces: 1,
          children: [
            for (int i = 0; i < 11; i++)
              const Placeholder(
                color: Colors.green,
              ),
            Card(
              margin: EdgeInsets.zero,
              color: Colors.amber,
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("A Card", style: Theme.of(context).textTheme.caption),
                  ],
                ),
              ),
            ),
          ],
        ),
        Spacing.of(context).sizedBoxGutter,
        Card(
          color: Colors.amber,
          margin: Spacing.of(context).margin.horizontalEdgeInsets,
          child: Padding(
            padding: Spacing.of(context).padding.allEdgeInsets,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("This is a Card",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 8),
                Text("This is a subtitle, usually you explain something",
                    style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ),
        )
      ],
    );
  }
}
