import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';

@RoutePage()
class TemplateMethodPage extends StatefulWidget {
  const TemplateMethodPage({super.key});

  @override
  State<TemplateMethodPage> createState() => _TemplateMethodPageState();
}

class _TemplateMethodPageState extends TemplateMethodBaseStateBody<TemplateMethodPage> {
  bool isShowLoading = false;

  @override
  bool get isLoading => isShowLoading;

  @override
  Widget buildBody(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isShowLoading = !isShowLoading;
          });
        },
        child: Text(!isShowLoading ? 'Show loading' : 'Hide loading'),
      ),
    );
  }
}
