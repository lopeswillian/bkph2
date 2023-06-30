

import 'package:collection/collection.dart';

import '../infraestructure.dart';

/// Interceptor to extract http error message
class ErrorMessageInterceptor extends HttpInterceptor {
  @override
  void onError(exception) {
    final errorData = exception.data;
    switch (exception.status) {
      case HttpStatus.continue_:
        break;
      case HttpStatus.switchingProtocols:
        break;
      case HttpStatus.processing:
        break;
      case HttpStatus.ok:
        break;
      case HttpStatus.created:
        break;
      case HttpStatus.accepted:
        break;
      case HttpStatus.noContent:
        break;
      case HttpStatus.nonAuthoritativeInformation:
        break;
      case HttpStatus.resetContent:
        break;
      case HttpStatus.partialContent:
        break;
      case HttpStatus.multiStatus:
        break;
      case HttpStatus.alreadyReported:
        break;
      case HttpStatus.imUsed:
        break;
      case HttpStatus.multipleChoices:
        break;
      case HttpStatus.movedPermanently:
        break;
      case HttpStatus.found:
        break;
      case HttpStatus.movedTemporarily:
        break;
      case HttpStatus.seeOther:
        break;
      case HttpStatus.notModified:
        break;
      case HttpStatus.useProxy:
        break;
      case HttpStatus.temporaryRedirect:
        break;
      case HttpStatus.permanentRedirect:
        break;
      case HttpStatus.badRequest:
        throw BadRequestException(
          message: _extractMessage(exception),
          data: errorData,
        );
      case HttpStatus.unauthorized:
        throw UnauthorizedException(
          message: _extractMessage(exception),
          data: errorData,
        );
      case HttpStatus.paymentRequired:
        break;
      case HttpStatus.forbidden:
        break;
      case HttpStatus.notFound:
        break;
      case HttpStatus.methodNotAllowed:
        break;
      case HttpStatus.notAcceptable:
        break;
      case HttpStatus.proxyAuthenticationRequired:
        break;
      case HttpStatus.gatewayTimeout:
      case HttpStatus.networkConnectTimeoutError:
      case HttpStatus.requestTimeout:
        throw TimeoutException(
          message: _extractMessage(exception),
        );
      case HttpStatus.conflict:
        break;
      case HttpStatus.gone:
        break;
      case HttpStatus.lengthRequired:
        break;
      case HttpStatus.preconditionFailed:
        break;
      case HttpStatus.requestEntityTooLarge:
        break;
      case HttpStatus.requestUriTooLong:
        break;
      case HttpStatus.unsupportedMediaType:
        break;
      case HttpStatus.requestedRangeNotSatisfiable:
        break;
      case HttpStatus.expectationFailed:
        break;
      case HttpStatus.misdirectedRequest:
        break;
      case HttpStatus.unprocessableEntity:
        throw UnprocessableEntityException(
          message: _extractMessage(exception),
          data: errorData,
        );
      case HttpStatus.locked:
        break;
      case HttpStatus.failedDependency:
        break;
      case HttpStatus.upgradeRequired:
        break;
      case HttpStatus.preconditionRequired:
        break;
      case HttpStatus.tooManyRequests:
        break;
      case HttpStatus.requestHeaderFieldsTooLarge:
        break;
      case HttpStatus.connectionClosedWithoutResponse:
        break;
      case HttpStatus.unavailableForLegalReasons:
        break;
      case HttpStatus.clientClosedRequest:
        break;
      case HttpStatus.serverError:
        break;
      case HttpStatus.internalServerError:
        break;
      case HttpStatus.notImplemented:
        break;
      case HttpStatus.badGateway:
        break;
      case HttpStatus.serviceUnavailable:
        break;
      case HttpStatus.httpVersionNotSupported:
        break;
      case HttpStatus.variantAlsoNegotiates:
        break;
      case HttpStatus.insufficientStorage:
        break;
      case HttpStatus.loopDetected:
        break;
      case HttpStatus.notExtended:
        break;
      case HttpStatus.networkAuthenticationRequired:
        break;
      default:
        break;
    }
  }

  String _extractMessage(IHttpException exception) {
    if (exception.data is Map) {
      final entries = Map<String, dynamic>.from(exception.data ?? {}).entries;
      String? message = entries.firstWhereOrNull((e) {
        final key = e.key.toLowerCase();
        return key == 'mensagem' || key == 'title';
      })?.value;

      var messages = entries.firstWhereOrNull((e) {
        return e.key.toLowerCase() == 'messages';
      })?.value;

      if (messages is List) {
        message ??= messages.reduce(
          (value, element) => '$value $element',
        );
      }

      return message ??= exception.message;
    }
    if (exception.data is List) {
      final entries =
          Map<String, dynamic>.from(exception.data.first ?? {}).entries;
      String? message = entries.firstWhereOrNull((e) {
        final key = e.key.toLowerCase();
        return key == 'mensagem' || key == 'message' || key == 'title';
      })?.value;
      return message ??= exception.message;
    }
    return exception.message;
  }
}
