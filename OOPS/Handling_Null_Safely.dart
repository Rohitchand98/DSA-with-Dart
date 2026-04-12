class UserProfile {
  int id;
  String createdDate;
  String name;
  String email;
  int age;
  String displayName;

  // Constructor with defaults
  UserProfile(this.id, this.createdDate,
      {this.name = 'Not provided',
       this.email = 'Not provided',
       this.age = 0,
       this.displayName = 'Guest'});

  // Return profile details as a multi-line string
  String getProfileSummary() {
    return '''
User Profile:
ID: $id
Created: $createdDate
Name: $name
Email: $email
Age: ${age == 0 ? 'Not provided' : age}
Display Name: $displayName
-------------------
''';
  }

  // Update email
  void updateEmail(String newEmail) {
    email = newEmail;
  }

  // Update display name
  void getDisplayName() {
    displayName = name;
  }
}

void main() {
  final profile = UserProfile(1, 'today');

  // Print initial profile
  print(profile.getProfileSummary());

  // Update profile
  profile.name = 'John Doe';
  profile.updateEmail('john@example.com');
  profile.age = 30;
  profile.getDisplayName();

  // Print updated profile
  print(profile.getProfileSummary());
}
