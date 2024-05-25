import 'dart:io';

const allowedFileType = [
  'jpg',
  'svg',
  'png',
  'pdf',
  'doc',
  'docx',
  'm4a',
  'mp3',
  '.pages',
  'xls',
  'xlsx',
  'csv',
  'txt',
  'mov',
  'mp4',
  'm4v',
  'mpeg',
  'mpg'
];

extension FileExtention on FileSystemEntity {
  String? get name {
    return path.split('/').last;
  }
}
