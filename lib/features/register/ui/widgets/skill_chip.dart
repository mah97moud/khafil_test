import 'package:flutter/material.dart';
import 'package:khafil_test/core/managers/colors_manager.dart';
import 'package:khafil_test/core/managers/styles_manager.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({
    super.key,
    required this.title,
    required this.isSelected,
    this.delete, this.add,
  });

  final String title;

  final bool isSelected;
  final void Function()? delete;
  final void Function()? add;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isSelected ? delete : add,
      child: Chip(
        label: Text(
          title,
          style: StylesManager.textStyle12.copyWith(color: ColorsManager.primary),
        ),
        backgroundColor: ColorsManager.primary100,
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        deleteIconColor: ColorsManager.primary,
        onDeleted: isSelected ? delete : null,
        side: BorderSide.none,
        
        deleteIcon: const Icon(
          Icons.close,
          size: 12.0,
        ),
      ),
    );
  }
}
