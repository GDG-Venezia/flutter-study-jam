import 'package:gdg_venezia_app_skeleton/data/status.dart';

// Handler for the response of a generic request.
// With the status we can render the view accordingly
class Response<T> {
  // The status of the request
  Status status;

  // The data returned by the request
  T data;

  // A message for loading an error. Used for debug purpose
  String message;

  Response.completed(this.data) : status = Status.COMPLETED;

  Response.loading(this.message) : status = Status.LOADING;

  Response.error(this.message) : status = Status.ERROR;

  Response.none() : status = Status.NONE;
}
