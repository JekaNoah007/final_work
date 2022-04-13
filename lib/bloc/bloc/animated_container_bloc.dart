import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'animated_container_event.dart';
part 'animated_container_state.dart';

class AnimatedContainerBloc extends Bloc<AnimatedContainerEvent, AnimatedContainerState> {
  AnimatedContainerBloc() : super(AnimatedContainerInitial()) {
    on<AnimatedContainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
