class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription,});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Lokking for Crockery Products',
      image: 'images/onboardingimg1.png',
      discription: 'Find Crocker Products in multiple varities in reasonable price,great dicount and coupons.',
  ),
  UnbordingContent(
      title: 'Transfer your payment Easily',
      image: 'images/onboardingimg2.png',
      discription:  'Transfer Your payment By any Bank Account.',
  ),
  UnbordingContent(
      title:'Deliver at Your Door step',
      image: 'images/onboardingimg3.png',
      discription:'Safe and fast delivery for your valuable crockery at your door without any hustle',
  ),
];
