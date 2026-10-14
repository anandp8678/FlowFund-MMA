import 'package:mma/models/category/category_models.dart';

abstract class CategoryDbFunctions {
   List<CategoryModels> getCategories();
   Future<void> insertCategory(CategoryModels value);
}

abstract class CategoryDB implements CategoryDbFunctions{
  @override
  Future<void> insertCategory(CategoryModels value) async {
    
  }
  
}