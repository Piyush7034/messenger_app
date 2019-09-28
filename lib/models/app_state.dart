import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
    AppState._();
    factory AppState([updates(AppStateBuilder b)]) = _$AppState;
    static Serializer<AppState> get serializer => _$appStateSerializer;
    
}
