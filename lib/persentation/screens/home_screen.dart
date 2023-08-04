import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nationality_prediction/constants/strings.dart';
import '../../cubit/nationalize_cubit.dart';
import '../../data/models/country.dart';
import '../../data/models/nationalize.dart';
import '../widgets/nationality_button.dart';
import '../widgets/nationality_text_field.dart';
import '../widgets/nationality_widget.dart';
import '../widgets/predictions_widget.dart';

class NationalizeHomeScreen extends StatefulWidget {
  const NationalizeHomeScreen({Key? key}) : super(key: key);

  @override
  State<NationalizeHomeScreen> createState() => _NationalizeHomeScreenState();
}

class _NationalizeHomeScreenState extends State<NationalizeHomeScreen> {
  Nationalize nationalize = Nationalize();
  TextEditingController name = TextEditingController();
  List<Country> countries = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      appBar: AppBar(
        title: const Text(
          AppStrings.applicationName,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(
          16.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NationalityTextField(
                textEditingController: name,
              ),
              const SizedBox(
                height: 10,
              ),
              NationalityButton(
                title: AppStrings.getNationalityButton,
                onPressed: () {
                  if (name.text.isNotEmpty) {
                    BlocProvider.of<NationalizeCubit>(context)
                        .emitGetData(name.text);
                    name.clear();
                  } else {}
                },
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.all(
                  16.0,
                ),
                child: BlocBuilder<NationalizeCubit, NationalizeState>(
                  builder: (context, state) {
                    if (state is GetDataState) {
                      nationalize = state.nationalize;
                      countries = nationalize.country!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          NationalityWidget(
                            name: nationalize.name.toString(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: nationalize.country!.length,
                            itemBuilder: (context, index) {
                              return PredictionsWidget(
                                countryId: nationalize.country![index].countryId
                                    .toString(),
                                probability:
                                    nationalize.country![index].probability,
                              );
                            },
                          ),
                        ],
                      );
                    } else {
                      return const Center(
                        child: SizedBox(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
