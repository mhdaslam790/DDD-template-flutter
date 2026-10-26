import 'package:file_picker/file_picker.dart';

class FilePickerService {
  static Future<String?> pickPdfFile() async {
    final PlatformFile? result = await FilePicker.pickFile(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    return result?.path;
  }

  static Future<String?> pickImageFromGallery() async {
    final PlatformFile? result = await FilePicker.pickFile(
      type: FileType.image,
    );

    return result?.path;
  }
}
