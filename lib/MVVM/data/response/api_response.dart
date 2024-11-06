import 'package:getx/MVVM/data/response/status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;
  ApiResponse(this.status, this.data, this.message);
  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.comleted(this.data) : status = Status.COMLETED;

  ApiResponse.error(this.message) : status = Status.ERROR;

  @override
  String toString() {
    return "Status:$status\n Message:$message \n Data : $data";
  }
}
