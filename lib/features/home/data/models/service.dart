class ServiceModel {
  final String imageUrl;
  final String title;
  final String? tag;
  final String? time;

  const ServiceModel({
    required this.imageUrl,
    required this.title,
    this.tag,
    this.time,
  });
}
