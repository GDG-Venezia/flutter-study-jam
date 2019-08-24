// Represent the different status of a data request
// It could be a network or a database request
// None is when the request has never been executed, i.e. when the app is opened
// the first time
enum Status { LOADING, COMPLETED, ERROR, NONE }
