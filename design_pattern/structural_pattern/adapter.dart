///Mục đích: chuyển interface của 1 class thành interface mà client mong muốn.
///Khi dùng: khi tích hợp SDK bên thứ 3 có API khác với phần còn lại của app.
///Ưu: tách biệt dependency;
///Nhược: thêm 1 lớp trung gian
///
class MediaItem {
  final String path;
  MediaItem(this.path);
}

class LegacyPlayer {
  void playTrack(String path) => print("Playing $path (legacy)");
}

class MediaPlayer {
  void play(MediaItem item) {}
}

class LegacyPlayerAdapter implements MediaPlayer {
  final LegacyPlayer _legacy;
  LegacyPlayerAdapter(this._legacy);
  @override
  void play(MediaItem item) => _legacy.playTrack(item.path);
}

/// final player = LegacyPlayerAdapter(LegacyPlayer());
///player.play(MediaItem("/music/song.mp3"));
