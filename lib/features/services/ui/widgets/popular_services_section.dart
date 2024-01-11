import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/services/managers/popular_services_cubit/popular_services_cubit.dart';
import 'package:khafil_test/features/services/ui/widgets/service_card.dart';

class PopularServicesSection extends StatelessWidget {
  const PopularServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Popular Services',
            style: StylesManager.textStyle18,
          ),
          SizedBox(
            height: 192.0,
            child:
                BlocBuilder<PopularServicesCubit, PopularServicesState>(
              builder: (context, state) {
                return switch (state) {
                  PopularServicesInitial() => const SizedBox.shrink(),
                  PopularServicesLoading() =>
                    const Center(child: CircularProgressIndicator()),
                  PopularServicesLoaded(data: final services) =>
                    ListView.builder(
                      itemCount: services.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final service = services[index];
                        return ServiceCard(
                          service: service,
                        );
                      },
                    ),
                  PopularServicesError() =>
                    Center(child: Text(state.error)),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}
