class Result<T, Error> {
  T _success;
  Error _failure;

  Result._({success, failure}) {
    this._success = success;
    this._failure = failure;
  }

  Result.success(T s) : this._(success: s);
  Result.failure(Error f) : this._(failure: f);

  Result(T Function() catching) {
    try {
      _success = catching();
    } catch (e) {
      _failure = e;
    }
  }

  map<NewSuccess>(NewSuccess Function(T) transform) {
    if (_success != null) {
      return new Result.success(transform(_success));
    } else {
      return new Result.failure(_failure);
    }
  }

  mapError<NewFailure>(NewFailure Function(Error) transform) {
    if (_failure != null) {
      return new Result.failure(transform(_failure));
    } else {
      return new Result.success(_success);
    }
  }

  flatmap<NewSuccess>(Result<NewSuccess, Error> Function(T) transform) {
    if (_success != null) {
      return Result.success(transform(_success));
    } else {
      return Result.failure(_failure);
    }
  }

  flatMapError<NewFailure>(
      Result<T, NewFailure> Function(Error) transform) {
    if (_failure != null) {
      return Result.failure(transform(_failure));
    } else {
      return Result.success(_success);
    }
  }

  T get() {
    if (_success != null) {
      return _success;
    } else {
      throw _failure;
    }
  }
}

class AppError{

  Exception exeption;

  AppError._({this.exeption});

  AppError.networkError(Exception e): this._(exeption: e);
  AppError.emptyError(Exception e): this._(exeption: e);
  AppError.randomError(Exception e): this._(exeption: e);
}