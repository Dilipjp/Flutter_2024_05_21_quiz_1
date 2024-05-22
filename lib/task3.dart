class UserProfile {
  late String email;
  late String username;
  late String profilePictureUrl;

  UserProfile(this.email, this.username, this.profilePictureUrl);
  UserProfile.withEmail(String email)
      : this(email, 'DefaultUsername', 'DefaultProfilePictureUrl');
  UserProfile.withEmailAndUsername(String email, String username)
      : this(email, username, 'DefaultProfilePictureUrl');
  UserProfile.withAll(String email, String username, String profilePictureUrl)
      : this(email, username, profilePictureUrl);

  @override
  String toString() {
    return 'UserProfile{email: $email, username: $username, profilePictureUrl: $profilePictureUrl}';
  }
}

void main() {
  var userProfile1 = UserProfile('user1@example.com', 'User1', 'profile1.jpg');
  var userProfile2 = UserProfile.withEmail('user2@example.com');
  var userProfile3 = UserProfile.withEmailAndUsername('user3@example.com', 'User3');
  var userProfile4 = UserProfile.withAll('user4@example.com', 'User4', 'profile4.jpg');
  print(userProfile1);
  print(userProfile2);
  print(userProfile3);
  print(userProfile4);
}
