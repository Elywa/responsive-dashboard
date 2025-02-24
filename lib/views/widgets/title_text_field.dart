import 'package:dashboard/utils/app_styles.dart';
import 'package:dashboard/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.textSemiBold16),
        SizedBox(height: 12),
        CustomTextField(hint: "Type customer name"),
      ],
    );
  }
}
