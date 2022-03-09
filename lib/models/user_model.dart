// import 'dart:convert';


// var jsonData = '{"name":"Mary","age":30}';

// Map<String, dynamic> map = jsonDecode(jsonData);
import 'dart:developer';




class UserModel{
  String? userName,
  userEmail,
  userID,
  userPhoneNumber,
  userImageUrl;


  UserModel({
    this.userName,
    this.userEmail,
    this.userID,
    this.userImageUrl,
    this.userPhoneNumber,
});


  factory UserModel.fromMap(Map<String, String> map){
    log('User Model');
    return
      UserModel(
      userEmail: map['userEmail'],
      userID: map['userID'],
      userImageUrl: map['userImage'],
      userName: map['userName'],
      userPhoneNumber: map['userContact']
    );
  }
}