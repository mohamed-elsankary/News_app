import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app/cache/cache_helper.dart';

part 'set_data_state.dart';

class SetDataCubit extends Cubit<SetDataState> {
  SetDataCubit() : super(SetDataInitial());

  Future<void> upDate({required bool value}) async {
    await CacheData.setData(key: 'ChangeTheme', value: value);

    emit(SetDataSuccess(value));
  }

  bool? getData() {
    final isdata = CacheData.getData(key: 'ChangeTheme');
    return isdata;
  }
}