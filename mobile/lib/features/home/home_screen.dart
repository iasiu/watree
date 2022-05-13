import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:watree/config/config.dart';
import 'package:watree/features/home/home_cubit.dart';
import 'package:watree/features/home/widgets/info_card.dart';
import 'package:watree/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final todayFormatted = DateFormat('MMM d, yyyy').format(today);

    return RefreshIndicator(
      onRefresh: context.read<HomeCubit>().load,
      displacement: 0,
      color: WTColor.mainGreen,
      child: SizedBox.expand(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: WTText(
                    todayFormatted,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: WTColor.textGray,
                  ),
                ),
                const SizedBox(height: 24),
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) => state.maybeMap(
                    failure: (_) => const SizedBox(),
                    orElse: () => Column(
                      children: [
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Flexible(
                              child: WTShimmerCard(),
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: WTShimmerCard(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Flexible(
                              child: WTShimmerCard(),
                            ),
                            SizedBox(width: 16),
                            Flexible(
                              child: WTShimmerCard(),
                            ),
                          ],
                        ),
                      ],
                    ),
                    success: (success) {
                      final data = success.data;
                      final temperature = data.temperature.toStringAsFixed(1);
                      final airHumidity =
                          (data.airHumidity * 100).toStringAsFixed(0);
                      final soilHumidity =
                          (data.soilHumidity * 100).toStringAsFixed(0);
                      final isWatering = data.isWatering
                          ? context.l10n.home_screen_watering_yes
                          : context.l10n.home_screen_watering_no;

                      return Column(
                        children: [
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InfoCard(
                                  title: context.l10n.home_screen_temperature,
                                  dataValue: '$temperature°C',
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: InfoCard(
                                  title: context.l10n.home_screen_air_humidity,
                                  dataValue: '$airHumidity%',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 24),
                          Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: InfoCard(
                                  title: context.l10n.home_screen_soil_humidity,
                                  dataValue: '$soilHumidity%',
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: InfoCard(
                                  title: context.l10n.home_screen_watering,
                                  dataValue: isWatering,
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 24),
                WTButton(
                  label: context.l10n.home_screen_watering_schedule,
                  onTap: context.read<HomeCubit>().scheduleWatering,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
