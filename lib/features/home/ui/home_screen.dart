import 'package:flutter/material.dart';
import 'package:nawel/core/helpers/assets.dart';
import 'package:nawel/core/helpers/spacing.dart';
import 'package:nawel/features/home/data/models/restaurant.dart';
import 'package:nawel/features/home/data/models/service.dart';
import 'package:nawel/features/home/ui/widgets/home_header.dart';
import 'package:nawel/features/home/ui/widgets/popular_restaurants_list.dart';
import 'package:nawel/features/home/ui/widgets/promo_banner_carousel.dart';
import 'package:nawel/features/home/ui/widgets/promo_code_card.dart';
import 'package:nawel/features/home/ui/widgets/section_title.dart';
import 'package:nawel/features/home/ui/widgets/services_grid.dart';
import 'package:nawel/features/home/ui/widgets/shortcuts_row.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // --- MOCK DATA ---
    final List<ServiceModel> services = [
      const ServiceModel(
        imageUrl: Assets.imagesFood,
        title: 'Food',
        tag: 'Up to 50%',
      ),
      const ServiceModel(
        imageUrl: Assets.imagesHealthAndWellness,
        title: 'Health & wellness',
        time: '20mins',
      ),
      const ServiceModel(
        imageUrl: Assets.imagesGroceries,
        title: 'Groceries',
        time: '15 mins',
      ),
    ];

    final List<RestaurantModel> popularRestaurants = [
      const RestaurantModel(
          imageUrl: Assets.imagesAlloBeirut,
          name: 'Allo Beirut',
          deliveryTimeInMins: 32),
      const RestaurantModel(
          imageUrl: Assets.imagesLaffah,
          name: 'Laffah',
          deliveryTimeInMins: 38),
      const RestaurantModel(
          imageUrl: Assets.imagesFalafil,
          name: 'Falafil Al Rabiah Al kha...',
          deliveryTimeInMins: 44),
      const RestaurantModel(
        imageUrl: Assets.imagesBarbar,
        name: 'Barbar',
        deliveryTimeInMins: 34,
      ),
    ];
    // --- END MOCK DATA ---

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeader(
              userName: 'Hepa',
              deliveryAddress: 'Al Satwa, 81A Street',
              avatarUrl: Assets.imagesDefaultUser,
            ),
            verticalSpace(6),
            const SectionTitle(title: 'Services:'),
            verticalSpace(19),
            ServicesGrid(services: services),
            verticalSpace(16),
            const PromoCodeCard(),
            verticalSpace(14),
            const SectionTitle(title: 'Shortcuts:'),
            verticalSpace(21),
            const ShortcutsRow(),
            verticalSpace(32),
            const PromoBannerCarousel(),
            verticalSpace(32),
            const SectionTitle(title: 'Popular restaurants nearby:'),
            verticalSpace(16),
            PopularRestaurantsList(restaurants: popularRestaurants),
            verticalSpace(50),
          ],
        ),
      ),
    );
  }
}
