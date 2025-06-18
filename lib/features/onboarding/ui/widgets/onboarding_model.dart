class OnboardingModel {
  final String title;
  final String description;

  OnboardingModel({
    required this.title,
    required this.description,
  });
}

List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: "all-in-one delivery",
    description:
        "Order groceries, medicines, and meals delivered straight to your door",
  ),
  OnboardingModel(
    title: "User-to-User Delivery",
    description: "Send or receive items from other users quickly and easily",
  ),
  OnboardingModel(
    title: "Sales & Discounts",
    description: "Discover exclusive sales and deals every day",
  ),
];
