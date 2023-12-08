// ignore_for_file: camel_case_types, non_constant_identifier_names, collection_methods_unrelated_type

import 'dart:math';

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:chatbox_project/Models/User_Model/User_Model.dart';
import 'package:chatbox_project/Services/Repositories/FireStore_Repository/Chats_Repository/Chats_Service.dart';
import 'package:chatbox_project/Services/Repositories/FireStore_Repository/Users_Repository/Users_Service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Home_Controller extends GetxController {
  RxList<UserModel>? activeUsers = <UserModel>[].obs;
  final Rx<Stream<QuerySnapshot<Map<String, dynamic>>>> availableUsers =
      Users_Service.mainUsersCollection.snapshots(includeMetadataChanges: true).obs;
  final Rx<UserModel> onlineUsers = UserModel().obs;
  RxInt listLength = 0.obs;
  RxBool isOnline = false.obs;
  String? _ChatID = "";
  String? _UserChatName = "";
  final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _random = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));

  String get gettingChatID => _ChatID!;

  set settingChatID(String? value) => _ChatID = value!;

  String get gettingUserChatName => _UserChatName!;

  set settingUserChatName(String value) => _UserChatName = value;

  @override
  void onInit() async {
    ReterivingActiveUsers();
    CheckingActiveChat();
    super.onInit();
  }

  void CheckingActiveChat() async {
    final QuerySnapshot<Map<String, dynamic>> userChats = await Chats_Service.sentMessagesReference.get();

    String tempUser = getRandomString(30);
    if (userChats.docs.isEmpty) {
      Chats_Service.SentMessagesInitialization(
        receiverID: tempUser,
        chats: ChatsModel(
          messages: [],
          media: Media(
            audios: [],
            images: [],
            videos: [],
            documents: [],
          ),
        ),
      );
      //Creating Temp Received Message
      Chats_Service.ReceivedMessagesInitialization(
        senderID: tempUser,
        chats: ChatsModel(
            messages: [],
            media: Media(
              audios: [],
              images: [],
              videos: [],
              documents: [],
            )
        ),
      );
    }
    return;
  }

  void ReterivingActiveUsers() async {
    final QuerySnapshot<Map<String, dynamic>> onlineUsers = await Users_Service.mainUsersCollection.get();
    for (var element in onlineUsers.docs) {
      activeUsers!.value.add(UserModel.fromJson(element.data()));
    }
    listLength.value = activeUsers!.value.length;
    //Checking for User Existence in (Active Users) Collection
    for (var onlineUser in onlineUsers.docs) {
      if (onlineUser.id == Users_Service.userID) {
        isOnline.value = true;
        break;
      } else {
        continue;
      }
    }
    if (!isOnline.value) {
      Users_Service.UserInfoInitialization(
        userData: UserModel(
          id: Users_Service.userID,
          email: CacheHelper.getData(key: "Email"),
          avatarPhoto: "",
          phone: "+20 115 224 1066",
          displayName: "Temp User",
        ),
      );
    }
    return;
  }

  UserModel RetrievingChatMessages({required AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot, required int index}) {
    onlineUsers.value = UserModel.fromJson(snapshot.data!.docs[index].data());
    return onlineUsers.value;
  }

  void RemovingUser(int index) {
    activeUsers!.value.removeAt(index);
    print(activeUsers!.value.length);
  }

  void Navigation(String page) {
    Get.toNamed(
      page,
      parameters: <String, String>{
        "userChatID": gettingChatID,
        "userChatName": gettingUserChatName,
      },
    );
  }
}
