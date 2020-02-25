import 'dart:convert';

class HttpResponse {
  int statusCode;
  dynamic body;
  dynamic error;

  void setError(String responseError) {
    error = responseError;
  }
  void setBody(responseBody) {
    body = responseBody;
  }
  void setStatus(int responseStatus) {
    statusCode = responseStatus;
  }

  bool hasError() {
    return error != null;
  }

  setSuccessResponse(response) {
    setBody(json.decode(response.body));
    setStatus(response.statusCode);
  }
}