import 'package:flutter/material.dart';

import '../../../../../index.dart';

abstract class TemplateMethodBaseStateBody<T extends StatefulWidget> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PrimaryAppBar(
        title: 'Template Method',
      ),
      body: Stack(
        children: [
          buildBody(context),
          Visibility(
            visible: isLoading,
            child: buidLoading(),
          ),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context);

  Widget buidLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  bool get isLoading => false;
}
