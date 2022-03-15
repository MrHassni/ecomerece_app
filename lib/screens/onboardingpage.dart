class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription,});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Amazing Deals & offers',
      image: 'images/onboardingimg1.png',
      discription: 'Find deals that are cheaper than local supermarket great discount, and cash back',
  ),
  UnbordingContent(
      title: 'Everyday Fresh & Healthy',
      image: 'images/onboardingimg2.png',
      discription:  'Quickly search and select a wide range of products from everyday fresh and healthy grocery',
  ),
  UnbordingContent(
      title:'Deliver at Your Door',
      image: 'images/onboardingimg3.png',
      discription:'Safe and fast delivery for your valuable groceries at your door without any hustle',
  ),
];
