/// Mục đích: tạo object phức tạp bằng cách cấu hình từng bước (fluent API).

/// Khi dùng: khi constructor có nhiều tham số (optional) hoặc cấu hình phức tạp.

/// Ưu: code rõ ràng, tránh constructor dài;

/// Nhược: thêm lớp builder.
///

class Builder {
  final String url;
  Map<String, String> headers = {};
  int timeout = 30;
  Builder(this.url);
  Builder setHeader(String k, String v) {
    headers[k] = v;
    return this;
  }

  Builder setTimeout(int t) {
    timeout = t;
    return this;
  }

  HttpRequestConfig build() =>
      HttpRequestConfig._(url: url, headers: headers, timeout: timeout);
}

class HttpRequestConfig {
  HttpRequestConfig._({
    required this.url,
    required this.headers,
    required this.timeout,
  });

  final String url;
  final Map<String, String> headers;
  final int timeout;

  static Builder builder(String url) => Builder(url);
}

void main() {
  HttpRequestConfig.builder(
    'http:',
  ).setHeader('Auth', 'token').setTimeout(3000).build();
}
