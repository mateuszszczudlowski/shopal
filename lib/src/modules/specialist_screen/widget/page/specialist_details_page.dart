import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/main_screen/widgets/list_header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';
import 'package:template/src/modules/specialist_screen/widget/description_text_widget.dart';
import 'package:template/src/modules/specialist_screen/widget/opening_hours.dart';
import 'package:template/src/modules/specialist_screen/widget/social_media_row.dart';
import 'package:template/src/modules/specialist_screen/widget/worker_item.dart';
import 'package:template/src/utils/launch_phone.dart';
import 'package:template/src/utils/return_day_name.dart';

class SpecialistDetailsPage extends StatefulWidget {
  final SpecialistData specialistData;
  const SpecialistDetailsPage({super.key, required this.specialistData});

  @override
  State<SpecialistDetailsPage> createState() => _SpecialistDetailsPageState();
}

class _SpecialistDetailsPageState extends State<SpecialistDetailsPage> {
  @override
  void initState() {
    context.read<SpecialistViewBloc>().add(
        SpecialistViewEvent.getAboutInfo(widget.specialistData.description!));
    context.read<SpecialistViewBloc>().add(
        SpecialistViewEvent.getOpeningHoursList(
            widget.specialistData.openingHours!));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListHeader(
                fontSize: 17,
                headerText: AppLocalizations.of(context)!.aboutHeader,
              ),
              DescriptionTextWidget(
                  description: widget.specialistData.description!),
              ListHeader(
                fontSize: 17,
                headerText: AppLocalizations.of(context)!.workersHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 110,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: ((context, index) {
                    return const WorkerItem(
                      workerName: "Mateusz",
                    );
                  }),
                ),
              ),
              ListHeader(
                fontSize: 17,
                headerText: AppLocalizations.of(context)!.detailsHeader,
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 18, bottom: 16, left: 8, right: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).colorScheme.tertiary,
                      width: kNavigationBorderHeight,
                    ),
                    top: BorderSide(
                      color: Theme.of(context).colorScheme.tertiary,
                      width: kNavigationBorderHeight,
                    ),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          widget.specialistData.phoneNumber!,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color:
                                      Theme.of(context).colorScheme.secondary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 19,
                                  height: 1.6),
                        )
                      ],
                    ),
                    TextButton(
                      style: ButtonStyle(
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 16)),
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: kMediumBorderRadius,
                            side: BorderSide(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryContainer,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        await contactDial(widget.specialistData.phoneNumber!);
                      },
                      child: Text(
                        AppLocalizations.of(context)!.callBtn,
                        style: TextStyle(
                            fontSize: 13,
                            height: 1,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer),
                      ),
                    )
                  ],
                ),
              ),
              BlocBuilder<SpecialistViewBloc, SpecialistViewState>(
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.openingHoursUIList!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return OpeningHoursWidget(
                          dayName: returnDayName(index + 1, context),
                          workHours: ((state.openingHoursUIList![index]
                                          .openingTime !=
                                      null) &&
                                  ((state.openingHoursUIList![index]
                                          .closingTime !=
                                      null)))
                              ? '${state.openingHoursUIList![index].openingTime} - ${state.openingHoursUIList![index].closingTime} '
                              : null,
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ListHeader(
                fontSize: 17,
                headerText: AppLocalizations.of(context)!.mediaHeader,
              ),
              const SizedBox(
                height: 10,
              ),
              SocialMediaRow(
                  socialMediaLinks:
                      widget.specialistData.socialMediaLinks!.first)
            ],
          ),
        ),
      ),
    );
  }
}
