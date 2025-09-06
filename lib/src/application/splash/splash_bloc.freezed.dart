// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SplashEvent {

 int get splashTime; String get currentLangue; bool? get withDeepLink;
/// Create a copy of SplashEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplashEventCopyWith<SplashEvent> get copyWith => _$SplashEventCopyWithImpl<SplashEvent>(this as SplashEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashEvent&&(identical(other.splashTime, splashTime) || other.splashTime == splashTime)&&(identical(other.currentLangue, currentLangue) || other.currentLangue == currentLangue)&&(identical(other.withDeepLink, withDeepLink) || other.withDeepLink == withDeepLink));
}


@override
int get hashCode => Object.hash(runtimeType,splashTime,currentLangue,withDeepLink);

@override
String toString() {
  return 'SplashEvent(splashTime: $splashTime, currentLangue: $currentLangue, withDeepLink: $withDeepLink)';
}


}

/// @nodoc
abstract mixin class $SplashEventCopyWith<$Res>  {
  factory $SplashEventCopyWith(SplashEvent value, $Res Function(SplashEvent) _then) = _$SplashEventCopyWithImpl;
@useResult
$Res call({
 int splashTime, String currentLangue, bool? withDeepLink
});




}
/// @nodoc
class _$SplashEventCopyWithImpl<$Res>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._self, this._then);

  final SplashEvent _self;
  final $Res Function(SplashEvent) _then;

/// Create a copy of SplashEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? splashTime = null,Object? currentLangue = null,Object? withDeepLink = freezed,}) {
  return _then(_self.copyWith(
splashTime: null == splashTime ? _self.splashTime : splashTime // ignore: cast_nullable_to_non_nullable
as int,currentLangue: null == currentLangue ? _self.currentLangue : currentLangue // ignore: cast_nullable_to_non_nullable
as String,withDeepLink: freezed == withDeepLink ? _self.withDeepLink : withDeepLink // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SplashEvent].
extension SplashEventPatterns on SplashEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StartLoading value)?  startLoading,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StartLoading() when startLoading != null:
return startLoading(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StartLoading value)  startLoading,}){
final _that = this;
switch (_that) {
case StartLoading():
return startLoading(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StartLoading value)?  startLoading,}){
final _that = this;
switch (_that) {
case StartLoading() when startLoading != null:
return startLoading(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int splashTime,  String currentLangue,  bool? withDeepLink)?  startLoading,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StartLoading() when startLoading != null:
return startLoading(_that.splashTime,_that.currentLangue,_that.withDeepLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int splashTime,  String currentLangue,  bool? withDeepLink)  startLoading,}) {final _that = this;
switch (_that) {
case StartLoading():
return startLoading(_that.splashTime,_that.currentLangue,_that.withDeepLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int splashTime,  String currentLangue,  bool? withDeepLink)?  startLoading,}) {final _that = this;
switch (_that) {
case StartLoading() when startLoading != null:
return startLoading(_that.splashTime,_that.currentLangue,_that.withDeepLink);case _:
  return null;

}
}

}

/// @nodoc


class StartLoading implements SplashEvent {
  const StartLoading(this.splashTime, this.currentLangue, this.withDeepLink);
  

@override final  int splashTime;
@override final  String currentLangue;
@override final  bool? withDeepLink;

/// Create a copy of SplashEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartLoadingCopyWith<StartLoading> get copyWith => _$StartLoadingCopyWithImpl<StartLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartLoading&&(identical(other.splashTime, splashTime) || other.splashTime == splashTime)&&(identical(other.currentLangue, currentLangue) || other.currentLangue == currentLangue)&&(identical(other.withDeepLink, withDeepLink) || other.withDeepLink == withDeepLink));
}


@override
int get hashCode => Object.hash(runtimeType,splashTime,currentLangue,withDeepLink);

@override
String toString() {
  return 'SplashEvent.startLoading(splashTime: $splashTime, currentLangue: $currentLangue, withDeepLink: $withDeepLink)';
}


}

/// @nodoc
abstract mixin class $StartLoadingCopyWith<$Res> implements $SplashEventCopyWith<$Res> {
  factory $StartLoadingCopyWith(StartLoading value, $Res Function(StartLoading) _then) = _$StartLoadingCopyWithImpl;
@override @useResult
$Res call({
 int splashTime, String currentLangue, bool? withDeepLink
});




}
/// @nodoc
class _$StartLoadingCopyWithImpl<$Res>
    implements $StartLoadingCopyWith<$Res> {
  _$StartLoadingCopyWithImpl(this._self, this._then);

  final StartLoading _self;
  final $Res Function(StartLoading) _then;

/// Create a copy of SplashEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? splashTime = null,Object? currentLangue = null,Object? withDeepLink = freezed,}) {
  return _then(StartLoading(
null == splashTime ? _self.splashTime : splashTime // ignore: cast_nullable_to_non_nullable
as int,null == currentLangue ? _self.currentLangue : currentLangue // ignore: cast_nullable_to_non_nullable
as String,freezed == withDeepLink ? _self.withDeepLink : withDeepLink // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$SplashState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplashState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState()';
}


}

/// @nodoc
class $SplashStateCopyWith<$Res>  {
$SplashStateCopyWith(SplashState _, $Res Function(SplashState) __);
}


/// Adds pattern-matching-related methods to [SplashState].
extension SplashStatePatterns on SplashState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Loading value)?  loading,TResult Function( Loaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Loading value)  loading,required TResult Function( Loaded value)  loaded,}){
final _that = this;
switch (_that) {
case Loading():
return loading(_that);case Loaded():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Loading value)?  loading,TResult? Function( Loaded value)?  loaded,}){
final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading(_that);case Loaded() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( bool isLogin,  PageRouteInfo<dynamic> route)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.isLogin,_that.route);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( bool isLogin,  PageRouteInfo<dynamic> route)  loaded,}) {final _that = this;
switch (_that) {
case Loading():
return loading();case Loaded():
return loaded(_that.isLogin,_that.route);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( bool isLogin,  PageRouteInfo<dynamic> route)?  loaded,}) {final _that = this;
switch (_that) {
case Loading() when loading != null:
return loading();case Loaded() when loaded != null:
return loaded(_that.isLogin,_that.route);case _:
  return null;

}
}

}

/// @nodoc


class Loading implements SplashState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SplashState.loading()';
}


}




/// @nodoc


class Loaded implements SplashState {
  const Loaded(this.isLogin, this.route);
  

 final  bool isLogin;
 final  PageRouteInfo<dynamic> route;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&(identical(other.isLogin, isLogin) || other.isLogin == isLogin)&&(identical(other.route, route) || other.route == route));
}


@override
int get hashCode => Object.hash(runtimeType,isLogin,route);

@override
String toString() {
  return 'SplashState.loaded(isLogin: $isLogin, route: $route)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $SplashStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 bool isLogin, PageRouteInfo<dynamic> route
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of SplashState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLogin = null,Object? route = null,}) {
  return _then(Loaded(
null == isLogin ? _self.isLogin : isLogin // ignore: cast_nullable_to_non_nullable
as bool,null == route ? _self.route : route // ignore: cast_nullable_to_non_nullable
as PageRouteInfo<dynamic>,
  ));
}


}

// dart format on
