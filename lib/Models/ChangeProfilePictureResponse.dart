/// message : "profile picture has been updated successfully"
/// profile picture path : "user_images/1.jpg.jpg"

class ChangeProfilePictureResponse {
  ChangeProfilePictureResponse({
      this.message, 
      this.profilepicturepath,
      this.error
  });

  ChangeProfilePictureResponse.fromJson(dynamic json) {
    message = json['message'];
    error = json['error'];
    profilepicturepath = json['profile picture path'];
  }
  String? message;
  String? profilepicturepath;
  String? error;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['profile picture path'] = profilepicturepath;
    map['error'] = error;

    return map;
  }

}