class Result<T, E>{
  Success data;
  Failure error;
  Result({this.data, this.error});
}

class Success<T>{
  T entity;
  Success(this.entity);
}

class Failure{
  AppError error;
  Failure(this.error);
}

class AppError{
  Error cause;
  AppError({this.cause});
}