import 'package:flutter/material.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/services/ui/widgets/popular_services_section.dart';
import 'package:khafil_test/features/services/ui/widgets/services_section.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: CustomScrollView(
          slivers: [
            ServicesSection(),
            SliverToBoxAdapter(
              child: Sizes.h34(),
            ),
            PopularServicesSection(),
          ],
        ),
      ),
    );
  }
}
