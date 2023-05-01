class Course {
  String image;
  String name;
  String duration;
  double rate;
  String description;
  String instructor;
  String platform;
  bool expand=false;
  String level;

  Course({required this.image, required this.name, required this.rate, required this.duration, required this.description,
  required this.instructor, required this.platform, required this.level});
}

Course c1 = new Course(image: 'assets/Images/crsImg1.jpg', name: 'Machine learning full course', rate: 4.0, duration: '6 hours', description: 'this is fvghjkjhgfdfghj', instructor: 'laila', platform: 'Coursera', level: 'Beginner');
Course c2 = new Course(image: 'assets/Images/crsImg2.jpg', name: 'Digital marketing full course', rate: 3.5, duration: '4 hours', description: 'this is fvghjkjhgfdfghj', instructor: 'laila', platform: 'Coursera', level: 'Advanced');
Course c3 = new Course(image: 'assets/Images/crsImg3.png', name: 'Frontend development course', rate: 5.3, duration: '6 hours', description: 'this is fvghjkjhgfdfghj', instructor: 'laila', platform: 'Coursera', level: 'Beginner');
Course c4 = new Course(image: 'assets/Images/crsImg4.png', name: 'Frontend development course', rate: 2.3, duration: '6 hours', description: 'this is fvghjkjhgfdfghj', instructor: 'laila', platform: 'Coursera', level: 'Expert');
Course c5 = new Course(image: 'assets/Images/crsImg5.png', name: 'Frontend development course', rate: 3.2, duration: '6 hours', description: 'this is fvghjkjhgfdfghj', instructor: 'laila', platform: 'Coursera', level: 'Beginner');
List<Course> courses = [c1,c2,c3,c4,c5];