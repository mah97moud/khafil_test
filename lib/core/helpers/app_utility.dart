import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:khafil_test/core/extensions/context_ex.dart';

class AppUtility {
  factory AppUtility() => instance;

  AppUtility._shared();

  static final instance = AppUtility._shared();

  static Future<PlatformFile?> pickFile(
    BuildContext context,
  ) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      withData: true,
      onFileLoading: (status) {
        if (status == FilePickerStatus.picking) {
          context.showSnackBar('Picking File...');
        } else {
          context.hideSnackBar();
        }
      },
    );
    

    return result?.files.first;
  }
}
