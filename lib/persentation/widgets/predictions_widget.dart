import 'package:flutter/material.dart';
import 'package:nationality_prediction/constants/functions.dart';

class PredictionsWidget extends StatelessWidget {

  final String countryId;
  final double? probability;

  const PredictionsWidget({super.key, required this.countryId, required this.probability});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '${AppFunctions.transformCountryIdToCountryName(countryId,)}  =>',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Text(
            probability
                .toString(),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
