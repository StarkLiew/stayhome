class Resource {
  final int id;
  final String name;
  final int schools;
  final int courses;
  final String category;

  Resource({
    this.id,
    this.name,
    this.schools,
    this.courses,
    this.category,
  }); 

}

final Resource school = Resource(
      id: 1,
      category: 'Education',
      name: 'Design',
      schools: 22,
      courses: 100,
);
final Resource programming = Resource(
      id: 2,
      category: 'Education',
      name: 'Programming',
      schools: 20,
      courses: 90,
);

List<Resource> resources = [school, programming];
