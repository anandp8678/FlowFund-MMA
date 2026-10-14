import 'package:hive_ce/hive.dart';
import 'package:mma/models/category/category_models.dart';

const CATEGORY_DB_NAME = 'category-database';

abstract class CategoryDbFunctions {
  Future<List<CategoryModels>> getCategories();
  Future<void> insertCategory(CategoryModels value);
}

class CategoryDB implements CategoryDbFunctions {
  @override
  Future<void> insertCategory(CategoryModels value) async {
    final categoryDB = await Hive.openBox<CategoryModels>(CATEGORY_DB_NAME);
    await categoryDB.add(value);
  }

  @override
  Future<List<CategoryModels>> getCategories() async {
    final categoryDB = await Hive.openBox<CategoryModels>(CATEGORY_DB_NAME);
    return categoryDB.values.toList();
  }
}