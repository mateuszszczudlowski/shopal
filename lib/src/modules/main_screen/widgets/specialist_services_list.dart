import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_service.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class SpecialistServicesList extends StatelessWidget {
  const SpecialistServicesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: kListViewHeightMobile3,
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              SpecialistService(
                specialistServiceName:
                    AppLocalizations.of(context)!.specialistService1,
                boxPadding: kCustomSmall7,
                svgIconSrc: (state.isLightTheme!)
                    ? AppImages.styleWardrobeReviewDark
                    : AppImages.styleWardrobeReviewLight,
              ),
              SpecialistService(
                specialistServiceName:
                    AppLocalizations.of(context)!.specialistService2,
                boxPadding: kCustomSmall7,
                svgIconSrc: (state.isLightTheme!)
                    ? AppImages.styleConsultationDark
                    : AppImages.styleConsultationLight,
              ),
              SpecialistService(
                specialistServiceName:
                    AppLocalizations.of(context)!.specialistService3,
                boxPadding: kCustomSmall7,
                svgIconSrc: (state.isLightTheme!)
                    ? AppImages.vipLongerTermSupportDark
                    : AppImages.vipLongerTermSupportLight,
              ),
              SpecialistService(
                specialistServiceName:
                    AppLocalizations.of(context)!.specialistService4,
                boxPadding: kCustomSmall7,
                svgIconSrc: (state.isLightTheme!)
                    ? AppImages.wardrobeAnalysisRefreshDark
                    : AppImages.wardrobeAnalysisRefreshLight,
              ),
              SpecialistService(
                specialistServiceName:
                    AppLocalizations.of(context)!.specialistService5,
                boxPadding: kCustomSmall7,
                svgIconSrc: (state.isLightTheme!)
                    ? AppImages.completeSeasonalSortDark
                    : AppImages.completeSeasonalSortLight,
              ),
            ],
          ),
        );
      },
    );
  }
}
