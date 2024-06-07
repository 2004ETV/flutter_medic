

enum AnalyzesCategories {
  all(title: 'Всё'),
  news(title: 'Новости'),
  covid(title: 'Covid 19'),
  popular(title: 'Популярное'),
  complex(title: 'Комплекс');

  const AnalyzesCategories({
    required this.title,
  });

  final String title;
}
