// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// Adds pattern-matching-related methods to [AuthFailure].
extension AuthFailurePatterns on AuthFailure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerError value)?  serverError,TResult Function( Unauthorized value)?  unauthorized,TResult Function( FieldError value)?  fieldError,TResult Function( NoNetwork value)?  noNetwork,TResult Function( InvalidEmailAndPasswordCombination value)?  invalidEmailAndPasswordCombination,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case Unauthorized() when unauthorized != null:
return unauthorized(_that);case FieldError() when fieldError != null:
return fieldError(_that);case NoNetwork() when noNetwork != null:
return noNetwork(_that);case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerError value)  serverError,required TResult Function( Unauthorized value)  unauthorized,required TResult Function( FieldError value)  fieldError,required TResult Function( NoNetwork value)  noNetwork,required TResult Function( InvalidEmailAndPasswordCombination value)  invalidEmailAndPasswordCombination,}){
final _that = this;
switch (_that) {
case ServerError():
return serverError(_that);case Unauthorized():
return unauthorized(_that);case FieldError():
return fieldError(_that);case NoNetwork():
return noNetwork(_that);case InvalidEmailAndPasswordCombination():
return invalidEmailAndPasswordCombination(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerError value)?  serverError,TResult? Function( Unauthorized value)?  unauthorized,TResult? Function( FieldError value)?  fieldError,TResult? Function( NoNetwork value)?  noNetwork,TResult? Function( InvalidEmailAndPasswordCombination value)?  invalidEmailAndPasswordCombination,}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case Unauthorized() when unauthorized != null:
return unauthorized(_that);case FieldError() when fieldError != null:
return fieldError(_that);case NoNetwork() when noNetwork != null:
return noNetwork(_that);case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  serverError,TResult Function( String errorText)?  unauthorized,TResult Function( String errorText)?  fieldError,TResult Function()?  noNetwork,TResult Function()?  invalidEmailAndPasswordCombination,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case Unauthorized() when unauthorized != null:
return unauthorized(_that.errorText);case FieldError() when fieldError != null:
return fieldError(_that.errorText);case NoNetwork() when noNetwork != null:
return noNetwork();case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  serverError,required TResult Function( String errorText)  unauthorized,required TResult Function( String errorText)  fieldError,required TResult Function()  noNetwork,required TResult Function()  invalidEmailAndPasswordCombination,}) {final _that = this;
switch (_that) {
case ServerError():
return serverError();case Unauthorized():
return unauthorized(_that.errorText);case FieldError():
return fieldError(_that.errorText);case NoNetwork():
return noNetwork();case InvalidEmailAndPasswordCombination():
return invalidEmailAndPasswordCombination();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  serverError,TResult? Function( String errorText)?  unauthorized,TResult? Function( String errorText)?  fieldError,TResult? Function()?  noNetwork,TResult? Function()?  invalidEmailAndPasswordCombination,}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case Unauthorized() when unauthorized != null:
return unauthorized(_that.errorText);case FieldError() when fieldError != null:
return fieldError(_that.errorText);case NoNetwork() when noNetwork != null:
return noNetwork();case InvalidEmailAndPasswordCombination() when invalidEmailAndPasswordCombination != null:
return invalidEmailAndPasswordCombination();case _:
  return null;

}
}

}

/// @nodoc


class ServerError implements AuthFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.serverError()';
}


}




/// @nodoc


class Unauthorized implements AuthFailure {
  const Unauthorized(this.errorText);
  

 final  String errorText;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnauthorizedCopyWith<Unauthorized> get copyWith => _$UnauthorizedCopyWithImpl<Unauthorized>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthorized&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'AuthFailure.unauthorized(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class $UnauthorizedCopyWith<$Res> implements $AuthFailureCopyWith<$Res> {
  factory $UnauthorizedCopyWith(Unauthorized value, $Res Function(Unauthorized) _then) = _$UnauthorizedCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(this._self, this._then);

  final Unauthorized _self;
  final $Res Function(Unauthorized) _then;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(Unauthorized(
null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FieldError implements AuthFailure {
  const FieldError(this.errorText);
  

 final  String errorText;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldErrorCopyWith<FieldError> get copyWith => _$FieldErrorCopyWithImpl<FieldError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldError&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,errorText);

@override
String toString() {
  return 'AuthFailure.fieldError(errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class $FieldErrorCopyWith<$Res> implements $AuthFailureCopyWith<$Res> {
  factory $FieldErrorCopyWith(FieldError value, $Res Function(FieldError) _then) = _$FieldErrorCopyWithImpl;
@useResult
$Res call({
 String errorText
});




}
/// @nodoc
class _$FieldErrorCopyWithImpl<$Res>
    implements $FieldErrorCopyWith<$Res> {
  _$FieldErrorCopyWithImpl(this._self, this._then);

  final FieldError _self;
  final $Res Function(FieldError) _then;

/// Create a copy of AuthFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorText = null,}) {
  return _then(FieldError(
null == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NoNetwork implements AuthFailure, NetworkFailure {
  const NoNetwork();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoNetwork);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.noNetwork()';
}


}




/// @nodoc


class InvalidEmailAndPasswordCombination implements AuthFailure {
  const InvalidEmailAndPasswordCombination();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvalidEmailAndPasswordCombination);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.invalidEmailAndPasswordCombination()';
}


}




// dart format on
