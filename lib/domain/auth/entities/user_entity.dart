import 'package:equatable/equatable.dart';
import 'package:flutter_template/domain/core/models/model_factory.dart';

/// User entity representing a user in the domain
/// This is kept separate from DTOs for clean separation of concerns
class UserEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime? dob;

  const UserEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.dob,
  });

  /// Returns the full name of the user
  String get fullName => '$firstName $lastName';

  /// Returns the initials of the user (e.g., "John Doe" -> "JD")
  String get initials {
    final first = firstName.isNotEmpty ? firstName[0].toUpperCase() : '';
    final last = lastName.isNotEmpty ? lastName[0].toUpperCase() : '';
    return '$first$last';
  }

  /// Checks if the user has completed their profile
  bool get hasCompletedProfile {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        email.isNotEmpty &&
        dob != null;
  }

  /// Factory for generating fake users in tests
  static UserEntity fake() => UserEntityFactory().generateFake();

  /// Factory for generating list of fake users in tests
  static List<UserEntity> fakeList({required int length}) =>
      UserEntityFactory().generateFakeList(length: length);

  UserEntity copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    DateTime? dob,
  }) {
    return UserEntity(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      dob: dob ?? this.dob,
    );
  }

  @override
  String toString() {
    return 'UserEntity(id: $id, firstName: $firstName, lastName: $lastName, email: $email, dob: $dob)';
  }

  @override
  List<Object?> get props => [id, firstName, lastName, email, dob];
}

/// Factory for generating fake UserEntity instances
class UserEntityFactory extends ModelFactory<UserEntity> {
  @override
  UserEntity generateFake() {
    return UserEntity(
      id: faker.guid.guid(),
      firstName: faker.person.firstName(),
      lastName: faker.person.lastName(),
      email: faker.internet.email(),
      dob: faker.date.dateTime(),
    );
  }
}
