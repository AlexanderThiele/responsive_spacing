import 'package:flutter/material.dart';
import 'package:responsive_spacing/responsive_spacing.dart';

class ShowAllContainer extends StatelessWidget {
  const ShowAllContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveData responsiveData = Spacing.of(context);

    return Column(
      children: [
        Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(173, 246, 255, 1)),
            height: responsiveData.gutter.size),
        const SingleContainer(),
        Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(173, 246, 255, 1)),
            height: responsiveData.gutter.size),
        const SingleContainer(),
        Container(
            decoration:
                const BoxDecoration(color: Color.fromRGBO(173, 246, 255, 1)),
            height: responsiveData.gutter.size),
      ],
    );
  }
}

class SingleContainer extends StatelessWidget {
  const SingleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResponsiveData responsiveData = Spacing.of(context);
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(158, 232, 196, 1)),
      child: Padding(
        padding: responsiveData.margin.horizontalEdgeInsets,
        child: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(227, 227, 227, 1.0)),
          child: Padding(
            padding: responsiveData.padding.allEdgeInsets,
            child: SizedBox(
                width: responsiveData.body.size,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Center(
                      child: Text(
                    "body",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )),
                )),
          ),
        ),
      ),
    );
  }
}
