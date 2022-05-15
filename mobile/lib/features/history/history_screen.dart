import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watree/config/config.dart';
import 'package:watree/features/history/history_cubit.dart';
import 'package:watree/features/history/widgets/chart_card.dart';
import 'package:watree/widgets/widgets.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => RefreshIndicator(
        onRefresh: context.read<HistoryCubit>().load,
        displacement: 0,
        color: WTColor.mainGreen,
        child: SizedBox.expand(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
              child: BlocBuilder<HistoryCubit, HistoryState>(
                builder: (context, state) => state.maybeMap(
                  orElse: () => Column(
                    children: const [
                      WTShimmerCard(
                        height: 250,
                      ),
                      SizedBox(height: 24),
                      WTShimmerCard(
                        height: 250,
                      ),
                      SizedBox(height: 24),
                      WTShimmerCard(
                        height: 250,
                      ),
                    ],
                  ),
                  success: (success) => Column(
                    children: [
                      ChartCard(
                        title: context.l10n.history_screen_temperature,
                        horizontalInterval: 1,
                        color: WTColor.error,
                        minY: success.temperatureMinY,
                        maxY: success.temperatureMaxY,
                        points: success.temperaturePoints,
                      ),
                      const SizedBox(height: 24),
                      ChartCard(
                        title: context.l10n.history_screen_air_humidity,
                        horizontalInterval: 10,
                        color: WTColor.success,
                        minY: 0 - 0.1,
                        maxY: 100 + 0.1,
                        points: success.airHumidityPoints,
                      ),
                      const SizedBox(height: 24),
                      ChartCard(
                        title: context.l10n.history_screen_soil_humidity,
                        horizontalInterval: 10,
                        color: WTColor.blue,
                        minY: 0 - 0.1,
                        maxY: 100 + 0.1,
                        points: success.soilHumidityPoints,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
