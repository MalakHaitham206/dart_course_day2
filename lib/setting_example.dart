class UserPreferences {
  Map<String, dynamic> settings = {
    'theme': 'dark',
    'notifications': true,
    'language': 'en',
  };

  Set<String> favoriteCategories = {'technology', 'sports'};

  void updateSetting(String key, dynamic value) {
    settings[key] = value;
  }

  void addFavoriteCategory(String category) {
    favoriteCategories.add(category);
  }
}
