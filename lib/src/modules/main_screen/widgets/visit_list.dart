import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/single_visit_box.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:template/src/utils/visit_type.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VisitList extends StatefulWidget {
  final int visitNumber;
  final VisitType visitType;
  const VisitList(
      {super.key, required this.visitType, required this.visitNumber});

  @override
  State<VisitList> createState() => _VisitListState();
}

class _VisitListState extends State<VisitList> {
  late RiveAnimation riveDark;
  late RiveAnimation riveLight;
  @override
  void initState() {
    riveDark = const RiveAnimation.asset(
      'assets/animations/calendar_visit_dark.riv',
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );
    riveLight = const RiveAnimation.asset(
      'assets/animations/calendar_visit_light.riv',
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                (widget.visitType == VisitType.upcoming)
                    ? Column(
                        children: [
                          SizedBox(
                            height: 80,
                            child: BlocBuilder<ThemeCubit, ThemeState>(
                              builder: (context, state) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: kIconSizeMedium5,
                                        ),
                                        // SizedBox(
                                        //     width: 260,
                                        //     height: 200,
                                        //     child: Center(
                                        //         child: (state.isLightTheme!)
                                        //             ? riveDark
                                        //             : riveLight)),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .plannedVisitsEmpty,
                                          textAlign: TextAlign.center,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primaryContainer,
                                                  fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                        ],
                      )
                    : const SizedBox(),
                SizedBox(
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: widget.visitNumber,
                    itemBuilder: ((context, index) {
                      return SingleVisitBox(visitType: widget.visitType);
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
