// ignore_for_file: camel_case_types, use_build_context_synchronously, non_constant_identifier_names

import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Chats_Service {
  static final FirebaseFirestore cloudFireStore = FirebaseFirestore.instance;
  static const String chatsCollection = "Chats";
  static const String sentMessagesCollection = "SentMSGS";
  static const String receivedMessagesCollection = "ReceivedMSGS";
  static final userID = CacheHelper.getData(key: "ID");
  static final CollectionReference<Map<String, dynamic>> sentMessagesReference =
      cloudFireStore.collection(chatsCollection).doc(userID).collection(sentMessagesCollection);
  static final CollectionReference<Map<String, dynamic>> receivedMessagesReference =
      cloudFireStore.collection(chatsCollection).doc(userID).collection(receivedMessagesCollection);
  static final DocumentReference<Map<String, dynamic>> _myChatsReference = cloudFireStore.collection(chatsCollection).doc(userID);

  static void ChatsInfoInitialization() async {
    sentMessagesReference;
    receivedMessagesReference;
  }

  static void SentMessagesInfoInitialization({required String? receiverID, required ChatsModel chats}) async {
    await sentMessagesReference.doc(receiverID).set(chats.toJson());
  }

  static void ReceivedMessagesInfoInitialization({required String? senderID, required ChatsModel chats}) async {
    await receivedMessagesReference.doc(senderID).set(chats.toJson());
  }

  static Future<DocumentSnapshot<Map<String, dynamic>>> ChatsRetrieving({required String userId}) async {
    return await _myChatsReference.get();
  }

  static void UpdatingSentChatMessages({required Messages newMSG, required String? receiverID}) async {
    final DocumentReference<Map<String, dynamic>> receiverRef = _myChatsReference.collection(sentMessagesCollection).doc(receiverID);
    await cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> receiverSnapshot = await transaction.get(receiverRef);
      if (receiverSnapshot.exists) {
        final List<Map<String, dynamic>> messagesList = receiverSnapshot.data()!['messages'];
        messagesList.add(newMSG.toJson());
        transaction.update(receiverRef, {'messages': messagesList});
      } else {
        throw Exception("Receiver Not Exists Yet");
      }
    });
  }

  static void UpdatingReceivedChatMessages({required Messages newMSG, required String? senderID}) async {
    final DocumentReference<Map<String, dynamic>> senderRef = _myChatsReference.collection(sentMessagesCollection).doc(senderID);
    await cloudFireStore.runTransaction((transaction) async {
      final DocumentSnapshot<Map<String, dynamic>> senderSnapshot = await transaction.get(senderRef);
      if (senderSnapshot.exists) {
        final List<Map<String, dynamic>> messagesList = senderSnapshot.data()!['messages'];
        messagesList.add(newMSG.toJson());
        transaction.update(senderRef, {'messages': messagesList});
      } else {
        throw Exception("Sender Not Exists Yet");
      }
    });
  }

  static void DeletingChat({required String? contactID}) async {
    await receivedMessagesReference.doc(contactID).delete();
    await sentMessagesReference.doc(contactID).delete();
  }

  static void DeletingSentChatMSG({required String? msgText, required String? receiverID}) async {
    final DocumentSnapshot<Map<String, dynamic>> sentMsgSnapShot = await sentMessagesReference.doc(receiverID).get();
    final List<Map<String, dynamic>> messagesList = sentMsgSnapShot.data()!['messages'];
    messagesList.removeWhere((element) => element['text'] == msgText!);
    sentMsgSnapShot.reference.update({'messages': messagesList});
  }

  static void DeletingReceivedChatMSG({required String? msgText, required String? senderID}) async {
    final DocumentSnapshot<Map<String, dynamic>> receivedMsgSnapShot = await receivedMessagesReference.doc(senderID).get();
    final List<Map<String, dynamic>> messagesList = receivedMsgSnapShot.data()!['messages'];
    messagesList.removeWhere((element) => element['text'] == msgText!);
    receivedMsgSnapShot.reference.update({'messages': messagesList});
  }
}
