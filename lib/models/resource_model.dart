class Resource {
  final int id;
  final String name;
  final String description;
  final String category;

  Resource({
    this.id,
    this.name,
    this.description,
    this.category,
  }); 

}

final Resource school = Resource(
      id: 1,
      category: 'Education',
      name: 'Design',
      description: '22 schools\n > 100 courses',
);
final Resource programming = Resource(
      id: 2,
      category: 'Education',
      name: 'Programming',
      description: '20 schools\n > 90 courses',
);

final Resource netflix = Resource(
      id: 3,
      category: 'Entertainment',
      name: 'Netflix',
      description: '100 series\n > 100 dramas',
);

List<Resource> resources = [school, programming, netflix];
