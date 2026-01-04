///Mục đích: cung cấp API đơn giản để gọi nhiều thao tác phức tạp bên trong.
///Khi dùng: gom nhiều service/SDK phức tạp để UI gọi 1 hàm duy nhất.
///Ưu: giao diện đơn giản cho client;
///Nhược: facade có thể trở nên quá lớn nếu gom quá nhiều.
///
class Post {
  final int id;
  final String title;
  Post(this.id, this.title);
}

class ApiClient {
  Future<List<Map>> fetchPosts() async => [
    {'id': 1, 'title': 'A'},
  ];
}

class Cache {
  Map<String, dynamic> _c = {};
  dynamic get(String k) {
    return _c[k];
  }

  void set(String k, d) => _c[k] = d;
}

class PostFacade {
  final ApiClient api;
  final Cache cache;
  PostFacade(this.api, this.cache);

  Future<List<Post>> getPosts() async {
    final cached = cache.get('posts');
    if (cached != null) return (cached as List).cast<Post>();
    final res = await api.fetchPosts();
    final posts = res.map((m) => Post(m['id'], m['title'])).toList();
    cache.set('posts', posts);
    return posts;
  }
}


/// postFacade.getPosts()