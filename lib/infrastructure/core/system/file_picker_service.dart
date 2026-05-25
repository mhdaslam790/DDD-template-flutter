import 'package:file_picker/file_picker.dart';

class FilePickerService {
  static Future<String?> pickPdfFile() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    return result?.files.single.path;
  }

  static Future<String?> pickImageFromGallery() async {
    final FilePickerResult? result = await FilePicker.pickFiles(
      type: FileType.image,
    );

    return result?.files.single.path;
  }
}
