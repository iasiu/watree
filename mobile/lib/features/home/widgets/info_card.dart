import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/config/config.dart';
import 'package:mobile/widgets/widgets.dart';

class InfoCard extends HookWidget {
  const InfoCard({
    required this.dataValue,
    required this.title,
    this.animate = true,
    Key? key,
  }) : super(key: key);

  final String dataValue;
  final String title;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    final opacity = useState(animate ? 0.0 : 1.0);
    useEffect(
      () {
        Future.delayed(
          const Duration(milliseconds: 200),
          () {
            opacity.value = 1.0;
          },
        );
        return;
      },
      [],
    );

    return SizedBox(
      width: double.maxFinite,
      height: 100,
      child: Card(
        elevation: 6,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: opacity.value,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Align(
                    child: FittedBox(
                      child: WTText(
                        dataValue,
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: FittedBox(
                    child: WTText(
                      title,
                      fontSize: 14,
                      color: WTColor.textGray,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
