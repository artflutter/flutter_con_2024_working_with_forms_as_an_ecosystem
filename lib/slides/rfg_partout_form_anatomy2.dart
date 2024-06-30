import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RfgPartoutFormAnatomy2 extends FlutterDeckSlideWidget {
  const RfgPartoutFormAnatomy2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/rfg_partout_form_anatomy2',
            header: FlutterDeckHeaderConfiguration(
              title: 'Part out form anatomy',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      splitRatio: const SplitSlideRatio(
        left: 4,
        right: 2,
      ),
      leftBuilder: (context) => const SingleChildScrollView(
        key: PageStorageKey('RfgPartoutFormAnatomy2Left'),
        child: Center(
          child: FlutterDeckCodeHighlight(
            language: 'dart',
            code: '''
class _PartOutFormWidgetState extends State<PartOutFormWidget> {
  void _handleRemove(PartOutForm formModel, int i) {
    formModel.removePartListItemAtIndex(i);
  }

  void _handleAdd(PartOutForm formModel) {
    formModel.addPartListItem(const Part());
  }

  @override
  Widget build(BuildContext context) {
    return PartOutFormBuilder(builder: (context, formModel, child) {
            
        return ReactivePartOutFormFormGroupArrayBuilder<PartForm>(
          
          builder: (context, itemList, formModel) {
            return AnimatedList(
              key: _animatedListKeyForm,
              itemBuilder: (context, index, animation) { /* ... */ },
              initialItemCount: itemList.length,
            );
          },
          
          itemBuilder: (context, i, formItem, formModel)  { /* ... */ },
        )
      });}}''',
          ),
        ),
      ),
      rightBuilder: (context) => const SizedBox(),
    );
  }
}
