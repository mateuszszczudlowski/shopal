import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';

class DescriptionTextWidget extends StatefulWidget {
  final String description;
  const DescriptionTextWidget({super.key, required this.description});

  @override
  State<DescriptionTextWidget> createState() => _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  bool fullText = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialistViewBloc, SpecialistViewState>(
        builder: (context, state) {
      return state.descriptionSecondPart!.isEmpty
          ? Text(
              state.descriptionFirstPart!,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    fontSize: 15,
                  ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  child: (fullText == true)
                      ? Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "${state.descriptionFirstPart!}...",
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6,
                                  fontSize: 15,
                                ),
                          ),
                        )
                      : Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            state.descriptionFirstPart! +
                                state.descriptionSecondPart!,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6,
                                  fontSize: 15,
                                ),
                          ),
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        fullText
                            ? AppLocalizations.of(context)!.showMoreText
                            : AppLocalizations.of(context)!.showLessText,
                        style:
                            Theme.of(context).textTheme.displayLarge!.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  fontSize: 14,
                                ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      RotatedBox(
                        quarterTurns: fullText ? 0 : 2,
                        child: Icon(
                          Icons.expand_more,
                          size: 20,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      fullText = !fullText;
                    });
                  },
                ),
              ],
            );
    });
  }
}
