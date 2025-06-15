import 'package:flutter_bloc/flutter_bloc.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoryBlocInitial()) {
    on<CategoriesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
