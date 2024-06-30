// import 'package:flutter/material.dart';
// import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/part_out.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_image_picker/reactive_image_picker.dart';
//
// class _PartOutFormWidgetState extends State<PartOutFormWidget> {
//   void _handleUrlRemove(PartOutForm formModel, int i) {
//     formModel.removePartListItemAtIndex(i);
//   }
//
//   void _handleUrlAdd(PartOutForm formModel) {
//     formModel.addPartListItem(const Part());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return PartOutFormBuilder(
//       builder: (context, formModel, child) {
//         return ReactivePartOutFormFormGroupArrayBuilder<PartForm>(
//
//           builder: (context, itemList, formModel) {
//             return AnimatedList(
//               key: _animatedListKeyForm,
//               itemBuilder: (context, index, animation) { /* ... */ },
//               initialItemCount: itemList.length,
//             );
//           },
//
//           itemBuilder: (context, i, formItem, formModel)  { /* ... */ },
//         )
//       },
//     );
//   }
// }
