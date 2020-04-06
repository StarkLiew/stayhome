class Activity {
  final int id;
  final String name;
  final String imageUrl;

  Activity({
    this.id,
    this.name,
    this.imageUrl,
  });
}

final Activity recipes = Activity(id: 1, name: 'Recipes', imageUrl: '');

final Activity games = Activity(id: 2, name: 'Games', imageUrl: '');

final Activity exercises = Activity(id: 3, name: 'Exercises', imageUrl: '');

final Activity reading = Activity(id: 4, name: 'Reading', imageUrl: '');

final Activity drawing = Activity(id: 5, name: 'Drawing', imageUrl: '');


List<Activity> activities = [recipes, games, exercises, reading, drawing];
