import 'package:flutter_template/domain/auth/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

/// Data Transfer Object for User
/// Handles serialization/deserialization between domain and data layers
@freezed
abstract class UserDto with _$UserDto {
  const UserDto._();

  const factory UserDto({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    int? dobTimestamp,
  }) = _UserDto;

  /// Creates DTO from JSON (from API/Firebase)
  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  /// Creates DTO from domain entity
  factory UserDto.fromDomain(UserEntity userEntity) {
    return UserDto(
      id: userEntity.id,
      firstName: userEntity.firstName,
      lastName: userEntity.lastName,
      email: userEntity.email,
      dobTimestamp: userEntity.dob?.millisecondsSinceEpoch,
    );
  }

  /// Converts DTO to domain entity
  UserEntity toDomain() {
    return UserEntity(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      dob: dobTimestamp != null
          ? DateTime.fromMillisecondsSinceEpoch(dobTimestamp!)
          : null,
    );
  }

  /// Creates DTO from Firestore document
  factory UserDto.fromFirestore(Map<String, dynamic> doc, String id) {
    return UserDto(
      id: id,
      firstName: doc['firstName'] as String? ?? '',
      lastName: doc['lastName'] as String? ?? '',
      email: doc['email'] as String? ?? '',
      dobTimestamp: doc['dobTimestamp'] as int?,
    );
  }

  /// Converts DTO to Firestore document format
  Map<String, dynamic> toFirestore() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      if (dobTimestamp != null) 'dobTimestamp': dobTimestamp,
    };
  }
}
