import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/services/managers/services_cubit/services_cubit.dart';
import 'package:khafil_test/features/services/ui/widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Services',
            style: StylesManager.textStyle18,
          ),
          SizedBox(
            height: 192.0,
            child: BlocBuilder<ServicesCubit, ServicesState>(
              builder: (context, state) {
                return switch (state) {
                  ServicesInitial() => const SizedBox.shrink(),
                  ServicesLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  ServicesLoaded(data: final services) => ListView.builder(
                      itemCount: services.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final service = services[index];
                        return ServiceCard(
                          service: service,
                        );
                      },
                    ),
                  ServicesError() => Center(child: Text(state.error)),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
