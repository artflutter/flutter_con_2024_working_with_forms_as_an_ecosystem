import 'dart:convert';

import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/docs/nested/nested.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/lib/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;

class NestedFormWidget extends StatefulWidget {
  final ValueChanged<Nested>? onChange;

  const NestedFormWidget({super.key, this.onChange});

  @override
  State<NestedFormWidget> createState() => _NestedFormWidgetState();
}

class _NestedFormWidgetState extends State<NestedFormWidget> {
  String modelString = '';

  String formValueString = '';

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: NestedFormBuilder(
        builder: (context, formModel, child) {
          return Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      formModel.groupListValueUpdate([]);

                      formModel.addGroupListItem(const Group(
                        id: 'id_1',
                        subGroupList: [],
                      ));
                      formModel.groupListGroupForm
                          .elementAt(0)
                          .addSubGroupListItem(
                            const SubGroup(
                              id: 'sub_id_1',
                            ),
                          );

                      final model = formModel.model;
                      widget.onChange?.call(model);

                      modelString = const JsonEncoder.withIndent('  ').convert(
                        formModel.model.toJson(),
                      );
                      formValueString = const JsonEncoder.withIndent('  ')
                          .convert(formModel.form.value);
                    });
                  },
                  child: const Text(
                    'Add item independently',
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      formModel.groupListValueUpdate([]);
                      formModel.addGroupListItem(const Group(
                        id: 'id_1',
                        subGroupList: [
                          SubGroup(
                            id: 'sub_id_1',
                          ),
                        ],
                      ));

                      final model = formModel.model;
                      widget.onChange?.call(model);

                      modelString = const JsonEncoder.withIndent('  ').convert(
                        formModel.model.toJson(),
                      );
                      formValueString = const JsonEncoder.withIndent('  ')
                          .convert(formModel.form.value);
                    });
                  },
                  child: const Text('Add item'),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SelectableText('Form value'),
                        SelectableText(formValueString),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const SelectableText('Model'),
                        SelectableText(modelString),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
