// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connected_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConnectedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedEvent()';
}


}

/// @nodoc
class $ConnectedEventCopyWith<$Res>  {
$ConnectedEventCopyWith(ConnectedEvent _, $Res Function(ConnectedEvent) __);
}


/// Adds pattern-matching-related methods to [ConnectedEvent].
extension ConnectedEventPatterns on ConnectedEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( OnConnected value)?  onConnected,TResult Function( OnNotConnected value)?  onNotConnected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case OnConnected() when onConnected != null:
return onConnected(_that);case OnNotConnected() when onNotConnected != null:
return onNotConnected(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( OnConnected value)  onConnected,required TResult Function( OnNotConnected value)  onNotConnected,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case OnConnected():
return onConnected(_that);case OnNotConnected():
return onNotConnected(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( OnConnected value)?  onConnected,TResult? Function( OnNotConnected value)?  onNotConnected,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case OnConnected() when onConnected != null:
return onConnected(_that);case OnNotConnected() when onNotConnected != null:
return onNotConnected(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  onConnected,TResult Function()?  onNotConnected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case OnConnected() when onConnected != null:
return onConnected();case OnNotConnected() when onNotConnected != null:
return onNotConnected();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  onConnected,required TResult Function()  onNotConnected,}) {final _that = this;
switch (_that) {
case _Started():
return started();case OnConnected():
return onConnected();case OnNotConnected():
return onNotConnected();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  onConnected,TResult? Function()?  onNotConnected,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case OnConnected() when onConnected != null:
return onConnected();case OnNotConnected() when onNotConnected != null:
return onNotConnected();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ConnectedEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedEvent.started()';
}


}




/// @nodoc


class OnConnected implements ConnectedEvent {
  const OnConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedEvent.onConnected()';
}


}




/// @nodoc


class OnNotConnected implements ConnectedEvent {
  const OnNotConnected();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnNotConnected);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedEvent.onNotConnected()';
}


}




/// @nodoc
mixin _$ConnectedState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedState()';
}


}

/// @nodoc
class $ConnectedStateCopyWith<$Res>  {
$ConnectedStateCopyWith(ConnectedState _, $Res Function(ConnectedState) __);
}


/// Adds pattern-matching-related methods to [ConnectedState].
extension ConnectedStatePatterns on ConnectedState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( ConnectedSucessState value)?  connectedSucessState,TResult Function( ConnectedFailureState value)?  connectedFailureState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ConnectedSucessState() when connectedSucessState != null:
return connectedSucessState(_that);case ConnectedFailureState() when connectedFailureState != null:
return connectedFailureState(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( ConnectedSucessState value)  connectedSucessState,required TResult Function( ConnectedFailureState value)  connectedFailureState,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case ConnectedSucessState():
return connectedSucessState(_that);case ConnectedFailureState():
return connectedFailureState(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( ConnectedSucessState value)?  connectedSucessState,TResult? Function( ConnectedFailureState value)?  connectedFailureState,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case ConnectedSucessState() when connectedSucessState != null:
return connectedSucessState(_that);case ConnectedFailureState() when connectedFailureState != null:
return connectedFailureState(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  connectedSucessState,TResult Function()?  connectedFailureState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ConnectedSucessState() when connectedSucessState != null:
return connectedSucessState();case ConnectedFailureState() when connectedFailureState != null:
return connectedFailureState();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  connectedSucessState,required TResult Function()  connectedFailureState,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case ConnectedSucessState():
return connectedSucessState();case ConnectedFailureState():
return connectedFailureState();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  connectedSucessState,TResult? Function()?  connectedFailureState,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case ConnectedSucessState() when connectedSucessState != null:
return connectedSucessState();case ConnectedFailureState() when connectedFailureState != null:
return connectedFailureState();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ConnectedState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedState.initial()';
}


}




/// @nodoc


class ConnectedSucessState implements ConnectedState {
  const ConnectedSucessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedSucessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedState.connectedSucessState()';
}


}




/// @nodoc


class ConnectedFailureState implements ConnectedState {
  const ConnectedFailureState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedFailureState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ConnectedState.connectedFailureState()';
}


}




// dart format on
