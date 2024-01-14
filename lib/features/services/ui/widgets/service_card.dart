import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:khafil_test/core/managers/assets_manager.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';
import 'package:khafil_test/features/common/app_default_container.dart';
import 'package:khafil_test/features/common/sizes.dart';
import 'package:khafil_test/features/services/data/models/service_model/datum.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
  });

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      padding: const EdgeInsets.all(2),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: 103,
                width: 151,
                
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      service.mainImage ?? '',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),

              ),
              AppDefaultContainer(
                borderRadius: 50.0,
                margin: const EdgeInsets.all(6),
                color: ColorsManager.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6.0,
                ),
                child: Text(
                  '\$${service.price}',
                  style: StylesManager.textStyle12.copyWith(
                    color: ColorsManager.white,
                  ),
                ),
              ),
            ],
          ),
          const Sizes.h8(),
          SizedBox(
            width: 136,
            child: Text(
              service.title ?? '',
              style: StylesManager.textStyle11,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Sizes.h10(),
          Row(
            children: [
              Row(
                children: [
                  SvgPicture.asset(SvgsManager.star),
                  const Sizes(
                    width: 4,
                  ),
                  Text(
                    '(${service.averageRating ?? ''})',
                    style: StylesManager.textStyle11.copyWith(
                      color: ColorsManager.yellow,
                    ),
                  ),
                ],
              ),
              Container(
                width: 1,
                height: 12.0,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                color: ColorsManager.grey200,
              ),
              Row(
                children: [
                  SvgPicture.asset(SvgsManager.bag),
                  const Sizes(
                    width: 4,
                  ),
                  Text(
                    '(${service.completedSalesCount ?? ''})',
                    style: StylesManager.textStyle12,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
