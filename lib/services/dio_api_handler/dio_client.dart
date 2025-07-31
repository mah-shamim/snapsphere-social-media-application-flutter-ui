import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:tribpix/components/widgets/comman_snackbar.dart';
import 'package:tribpix/utills/progressbar.dart';

import '../../utills/nk_common_function.dart';
import 'api_constants.dart';

////*================================================================ DIO LIB USE TO dio: ^5.1.2 and above =================================================================////

class DioClient with ApiConstants {
  DioClient()
      : _dio = Dio(
          BaseOptions(
            baseUrl: ApiConstants.baseUrl,
            connectTimeout: const Duration(seconds: 30),
            receiveTimeout: const Duration(seconds: 30),
            responseType: ResponseType.json,
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
          ]);

  late final Dio _dio;

  Dio getdio() {
    return _dio;
  }

  // HTTP request methods will go here

  Future<Response> postbycustom<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.post(path,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioException catch (err) {
      final errorMessage = DioExceptionHandler.fromDioError(err).toString();
      return Future.error(errorMessage);
    } catch (e) {
      return Future.error(e);
    }
  }

  Future<Response> getbycustom<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _dio.get(path,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
          onReceiveProgress: onReceiveProgress);
      return response;
    } on DioException catch (err) {
      final errorMessage = DioExceptionHandler.fromDioError(err).toString();
      throw errorMessage;
    } catch (e) {
      throw e.toString();
    }
  }
}

class DioExceptionHandler implements Exception {
  late String errorMessage;
  late String type;

  DioExceptionHandler.fromDioError(DioException dioError) {
    Logger().wtf('Error: ${dioError.type}, Message: ${dioError.message}');
    switch (dioError.type) {
      case DioExceptionType.cancel:
        errorMessage = dioError.response?.data['message'];
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.connectionTimeout:
        errorMessage = dioError.message ?? 'No Internet Connection';
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.receiveTimeout:
        errorMessage = dioError.response?.data['message'];
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.sendTimeout:
        errorMessage = dioError.response?.data['message'];
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.badResponse:
        errorMessage = dioError.response?.data['message'];
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.badCertificate:
        errorMessage = dioError.response?.data['message'];
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');
        break;
      case DioExceptionType.connectionError:
        errorMessage = 'Unexpected error occurred.';

        break;
      default:
        errorMessage = 'Something went wrong';
        ProgressBar.hideProgressBar();
        CommanSnackbar.showError(errorMessage.toString(),'Please try again later');

        break;
    }
  }

/*
  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request.';
      case 401:
        return 'Authentication failed.';
      case 403:
        return 'The authenticated user is not allowed to access the specified API endpoint.';
      case 404:
        return 'The requested resource does not exist.';
      case 405:
        return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
      case 415:
        return 'Unsupported media type. The requested content type or version number is invalid.';
      case 422:
        return 'Data validation failed.';
      case 429:
        return 'Too many requests.';
      case 500:
        return 'Internal server error.';
      default:
        return 'Oops something went wrong!';
    }
  }
*/

  @override
  String toString() => errorMessage;
}

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (_needAuthorizationHeader(options)) {
      // adds the access-token with the header
      // options.headers['Authorization'] = 'Bearer $API_KEY';
    }
    // continue with the request
    super.onRequest(options, handler);
  }

  bool _needAuthorizationHeader(RequestOptions options) {
    if (options.method == 'GET') {
      return false;
    } else {
      return true;
    }
  }
}

class LoggerInterceptor extends Interceptor {
  Logger logger = Logger(
    // Customize the printer
    printer: PrettyPrinter(
      methodCount: 0,
      colors: true,
      printEmojis: true,
      printTime: false,
    ),
  );

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final options = err.requestOptions;
    final requestPath = '${options.baseUrl}${options.path}';
    logger.e('${options.method} request => $requestPath'); // Debug log
    logger.d('Error: ${err.error}, Message: ${err.message}'); // Error log
    // Error log
    return super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final requestPath = '${options.baseUrl}${options.path}';
    logger.i('${options.method} request => $requestPath'); // Info log
    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    logger.d(
        'StatusCode: ${response.statusCode}, Data: ${response.data}'); // Debug log
    return super.onResponse(response, handler);
  }
}
