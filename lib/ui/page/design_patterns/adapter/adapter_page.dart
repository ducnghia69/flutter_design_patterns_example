import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../index.dart';
import 'widgets/contact_section.dart';

@RoutePage()
class AdapterPage extends StatelessWidget {
  const AdapterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PrimaryAppBar(
        title: 'Adapter',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ContactSection(
                contactAdapter: JSONContactAdapter(),
                title: 'Contacts from JSON API',
              ),
              SizedBox(height: 20),
              ContactSection(
                contactAdapter: XMLContactAdapter(),
                title: 'Contacts from XML API',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
