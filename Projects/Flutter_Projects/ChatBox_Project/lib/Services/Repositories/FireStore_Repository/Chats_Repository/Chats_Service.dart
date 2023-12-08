// ignore_for_file: camel_case_types, use_build_context_synchronously, non_constant_identifier_names, avoid_single_cascade_in_expression_statements

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chats_Service {
  static final FirebaseFirestore cloudFireStore = FirebaseFirestore.instance;
  static const String chatsCollection = "Chats";
  static const String sentMessagesCollection = "SentMSGS";
  static const String receivedMessagesCollection = "ReceivedMSGS";
  static final userID = CacheHelper.getData(key: "ID");
  static final CollectionReference<Map<String, dynamic>> mainChatsReference = cloudFireStore.collection(chatsCollection);
  static final CollectionReference<Map<String, dynamic>> sentMessagesReference = mainChatsReference.doc(userID).collection(sentMessagesCollection);
  static final CollectionReference<Map<String, dynamic>> receivedMessagesReference =
      mainChatsReference.doc(userID).collection(receivedMessagesCollection);

  static void SentMessagesInitialization({required String? receiverID, required ChatsModel chats}) async {
    await sentMessagesReference.doc(receiverID).set(chats.toJson());
  }

  static void ReceivedMessagesInitialization({required String? senderID, required ChatsModel chats}) async {
    await receivedMessagesReference.doc(senderID).set(chats.toJson());
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> ChatsRetrieving({required String userId}) async {
    return await mainChatsReference.doc(userId).get();
  }

  static void UserChatMessageSending({
    required String userChatID,
    Messages? newMSG,
    Images? imageUrl,
    Videos? videoUrl,
    Audios? audioUrl,
    Documents? docUrl,
  }) async {
    final DocumentReference<Map<String, dynamic>> userRef = mainChatsReference.doc(userChatID).collection(receivedMessagesCollection).doc(userID);
    cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> userSnapshot = await transaction.get(userRef);
      final Media myMedia = Media.fromJson(userSnapshot.data()!['media']);

      if (userSnapshot.exists) {
        if (newMSG != null) {
          final List messagesList = userSnapshot.data()!['messages'];
          messagesList.add(newMSG.toJson());
          transaction.update(userRef, {'messages': messagesList});
        }
        if (imageUrl != null) {
          myMedia.images!.add(imageUrl);
          transaction.update(
            userRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (videoUrl != null) {
          myMedia.videos!.add(videoUrl);
          transaction.update(
            userRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (audioUrl != null) {
          myMedia.audios!.add(audioUrl);
          transaction.update(
            userRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (docUrl != null) {
          myMedia.documents!.add(docUrl);
          transaction.update(
            userRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
      } else {
        throw Exception("User Not Exists Yet");
      }
    });
  }

  static void UpdatingSentChatMessages({
    Messages? newMSG,
    required String? receiverID,
    Images? imageUrl,
    Videos? videoUrl,
    Audios? audioUrl,
    Documents? docUrl,
  }) async {
    final DocumentReference<Map<String, dynamic>> receiverRef = mainChatsReference.doc(userID).collection(sentMessagesCollection).doc(receiverID);
    await cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> receiverSnapshot = await transaction.get(receiverRef);
      final Media myMedia = Media.fromJson(receiverSnapshot.data()!['media']);
      if (receiverSnapshot.exists) {
        if (newMSG != null) {
          final List messagesList = receiverSnapshot.data()!['messages'];
          messagesList.add(newMSG.toJson());
          transaction.update(receiverRef, {'messages': messagesList});
        }
        if (imageUrl != null) {
          myMedia.images!.add(imageUrl);
          transaction.update(
            receiverRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (videoUrl != null) {
          myMedia.videos!.add(videoUrl);
          transaction.update(
            receiverRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (audioUrl != null) {
          myMedia.audios!.add(audioUrl);
          transaction.update(
            receiverRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (docUrl != null) {
          myMedia.documents!.add(docUrl);
          transaction.update(
            receiverRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
      } else {
        throw Exception("Receiver Not Exists Yet");
      }
    });
  }

  static void UpdatingReceivedChatMessages({
    Messages? newMSG,
    required String? senderID,
    Images? imageUrl,
    Videos? videoUrl,
    Audios? audioUrl,
    Documents? docUrl,
  }) async {
    final DocumentReference<Map<String, dynamic>> senderRef = mainChatsReference.doc(userID).collection(sentMessagesCollection).doc(senderID);
    await cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> senderSnapshot = await transaction.get(senderRef);
      final Media myMedia = Media.fromJson(senderSnapshot.data()!['media']);
      if (senderSnapshot.exists) {
        if (newMSG != null) {
          final List messagesList = senderSnapshot.data()!['messages'];
          messagesList.add(newMSG.toJson());
          transaction.update(senderRef, {'messages': messagesList});
        }
        if (imageUrl != null) {
          myMedia.images!.add(imageUrl);
          transaction.update(
            senderRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (videoUrl != null) {
          myMedia.videos!.add(videoUrl);
          transaction.update(
            senderRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (audioUrl != null) {
          myMedia.audios!.add(audioUrl);
          transaction.update(
            senderRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
        if (docUrl != null) {
          myMedia.documents!.add(docUrl);
          transaction.update(
            senderRef,
            {
              'media': myMedia.toJson(),
            },
          );
        }
      } else {
        throw Exception("Sender Not Exists Yet");
      }
    });
  }

  static void DeletingChat({required String? contactID}) async {
    await mainChatsReference.doc(userID).collection(receivedMessagesCollection).doc(contactID).delete();
    await mainChatsReference.doc(userID).collection(sentMessagesCollection).doc(contactID).delete();
  }

  static void DeletingSentChatMSG({required String? msgText, required String? receiverID}) async {
    final DocumentSnapshot<Map<String, dynamic>> sentMsgSnapShot =
        await mainChatsReference.doc(userID).collection(sentMessagesCollection).doc(receiverID).get();
    final List<Map<String, dynamic>> messagesList = sentMsgSnapShot.data()!['messages'];
    messagesList.removeWhere((element) => element['text'] == msgText!);
    sentMsgSnapShot.reference.update({'messages': messagesList});
  }

  static void DeletingReceivedChatMSG({required String? msgText, required String? senderID}) async {
    final DocumentSnapshot<Map<String, dynamic>> receivedMsgSnapShot =
        await mainChatsReference.doc(userID).collection(receivedMessagesCollection).doc(senderID).get();
    final List<Map<String, dynamic>> messagesList = receivedMsgSnapShot.data()!['messages'];
    messagesList.removeWhere((element) => element['text'] == msgText!);
    receivedMsgSnapShot.reference.update({'messages': messagesList});
  }
}
