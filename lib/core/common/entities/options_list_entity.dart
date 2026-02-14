class OptionsListEntity {
  final String title;
  final List<String> options;
  final String? defOpt;

  const OptionsListEntity({
    this.defOpt,
    required this.title,
    required this.options,
  });
}
