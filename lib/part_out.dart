import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

part 'part_out.gform.dart';

part 'part_out.freezed.dart';

@Rf(output: false)
@freezed
class PartOut with _$PartOut {
  const factory PartOut({
    @RfArray() @Default([]) List<Part> partList,
  }) = _PartOut;
}

@RfGroup()
@freezed
class Part with _$Part {
  const factory Part({
    @Default('') String description,
    @Default('') String remarks,
    @Default([]) List<SelectedFile> image,
  }) = _Part;
}
