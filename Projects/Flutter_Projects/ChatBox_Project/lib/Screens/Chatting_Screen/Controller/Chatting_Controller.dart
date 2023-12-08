// ignore_for_file: camel_case_types, non_constant_identifier_names, use_build_context_synchronously

import 'dart:io';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:chatbox_project/Helpers/Local_Cache_Helper/cache_helper.dart';
import 'package:chatbox_project/Helpers/SnackBar_Helper/SnackBar_helper.dart';
import 'package:chatbox_project/Models/Chats_Model/Chats_Model.dart';
import 'package:chatbox_project/Services/Repositories/FireStore_Repository/Chats_Repository/Chats_Service.dart';
import 'package:chatbox_project/Services/Repositories/Storage_Repository/Storage_Services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:record_mp3/record_mp3.dart';
import 'package:path/path.dart' as ph;
import 'package:file_picker/file_picker.dart';

class Chatting_Controller extends GetxController {
  //Local Variables
  final Rx<ChatsModel> chatsMessages = ChatsModel().obs;
  final Rx<TextEditingController> messageTextEditingController = TextEditingController().obs;
  final RecordMp3 recorder = RecordMp3.instance;
  RxString audioFilePath = "".obs;
  BuildContext context;
  final _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _random = Random();
  ImagePicker picker = ImagePicker();
  RxString selectedMedia = "".obs;
  RxString selectedFilePath = "".obs;
  int i = 0;
  FilePicker filePicker = FilePicker.platform;
  final player = AudioPlayer();

  //Chatting Streams Snapshot
  final Rx<Stream<DocumentSnapshot<Map<String, dynamic>>>> myChats =
      Chats_Service.sentMessagesReference.doc(Get.parameters['userChatID']).snapshots(includeMetadataChanges: true).obs;
  final Rx<Stream<DocumentSnapshot<Map<String, dynamic>>>> userChat = Chats_Service.mainChatsReference
      .doc(Get.parameters['userChatID']!)
      .collection(Chats_Service.sentMessagesCollection)
      .doc(Chats_Service.userID)
      .snapshots(includeMetadataChanges: true)
      .obs;

