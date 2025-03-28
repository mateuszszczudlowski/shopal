import 'package:flutter/material.dart';

import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/specialist_screen/widget/specialist_services_row.dart';

class SpecialistServicesPage extends StatelessWidget {
  final SpecialistData specialistData;
  const SpecialistServicesPage({super.key, required this.specialistData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: kServicesListPadding,
              itemCount: specialistData.services!.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: SpecialistServicesRow(
                    service: specialistData.services![index],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
