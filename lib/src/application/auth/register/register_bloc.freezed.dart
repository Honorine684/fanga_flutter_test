// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent()';
}


}

/// @nodoc
class $RegisterEventCopyWith<$Res>  {
$RegisterEventCopyWith(RegisterEvent _, $Res Function(RegisterEvent) __);
}


/// Adds pattern-matching-related methods to [RegisterEvent].
extension RegisterEventPatterns on RegisterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( Click value)?  click,TResult Function( FieldChanged value)?  fieldChanged,TResult Function( Submit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case Click() when click != null:
return click(_that);case FieldChanged() when fieldChanged != null:
return fieldChanged(_that);case Submit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( Click value)  click,required TResult Function( FieldChanged value)  fieldChanged,required TResult Function( Submit value)  submit,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case Click():
return click(_that);case FieldChanged():
return fieldChanged(_that);case Submit():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( Click value)?  click,TResult? Function( FieldChanged value)?  fieldChanged,TResult? Function( Submit value)?  submit,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case Click() when click != null:
return click(_that);case FieldChanged() when fieldChanged != null:
return fieldChanged(_that);case Submit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String buttonType)?  click,TResult Function( String fieldKey,  String? value)?  fieldChanged,TResult Function( bool conditionCheck)?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case Click() when click != null:
return click(_that.buttonType);case FieldChanged() when fieldChanged != null:
return fieldChanged(_that.fieldKey,_that.value);case Submit() when submit != null:
return submit(_that.conditionCheck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String buttonType)  click,required TResult Function( String fieldKey,  String? value)  fieldChanged,required TResult Function( bool conditionCheck)  submit,}) {final _that = this;
switch (_that) {
case _Started():
return started();case Click():
return click(_that.buttonType);case FieldChanged():
return fieldChanged(_that.fieldKey,_that.value);case Submit():
return submit(_that.conditionCheck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String buttonType)?  click,TResult? Function( String fieldKey,  String? value)?  fieldChanged,TResult? Function( bool conditionCheck)?  submit,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case Click() when click != null:
return click(_that.buttonType);case FieldChanged() when fieldChanged != null:
return fieldChanged(_that.fieldKey,_that.value);case Submit() when submit != null:
return submit(_that.conditionCheck);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements RegisterEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RegisterEvent.started()';
}


}




/// @nodoc


class Click implements RegisterEvent {
  const Click(this.buttonType);
  

 final  String buttonType;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClickCopyWith<Click> get copyWith => _$ClickCopyWithImpl<Click>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Click&&(identical(other.buttonType, buttonType) || other.buttonType == buttonType));
}


@override
int get hashCode => Object.hash(runtimeType,buttonType);

@override
String toString() {
  return 'RegisterEvent.click(buttonType: $buttonType)';
}


}

/// @nodoc
abstract mixin class $ClickCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $ClickCopyWith(Click value, $Res Function(Click) _then) = _$ClickCopyWithImpl;
@useResult
$Res call({
 String buttonType
});




}
/// @nodoc
class _$ClickCopyWithImpl<$Res>
    implements $ClickCopyWith<$Res> {
  _$ClickCopyWithImpl(this._self, this._then);

  final Click _self;
  final $Res Function(Click) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? buttonType = null,}) {
  return _then(Click(
null == buttonType ? _self.buttonType : buttonType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FieldChanged implements RegisterEvent {
  const FieldChanged(this.fieldKey, this.value);
  

 final  String fieldKey;
 final  String? value;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldChangedCopyWith<FieldChanged> get copyWith => _$FieldChangedCopyWithImpl<FieldChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldChanged&&(identical(other.fieldKey, fieldKey) || other.fieldKey == fieldKey)&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,fieldKey,value);

@override
String toString() {
  return 'RegisterEvent.fieldChanged(fieldKey: $fieldKey, value: $value)';
}


}

/// @nodoc
abstract mixin class $FieldChangedCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $FieldChangedCopyWith(FieldChanged value, $Res Function(FieldChanged) _then) = _$FieldChangedCopyWithImpl;
@useResult
$Res call({
 String fieldKey, String? value
});




}
/// @nodoc
class _$FieldChangedCopyWithImpl<$Res>
    implements $FieldChangedCopyWith<$Res> {
  _$FieldChangedCopyWithImpl(this._self, this._then);

  final FieldChanged _self;
  final $Res Function(FieldChanged) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fieldKey = null,Object? value = freezed,}) {
  return _then(FieldChanged(
null == fieldKey ? _self.fieldKey : fieldKey // ignore: cast_nullable_to_non_nullable
as String,freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class Submit implements RegisterEvent {
  const Submit(this.conditionCheck);
  

 final  bool conditionCheck;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitCopyWith<Submit> get copyWith => _$SubmitCopyWithImpl<Submit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Submit&&(identical(other.conditionCheck, conditionCheck) || other.conditionCheck == conditionCheck));
}


@override
int get hashCode => Object.hash(runtimeType,conditionCheck);

@override
String toString() {
  return 'RegisterEvent.submit(conditionCheck: $conditionCheck)';
}


}

/// @nodoc
abstract mixin class $SubmitCopyWith<$Res> implements $RegisterEventCopyWith<$Res> {
  factory $SubmitCopyWith(Submit value, $Res Function(Submit) _then) = _$SubmitCopyWithImpl;
@useResult
$Res call({
 bool conditionCheck
});




}
/// @nodoc
class _$SubmitCopyWithImpl<$Res>
    implements $SubmitCopyWith<$Res> {
  _$SubmitCopyWithImpl(this._self, this._then);

  final Submit _self;
  final $Res Function(Submit) _then;

/// Create a copy of RegisterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? conditionCheck = null,}) {
  return _then(Submit(
null == conditionCheck ? _self.conditionCheck : conditionCheck // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$RegisterState {

 UserCreate? get userCreate; String get fieldKey; bool get showErrorMessages; bool get isSubmitting; bool get isSubmitable; String? get errorMessage; String get clickType; Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.userCreate, userCreate) || other.userCreate == userCreate)&&(identical(other.fieldKey, fieldKey) || other.fieldKey == fieldKey)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSubmitable, isSubmitable) || other.isSubmitable == isSubmitable)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.clickType, clickType) || other.clickType == clickType)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,userCreate,fieldKey,showErrorMessages,isSubmitting,isSubmitable,errorMessage,clickType,authFailureOrSuccessOption);

