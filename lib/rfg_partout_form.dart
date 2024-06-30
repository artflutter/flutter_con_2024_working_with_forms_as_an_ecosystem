import 'package:flutter/material.dart';
import 'package:flutter_con_2024_working_with_forms_as_an_ecosystem/part_out.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_image_picker/reactive_image_picker.dart';

class PartOutFormWidget extends StatefulWidget {
  const PartOutFormWidget({super.key});

  @override
  State<PartOutFormWidget> createState() => _PartOutFormWidgetState();
}

class _PartOutFormWidgetState extends State<PartOutFormWidget> {
  PartOut? _part;
  final _animatedListKeyForm = GlobalKey<AnimatedListState>();

  void _handleUrlRemove(
    PartOutForm formModel,
    int i,
    FormControl<String> descriptionControl,
    FormControl<List<SelectedFile>> imageControl,
    FormControl<String> remarksControl,
  ) {
    _animatedListKeyForm.currentState?.removeItem(
      i,
      (context, animation) => SizeTransition(
        sizeFactor: animation,
        child: FadeTransition(
          opacity: animation,
          child: _buildUrlListItem(
            formModel,
            i,
            descriptionControl,
            imageControl,
            remarksControl,
          ),
        ),
      ),
    );

    formModel.removePartListItemAtIndex(i);
  }

  Widget _buildUrlListItem(
    PartOutForm formModel,
    int i,
    FormControl<String> labelControl,
    FormControl<List<SelectedFile>> imageControl,
    FormControl<String> remarksControl,
  ) {
    return UrlListItem(
      header: UrlListItemHeader(
        onTap: () => _handleUrlRemove(
          formModel,
          i,
          labelControl,
          imageControl,
          remarksControl,
        ),
      ),
      content: PartListItemContent(
        descriptionControl: labelControl,
        imageControl: imageControl,
        remarksControl: remarksControl,
      ),
    );
  }

  void _handleUrlAdd(PartOutForm formModel) {
    formModel.addPartListItem(const Part());
    _animatedListKeyForm.currentState?.insertItem(
      (formModel.partListControl.value ?? []).length - 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PartOutFormBuilder(
        model: _part,
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PartListAddItem(
                onTap: () => _handleUrlAdd(formModel),
              ),
              Expanded(
                child: ReactivePartOutFormFormGroupArrayBuilder<PartForm>(
                  getExtended: (formModel) => formModel.partListExtendedControl,
                  builder: (context, itemList, formModel) {
                    return AnimatedList(
                      key: _animatedListKeyForm,
                      itemBuilder: (context, index, animation) {
                        return FadeTransition(
                          opacity: animation,
                          child: SizeTransition(
                            sizeFactor: animation,
                            child: itemList[index],
                          ),
                        );
                      },
                      initialItemCount: itemList.length,
                    );
                  },
                  itemBuilder: (context, i, formItem, formModel) {
                    if (formItem == null) {
                      return const SizedBox.shrink();
                    }
                    return _buildUrlListItem(
                      formModel,
                      i,
                      formItem.descriptionControl,
                      formItem.imageControl,
                      formItem.remarksControl,
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class PartListAddItem extends StatelessWidget {
  final VoidCallback onTap;

  const PartListAddItem({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Icon(Icons.add_circle),
              SizedBox(width: 8),
              Text(
                'Part',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UrlListItem extends StatelessWidget {
  final Widget? header;
  final Widget? content;

  const UrlListItem({super.key, this.header, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        header ?? const SizedBox.shrink(),
        content ?? const SizedBox.shrink(),
      ],
    );
  }
}

class UrlListItemHeader extends StatelessWidget {
  final VoidCallback? onTap;

  const UrlListItemHeader({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 16),
        const Spacer(),
        if (onTap != null)
          IconButton(
            onPressed: onTap,
            icon: const Icon(Icons.remove_circle),
          ),
      ],
    );
  }
}

class PartListItemContent extends StatelessWidget {
  final Widget? header;
  final FormControl<String> descriptionControl;
  final FormControl<String> remarksControl;
  final FormControl<List<SelectedFile>> imageControl;

  const PartListItemContent({
    super.key,
    this.header,
    required this.descriptionControl,
    required this.remarksControl,
    required this.imageControl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox.square(
                    dimension: 200,
                    child: Center(
                      child: ReactiveImagePicker(
                        key: ObjectKey(imageControl),
                        formControl: imageControl,
                        mediaSize: const Size(double.infinity, 150),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 130,
                          child: ReactiveTextField<String>(
                            key: ObjectKey(descriptionControl),
                            formControl: descriptionControl,
                            validationMessages: {
                              ValidationMessage.required: (_) => 'Required'
                            },
                            minLines: 4,
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                            decoration: const InputDecoration(
                              alignLabelWithHint: true,
                              labelText: 'Description *',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        ReactiveTextField<String>(
                          key: ObjectKey(remarksControl),
                          formControl: remarksControl,
                          validationMessages: {
                            ValidationMessage.required: (_) => 'Required'
                          },
                          decoration: const InputDecoration(
                            alignLabelWithHint: true,
                            labelText: 'My remarks *',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
