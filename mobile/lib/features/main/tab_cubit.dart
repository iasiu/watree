import 'package:bloc/bloc.dart';

enum WTTab { home, history }

class TabCubit extends Cubit<WTTab> {
  TabCubit() : super(WTTab.home);

  void change(WTTab tab) => emit(tab);
}