@override
String toString() {
  return 'RegisterState(userCreate: $userCreate, fieldKey: $fieldKey, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isSubmitable: $isSubmitable, errorMessage: $errorMessage, clickType: $clickType, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 UserCreate? userCreate, String fieldKey, bool showErrorMessages, bool isSubmitting, bool isSubmitable, String? errorMessage, String clickType, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userCreate = freezed,Object? fieldKey = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? isSubmitable = null,Object? errorMessage = freezed,Object? clickType = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
userCreate: freezed == userCreate ? _self.userCreate : userCreate // ignore: cast_nullable_to_non_nullable
as UserCreate?,fieldKey: null == fieldKey ? _self.fieldKey : fieldKey // ignore: cast_nullable_to_non_nullable
as String,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSubmitable: null == isSubmitable ? _self.isSubmitable : isSubmitable // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,clickType: null == clickType ? _self.clickType : clickType // ignore: cast_nullable_to_non_nullable
as String,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserCreate? userCreate,  String fieldKey,  bool showErrorMessages,  bool isSubmitting,  bool isSubmitable,  String? errorMessage,  String clickType,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.userCreate,_that.fieldKey,_that.showErrorMessages,_that.isSubmitting,_that.isSubmitable,_that.errorMessage,_that.clickType,_that.authFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserCreate? userCreate,  String fieldKey,  bool showErrorMessages,  bool isSubmitting,  bool isSubmitable,  String? errorMessage,  String clickType,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.userCreate,_that.fieldKey,_that.showErrorMessages,_that.isSubmitting,_that.isSubmitable,_that.errorMessage,_that.clickType,_that.authFailureOrSuccessOption);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserCreate? userCreate,  String fieldKey,  bool showErrorMessages,  bool isSubmitting,  bool isSubmitable,  String? errorMessage,  String clickType,  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.userCreate,_that.fieldKey,_that.showErrorMessages,_that.isSubmitting,_that.isSubmitable,_that.errorMessage,_that.clickType,_that.authFailureOrSuccessOption);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({required this.userCreate, required this.fieldKey, required this.showErrorMessages, required this.isSubmitting, required this.isSubmitable, required this.errorMessage, required this.clickType, required this.authFailureOrSuccessOption});
  

@override final  UserCreate? userCreate;
@override final  String fieldKey;
@override final  bool showErrorMessages;
@override final  bool isSubmitting;
@override final  bool isSubmitable;
@override final  String? errorMessage;
@override final  String clickType;
@override final  Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.userCreate, userCreate) || other.userCreate == userCreate)&&(identical(other.fieldKey, fieldKey) || other.fieldKey == fieldKey)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSubmitable, isSubmitable) || other.isSubmitable == isSubmitable)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.clickType, clickType) || other.clickType == clickType)&&(identical(other.authFailureOrSuccessOption, authFailureOrSuccessOption) || other.authFailureOrSuccessOption == authFailureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,userCreate,fieldKey,showErrorMessages,isSubmitting,isSubmitable,errorMessage,clickType,authFailureOrSuccessOption);

@override
String toString() {
  return 'RegisterState(userCreate: $userCreate, fieldKey: $fieldKey, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, isSubmitable: $isSubmitable, errorMessage: $errorMessage, clickType: $clickType, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 UserCreate? userCreate, String fieldKey, bool showErrorMessages, bool isSubmitting, bool isSubmitable, String? errorMessage, String clickType, Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
});




}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userCreate = freezed,Object? fieldKey = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? isSubmitable = null,Object? errorMessage = freezed,Object? clickType = null,Object? authFailureOrSuccessOption = null,}) {
  return _then(_RegisterState(
userCreate: freezed == userCreate ? _self.userCreate : userCreate // ignore: cast_nullable_to_non_nullable
as UserCreate?,fieldKey: null == fieldKey ? _self.fieldKey : fieldKey // ignore: cast_nullable_to_non_nullable
as String,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSubmitable: null == isSubmitable ? _self.isSubmitable : isSubmitable // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,clickType: null == clickType ? _self.clickType : clickType // ignore: cast_nullable_to_non_nullable
as String,authFailureOrSuccessOption: null == authFailureOrSuccessOption ? _self.authFailureOrSuccessOption : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<AuthFailure, Unit>>,
  ));
}


}

// dart format on