  //Local Testing Bool Variables
  RxBool isEditing = false.obs;
  final RxBool isSentChatInit = false.obs;
  final RxBool isReceivedChatInit = false.obs;
  final RxBool isUserSentChatInit = false.obs;
  final RxBool isUserReceivedChatInit = false.obs;
  final RxBool isRecording = false.obs;
  final RxBool isAudio = false.obs;
  final RxBool isImage = false.obs;
  final RxBool isVideo = false.obs;
  final RxBool isFile = false.obs;
  final RxBool isPlay = false.obs;

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(length, (_) => _chars.codeUnitAt(_random.nextInt(_chars.length))));

  //Constructor
  Chatting_Controller({required this.context});

  @override
  void onInit() async {
    print("User Chat ID: ${Get.parameters['userChatID']}");
    if (!CacheHelper.returningPreferences().containsKey("type")) {
      await CacheHelper.saveData(key: "type", value: "text");
    }
    AppMediaDirInitialization();
    InitializingChat();
    super.onInit();
  }

  void InitializingChat() async {
    final QuerySnapshot<Map<String, dynamic>> receivedChats = await Chats_Service.receivedMessagesReference.get();
    for (var chat in receivedChats.docs) {
      if (chat.id == Get.parameters['userChatID']) {
        isReceivedChatInit.value = true;
        print("User Chat ID: ${Get.parameters['userChatID']} is Initialized: ${isReceivedChatInit.value}");
        break;
      } else {
        continue;
      }
    }
    final QuerySnapshot<Map<String, dynamic>> sentChats = await Chats_Service.sentMessagesReference.get();
    for (var chat in sentChats.docs) {
      if (chat.id == Get.parameters['userChatID']) {
        isSentChatInit.value = true;
        print("User Chat ID: ${Get.parameters['userChatID']} is Initialized: ${isSentChatInit.value}");
        break;
      } else {
        continue;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    final DocumentSnapshot<Map<String, dynamic>> userChats = await Chats_Service.ChatsRetrieving(userId: Get.parameters['userChatID']!);
    final QuerySnapshot<Map<String, dynamic>> userSentColl = await userChats.reference.collection(Chats_Service.sentMessagesCollection).get();
    for (var chat in userSentColl.docs) {
      if (chat.id == Chats_Service.userID) {
        isUserSentChatInit.value = true;
        print("User Chat ID: ${Get.parameters['userChatID']} Sent Collection is Initialized: ${isUserSentChatInit.value}");
        break;
      } else {
        continue;
      }
    }

    final QuerySnapshot<Map<String, dynamic>> userReceivedColl = await userChats.reference.collection(Chats_Service.receivedMessagesCollection).get();
    for (var chat in userReceivedColl.docs) {
      if (chat.id == Chats_Service.userID) {
        isUserReceivedChatInit.value = true;
        print("User Chat ID: ${Get.parameters['userChatID']} Received Collection is Initialized: ${isUserReceivedChatInit.value}");
        break;
      } else {
        continue;
      }
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (!isReceivedChatInit.value) {
      //Creating Temp Received Message
      Chats_Service.ReceivedMessagesInitialization(
        senderID: Get.parameters['userChatID'],
        chats: ChatsModel(
          media: Media(
            videos: [],
            images: [],
            audios: [],
            documents: [],
          ),
          messages: [
            Messages(
              text: "Hello",
              sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
            ),
          ],
        ),
      );
    }
    if (!isSentChatInit.value) {
      Chats_Service.SentMessagesInitialization(
        receiverID: Get.parameters['userChatID'],
        chats: ChatsModel(
          media: Media(
            videos: [],
            images: [],
            audios: [],
            documents: [],
          ),
          messages: [
            Messages(
              text: "Hello",
              sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
            ),
          ],
        ),
      );
      //Creating Temp Received Message
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if (!isUserReceivedChatInit.value) {
      //Creating Temp Received Message
      userChats.reference.collection(Chats_Service.receivedMessagesCollection).doc(Chats_Service.userID).set(
            ChatsModel(
              media: Media(
                videos: [],
                images: [],
                audios: [],
                documents: [],
              ),
              messages: [
                Messages(
                  text: "Hello",
                  sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
                ),
              ],
            ).toJson(),
          );
    }
    if (!isUserSentChatInit.value) {
      userChats.reference.collection(Chats_Service.sentMessagesCollection).doc(Chats_Service.userID).set(
            ChatsModel(
              media: Media(
                videos: [],
                images: [],
                audios: [],
                documents: [],
              ),
              messages: [
                Messages(
                  text: "Hello",
                  sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
                ),
              ],
            ).toJson(),
          );
      //Creating Temp Received Message
    }
    return;
  }

  void SendingChatMessage({required String? message, required BuildContext context}) async {
    await CacheHelper.saveData(key: "type", value: "text");
    if (message!.isNotEmpty) {
      isAudio.value = false;
      try {
        Chats_Service.UpdatingSentChatMessages(
          receiverID: Get.parameters['userChatID'],
          newMSG: Messages(
            text: message,
            sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
        Chats_Service.UserChatMessageSending(
          userChatID: Get.parameters['userChatID']!,
          newMSG: Messages(
            text: message,
            sentAt: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
      } on Exception catch (e) {
        print(e.toString());
      }
      messageTextEditingController.value.clear();
    } else {
      SnackBar_Helper.showErrorToast(context, "Cannot Send Empty Messages");
    }
  }

  void RetrievingChat({required AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot}) async {
    // int audioLength = chatsMessages.value.media!.audios!.isNotEmpty ? chatsMessages.value.media!.audios!.length : 0;
    if (snapshot.hasData) {
      chatsMessages.value = ChatsModel.fromJson(snapshot.data!.data());
      // if (chatsMessages.value.media!.audios!.length > audioLength) {
      //   await CacheHelper.saveData(key: "type", value: "voice");
      // } else {
      //   await CacheHelper.saveData(key: "type", value: "text");
      // }
    }
  }

  void RecordingAudio() async {
    final audioFileName = "${getRandomString(5)}.mp3";
    final String filePath = ph.join(await AppMediaDirInitialization(isAudio: true), audioFileName);
    PermissionStatus micPermissionStatus = await Permission.microphone.status;
    audioFilePath.value = filePath;
    if (micPermissionStatus.isGranted) {
      ByteData bytes = await rootBundle.load("Assets/Audio/notification.mp3");
      Uint8List audioBytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
      await player.play(BytesSource(audioBytes));
      player.onPlayerComplete.listen((event) {
        isRecording.value = true;
        print("Starting Audio Recording : ${isRecording.value}");
        recorder.start(
          audioFilePath.value,
          (p0) {
            print("There is an error occurred while recording audio with Error : ${p0.name}");
            isRecording.value = false;
          },
        );
      });
    } else {
      micPermissionStatus = await Permission.microphone.request();
    }
  }

  void StoppingAudioRecording() async {
    if (isRecording.value) {
      recorder.stop();
      isAudio.value = true;
      isRecording.value = false;
      Uploading_and_SendingVoiceMessages();
      print("Stopping Audio Recording");
    }
    await CacheHelper.saveData(key: "type", value: "voice");
  }

  void PlayingVoiceRecord(String? audioUrl) async {
    final String audioCacheDirPath = await AppMediaDirInitialization(isCacheAudio: true);
    final String audioCacheFileName = "${getRandomString(5)}.mp3";
    final String audioCacheFilePath = ph.join(audioCacheDirPath, audioCacheFileName);
    final File audioCacheFile = File(audioCacheFilePath);
    await FlutterDownloader.enqueue(
      url: audioUrl!,
      savedDir: audioCacheDirPath,
      fileName: audioCacheFileName,
      openFileFromNotification: false,
      showNotification: false,
    );
    print("Download Path is : $audioCacheFilePath");
    if (await audioCacheFile.exists()) {
      isPlay.value = true;
      await player.play(DeviceFileSource(audioCacheFile.path), mode: PlayerMode.mediaPlayer);
      player.onPlayerComplete.listen((event) {
        print("Starting Record Playing Recording : ${isRecording.value}");
      });
      isPlay.value = false;
    }
  }

  void ChoosingLocalMedia() async {
    final XFile? pickedMedia = await picker.pickMedia();
    selectedMedia.value = pickedMedia!.path;
    if (selectedMedia.value.isNotEmpty) {
      if (pickedMedia.name.isImageFileName) {
        isImage.value = true;
        print("Image Path is : ${selectedMedia.value}");
        final String? imageUrl = await Uploading_To_Storage(imagePath: selectedMedia.value, isImage: isImage.value);
        SendingMedia(haveImage: isImage.value, imageUrl: imageUrl);
        isImage.value = false;
        return;
      }
      if (pickedMedia.name.isVideoFileName) {
        isVideo.value = true;
        print("Video Path is : ${selectedMedia.value}");
        final String? videoUrl = await Uploading_To_Storage(videoPath: selectedMedia.value, isVideo: isVideo.value);
        SendingMedia(haveVideo: isVideo.value, videoUrl: videoUrl);
        isVideo.value = false;
        return;
      }
      if (pickedMedia.name.isTxtFileName || pickedMedia.name.isPDFFileName || pickedMedia.name.isHTMLFileName) {
        isFile.value = true;
        print("File Path is : ${selectedMedia.value}");
        final String? fileUrl = await Uploading_To_Storage(filePath: selectedMedia.value, isFile: isVideo.value);
        SendingMedia(haveFile: isFile.value, fileUrl: fileUrl);
        isFile.value = false;
        return;
      }
    }
  }

  void SendingMedia({
    String? imageUrl,
    String? videoUrl,
    String? fileUrl,
    bool? haveImage = false,
    bool? haveVideo = false,
    bool? haveFile = false,
  }) async {
    isImage.value = haveImage!;
    isVideo.value = haveVideo!;
    isFile.value = haveFile!;
    if (haveImage && imageUrl != null) {
      try {
        Chats_Service.UpdatingSentChatMessages(
          receiverID: Get.parameters['userChatID'],
          imageUrl: Images(
            url: imageUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
        Chats_Service.UserChatMessageSending(
          userChatID: Get.parameters['userChatID']!,
          imageUrl: Images(
            url: imageUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
      } on Exception catch (e) {
        print(e.toString());
      }
    }

    if (haveVideo && videoUrl != null) {
      try {
        Chats_Service.UpdatingSentChatMessages(
          receiverID: Get.parameters['userChatID'],
          videoUrl: Videos(
            url: videoUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
        Chats_Service.UserChatMessageSending(
          userChatID: Get.parameters['userChatID']!,
          videoUrl: Videos(
            url: videoUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
      } on Exception catch (e) {
        print(e.toString());
      }
    }

    if (haveFile && fileUrl != null) {
      try {
        Chats_Service.UpdatingSentChatMessages(
          receiverID: Get.parameters['userChatID'],
          docUrl: Documents(
            url: fileUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
        Chats_Service.UserChatMessageSending(
          userChatID: Get.parameters['userChatID']!,
          docUrl: Documents(
            url: fileUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
      } on Exception catch (e) {
        print(e.toString());
      }
    }
  }

  void ChoosingLocalFile() async {
    final FilePickerResult? fileResult = await filePicker.pickFiles(withReadStream: true);
    selectedFilePath.value = fileResult!.paths[0]!;
    if (selectedFilePath.value.isNotEmpty) {
      isFile.value = true;
      print("File Path is Here: ${selectedFilePath.value}");
      final String? documentUrl = await Uploading_To_Storage(filePath: selectedFilePath.value, isFile: isFile.value)!;
      SendingMedia(haveFile: isFile.value, fileUrl: documentUrl);
      isFile.value = false;
    }
  }

  Future<String?>? Uploading_To_Storage({
    String? imagePath,
    String? videoPath,
    String? filePath,
    bool? isImage = false,
    bool? isFile = false,
    bool? isVideo = false,
  }) async {
    String? mediaUrl;
    if (isImage! && imagePath != null) {
      mediaUrl = await Storage_Services.UploadingImagesFile(imageFilePath: imagePath, context: context)!;
    }
    if (isVideo! && videoPath != null) {
      mediaUrl = await Storage_Services.UploadingVideoFile(videoFilePath: videoPath, context: context)!;
    }
    if (isFile! && filePath != null) {
      mediaUrl = await Storage_Services.UploadingDocumentFile(docFilePath: filePath, context: context)!;
    }
    return mediaUrl!;
  }

  void Uploading_and_SendingVoiceMessages() async {
    if (isAudio.value) {
      final String? audioMsgUrl = await Storage_Services.UploadingAudioFile(audioFilePath: audioFilePath.value, context: context)!;
      try {
        Chats_Service.UpdatingSentChatMessages(
          receiverID: Get.parameters['userChatID'],
          audioUrl: Audios(
            url: audioMsgUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
        Chats_Service.UserChatMessageSending(
          userChatID: Get.parameters['userChatID']!,
          audioUrl: Audios(
            url: audioMsgUrl,
            timeStampe: DateFormat('E, d MMMM, yyyy - HH:mm a').format(DateTime.now()).toString(),
          ),
        );
      } on Exception catch (e) {
        print(e.toString());
      }
    }
  }

  Future<String> AppMediaDirInitialization({
    bool isPhoto = false,
    bool isVideo = false,
    bool isAudio = false,
    bool isDocs = false,
    bool isCachePhoto = false,
    bool isCacheVideo = false,
    bool isCacheAudio = false,
    bool isCacheDocs = false,
  }) async {
    Directory mainDir = await getApplicationDocumentsDirectory();
    Directory cacheDir = await getApplicationCacheDirectory();

    String mediaDirPath = "${mainDir.path}/Media";
    Directory mediaDir = Directory(mediaDirPath);
    String imagesDirPath = "${mediaDir.path}/Images";
    Directory imagesDir = Directory(imagesDirPath);
    String videoDirPath = "${mediaDir.path}/Videos";
    Directory videosDir = Directory(videoDirPath);
    String audioDirPath = "${mediaDir.path}/Audios";
    Directory audiosDir = Directory(audioDirPath);
    String docsDirPath = "${mediaDir.path}/Documents";
    Directory docsDir = Directory(docsDirPath);

    String mediaCacheDirPath = "${cacheDir.path}/Media";
    Directory mediaCacheDir = Directory(mediaCacheDirPath);
    String imagesCacheDirPath = "${cacheDir.path}/Images";
    Directory imagesCacheDir = Directory(imagesCacheDirPath);
    String videoCacheDirPath = "${cacheDir.path}/Videos";
    Directory videosCacheDir = Directory(videoCacheDirPath);
    String audioCacheDirPath = "${cacheDir.path}/Audios";
    Directory audiosCacheDir = Directory(audioCacheDirPath);
    String docsCacheDirPath = "${cacheDir.path}/Documents";
    Directory docsCacheDir = Directory(docsCacheDirPath);

    if (!mediaDir.existsSync()) {
      mediaDir.createSync(recursive: true);
    }
    if (!imagesDir.existsSync()) {
      imagesDir.createSync(recursive: true);
    }
    if (!videosDir.existsSync()) {
      videosDir.createSync(recursive: true);
    }
    if (!audiosDir.existsSync()) {
      audiosDir.createSync(recursive: true);
    }
    if (!docsDir.existsSync()) {
      docsDir.createSync(recursive: true);
    }

    if (!mediaCacheDir.existsSync()) {
      mediaCacheDir.createSync(recursive: true);
    }
    if (!imagesCacheDir.existsSync()) {
      imagesCacheDir.createSync(recursive: true);
    }
    if (!videosCacheDir.existsSync()) {
      videosCacheDir.createSync(recursive: true);
    }
    if (!audiosCacheDir.existsSync()) {
      audiosCacheDir.createSync(recursive: true);
    }
    if (!docsCacheDir.existsSync()) {
      docsCacheDir.createSync(recursive: true);
    }

    if (isPhoto) {
      return imagesDirPath;
    } else if (isVideo) {
      return videoDirPath;
    } else if (isAudio) {
      return audioDirPath;
    } else if (isDocs) {
      return docsDirPath;
    } else if (isCachePhoto) {
      return imagesCacheDirPath;
    } else if (isCacheVideo) {
      return videoCacheDirPath;
    } else if (isCacheAudio) {
      return audioCacheDirPath;
    } else {
      return docsCacheDirPath;
    }
  }

  void editingStatus(bool status) {
    isEditing.value = status;
  }

  void BackNavigation() {
    Get.back();
  }
}
