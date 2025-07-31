
import 'package:flutter/material.dart';
import 'package:tribpix/components/widgets/decoration_utils_post.dart';
import 'package:tribpix/components/widgets/my_text_list_title.dart';
class MyDropdown extends StatefulWidget {
  final String? label;
  final String? value;
  final bool? isRequire;
  final String? errorMsg;
  final List<String>? list;
  final FormFieldValidator? validator;
  final ValueChanged? onChanged;

  const MyDropdown({
    Key? key,
    this.label,
    this.value,
    this.isRequire,
    this.errorMsg,
    this.list,
    this.validator,
    this.onChanged,
  }) : super(key: key);

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          decoration: DecorationUtilsPost(context).getUnderlineInputDecoration(),
          hint: Text(widget.label != null ? widget.label! : ''),
          isExpanded: true,
          value: widget.value,
          icon: const Icon(Icons.arrow_drop_down),
          items: widget.list?.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: MyTextListTitle(label: value),
            );
          }).toList(),
          validator: widget.validator,
          onChanged: widget.onChanged,
        ),
      ],
    );
  }
}
