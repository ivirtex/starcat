//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of launch_library_api;

class ApiClient {
  ApiClient({
    this.basePath = 'http://localhost',
    this.authentication,
  });

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
    _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty
        ? '?${urlEncodedQueryParams.join('&')}'
        : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (body is MultipartFile &&
          (contentType == null ||
              !contentType.toLowerCase().startsWith('multipart/form-data'))) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
              request.sink.add,
              onDone: request.sink.close,
              // ignore: avoid_types_on_closure_parameters
              onError: (Object error, StackTrace trace) => request.sink.close(),
              cancelOnError: true,
            );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
          ? formParams
          : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch (method) {
        case 'POST':
          return await _client.post(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PUT':
          return await _client.put(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'DELETE':
          return await _client.delete(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'PATCH':
          return await _client.patch(
            uri,
            headers: nullableHeaderParams,
            body: msgBody,
          );
        case 'HEAD':
          return await _client.head(
            uri,
            headers: nullableHeaderParams,
          );
        case 'GET':
          return await _client.get(
            uri,
            headers: nullableHeaderParams,
          );
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(
    String json,
    String targetType, {
    bool growable = false,
  }) async =>
      // ignore: deprecated_member_use_from_same_package
      deserialize(json, targetType, growable: growable);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(
    String json,
    String targetType, {
    bool growable = false,
  }) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType =
        targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
        ? json
        : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated(
      'Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType,
      {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'Agency':
          return Agency.fromJson(value);
        case 'AgencyList':
          return AgencyList.fromJson(value);
        case 'AgencySerializerDetailed':
          return AgencySerializerDetailed.fromJson(value);
        case 'AgencySerializerDetailedCommon':
          return AgencySerializerDetailedCommon.fromJson(value);
        case 'AgencySerializerMini':
          return AgencySerializerMini.fromJson(value);
        case 'AgencyType':
          return AgencyType.fromJson(value);
        case 'Astronaut':
          return Astronaut.fromJson(value);
        case 'AstronautDetailed':
          return AstronautDetailed.fromJson(value);
        case 'AstronautDetailedSerializerNoFlights':
          return AstronautDetailedSerializerNoFlights.fromJson(value);
        case 'AstronautFlight':
          return AstronautFlight.fromJson(value);
        case 'AstronautFlightForExpedition':
          return AstronautFlightForExpedition.fromJson(value);
        case 'AstronautNormal':
          return AstronautNormal.fromJson(value);
        case 'AstronautRole':
          return AstronautRole.fromJson(value);
        case 'AstronautStatus':
          return AstronautStatus.fromJson(value);
        case 'AstronautType':
          return AstronautType.fromJson(value);
        case 'DockingEvent':
          return DockingEvent.fromJson(value);
        case 'DockingEventDetailed':
          return DockingEventDetailed.fromJson(value);
        case 'DockingEventDetailedSerializerForSpacestation':
          return DockingEventDetailedSerializerForSpacestation.fromJson(value);
        case 'DockingEventSerializerForSpacecraftFlight':
          return DockingEventSerializerForSpacecraftFlight.fromJson(value);
        case 'DockingLocation':
          return DockingLocation.fromJson(value);
        case 'DockingLocationSerializerForSpacestation':
          return DockingLocationSerializerForSpacestation.fromJson(value);
        case 'EventDetailedSerializerForSpacewalk':
          return EventDetailedSerializerForSpacewalk.fromJson(value);
        case 'EventType':
          return EventType.fromJson(value);
        case 'Events':
          return Events.fromJson(value);
        case 'Expedition':
          return Expedition.fromJson(value);
        case 'ExpeditionDetail':
          return ExpeditionDetail.fromJson(value);
        case 'ExpeditionDetailedSerializerForSpacestation':
          return ExpeditionDetailedSerializerForSpacestation.fromJson(value);
        case 'ExpeditionDetailedSerializerForSpacewalk':
          return ExpeditionDetailedSerializerForSpacewalk.fromJson(value);
        case 'ExpeditionSerializerForSpacestation':
          return ExpeditionSerializerForSpacestation.fromJson(value);
        case 'FirstStage':
          return FirstStage.fromJson(value);
        case 'FirstStageType':
          return FirstStageType.fromJson(value);
        case 'InfoURL':
          return InfoURL.fromJson(value);
        case 'Landing':
          return Landing.fromJson(value);
        case 'LandingLocation':
          return LandingLocation.fromJson(value);
        case 'LandingType':
          return LandingType.fromJson(value);
        case 'LaunchDetailed':
          return LaunchDetailed.fromJson(value);
        case 'LaunchSerializerCommon':
          return LaunchSerializerCommon.fromJson(value);
        case 'LaunchSerializerMini':
          return LaunchSerializerMini.fromJson(value);
        case 'LaunchStatus':
          return LaunchStatus.fromJson(value);
        case 'Launcher':
          return Launcher.fromJson(value);
        case 'LauncherConfig':
          return LauncherConfig.fromJson(value);
        case 'LauncherConfigDetail':
          return LauncherConfigDetail.fromJson(value);
        case 'LauncherConfigDetailSerializerForAgency':
          return LauncherConfigDetailSerializerForAgency.fromJson(value);
        case 'LauncherConfigList':
          return LauncherConfigList.fromJson(value);
        case 'LauncherDetail':
          return LauncherDetail.fromJson(value);
        case 'LauncherDetailed':
          return LauncherDetailed.fromJson(value);
        case 'LiveStream':
          return LiveStream.fromJson(value);
        case 'Location':
          return Location.fromJson(value);
        case 'LocationDetail':
          return LocationDetail.fromJson(value);
        case 'Mission':
          return Mission.fromJson(value);
        case 'MissionPatch':
          return MissionPatch.fromJson(value);
        case 'MissionType':
          return MissionType.fromJson(value);
        case 'NetPrecision':
          return NetPrecision.fromJson(value);
        case 'NoticeType':
          return NoticeType.fromJson(value);
        case 'Orbit':
          return Orbit.fromJson(value);
        case 'Orbiter':
          return Orbiter.fromJson(value);
        case 'OrbiterSpacecraftConfig':
          return OrbiterSpacecraftConfig.fromJson(value);
        case 'OrbiterStatus':
          return OrbiterStatus.fromJson(value);
        case 'Pad':
          return Pad.fromJson(value);
        case 'PadSerializerNoLocation':
          return PadSerializerNoLocation.fromJson(value);
        case 'PaginatedAgencyList':
          return PaginatedAgencyList.fromJson(value);
        case 'PaginatedAgencyTypeList':
          return PaginatedAgencyTypeList.fromJson(value);
        case 'PaginatedAstronautNormalList':
          return PaginatedAstronautNormalList.fromJson(value);
        case 'PaginatedAstronautRoleList':
          return PaginatedAstronautRoleList.fromJson(value);
        case 'PaginatedAstronautStatusList':
          return PaginatedAstronautStatusList.fromJson(value);
        case 'PaginatedAstronautTypeList':
          return PaginatedAstronautTypeList.fromJson(value);
        case 'PaginatedDockingEventList':
          return PaginatedDockingEventList.fromJson(value);
        case 'PaginatedDockingLocationList':
          return PaginatedDockingLocationList.fromJson(value);
        case 'PaginatedEventTypeList':
          return PaginatedEventTypeList.fromJson(value);
        case 'PaginatedEventsList':
          return PaginatedEventsList.fromJson(value);
        case 'PaginatedExpeditionList':
          return PaginatedExpeditionList.fromJson(value);
        case 'PaginatedFirstStageTypeList':
          return PaginatedFirstStageTypeList.fromJson(value);
        case 'PaginatedLandingLocationList':
          return PaginatedLandingLocationList.fromJson(value);
        case 'PaginatedLandingTypeList':
          return PaginatedLandingTypeList.fromJson(value);
        case 'PaginatedLaunchSerializerCommonList':
          return PaginatedLaunchSerializerCommonList.fromJson(value);
        case 'PaginatedLaunchStatusList':
          return PaginatedLaunchStatusList.fromJson(value);
        case 'PaginatedLauncherConfigList':
          return PaginatedLauncherConfigList.fromJson(value);
        case 'PaginatedLauncherList':
          return PaginatedLauncherList.fromJson(value);
        case 'PaginatedLocationList':
          return PaginatedLocationList.fromJson(value);
        case 'PaginatedMissionPatchList':
          return PaginatedMissionPatchList.fromJson(value);
        case 'PaginatedMissionTypeList':
          return PaginatedMissionTypeList.fromJson(value);
        case 'PaginatedNetPrecisionList':
          return PaginatedNetPrecisionList.fromJson(value);
        case 'PaginatedNoticeTypeList':
          return PaginatedNoticeTypeList.fromJson(value);
        case 'PaginatedOrbitList':
          return PaginatedOrbitList.fromJson(value);
        case 'PaginatedPadList':
          return PaginatedPadList.fromJson(value);
        case 'PaginatedProgramList':
          return PaginatedProgramList.fromJson(value);
        case 'PaginatedRoadClosureStatusList':
          return PaginatedRoadClosureStatusList.fromJson(value);
        case 'PaginatedSpaceStationList':
          return PaginatedSpaceStationList.fromJson(value);
        case 'PaginatedSpaceStationStatusList':
          return PaginatedSpaceStationStatusList.fromJson(value);
        case 'PaginatedSpacecraftConfigurationList':
          return PaginatedSpacecraftConfigurationList.fromJson(value);
        case 'PaginatedSpacecraftFlightList':
          return PaginatedSpacecraftFlightList.fromJson(value);
        case 'PaginatedSpacecraftList':
          return PaginatedSpacecraftList.fromJson(value);
        case 'PaginatedSpacecraftStatusList':
          return PaginatedSpacecraftStatusList.fromJson(value);
        case 'PaginatedSpacewalkNormalList':
          return PaginatedSpacewalkNormalList.fromJson(value);
        case 'PaginatedUpdateList':
          return PaginatedUpdateList.fromJson(value);
        case 'Program':
          return Program.fromJson(value);
        case 'RoadClosureStatus':
          return RoadClosureStatus.fromJson(value);
        case 'RocketDetailed':
          return RocketDetailed.fromJson(value);
        case 'RocketSerializerCommon':
          return RocketSerializerCommon.fromJson(value);
        case 'SpaceStation':
          return SpaceStation.fromJson(value);
        case 'SpaceStationDetailed':
          return SpaceStationDetailed.fromJson(value);
        case 'SpaceStationDetailedSerializerForExpedition':
          return SpaceStationDetailedSerializerForExpedition.fromJson(value);
        case 'SpaceStationSerializerForCommon':
          return SpaceStationSerializerForCommon.fromJson(value);
        case 'SpaceStationSerializerForDocking':
          return SpaceStationSerializerForDocking.fromJson(value);
        case 'SpaceStationSerializerForDockingEvent':
          return SpaceStationSerializerForDockingEvent.fromJson(value);
        case 'SpaceStationSerializerForExpedition':
          return SpaceStationSerializerForExpedition.fromJson(value);
        case 'SpaceStationStatus':
          return SpaceStationStatus.fromJson(value);
        case 'SpaceStationType':
          return SpaceStationType.fromJson(value);
        case 'Spacecraft':
          return Spacecraft.fromJson(value);
        case 'SpacecraftConfig':
          return SpacecraftConfig.fromJson(value);
        case 'SpacecraftConfigType':
          return SpacecraftConfigType.fromJson(value);
        case 'SpacecraftConfiguration':
          return SpacecraftConfiguration.fromJson(value);
        case 'SpacecraftConfigurationDetail':
          return SpacecraftConfigurationDetail.fromJson(value);
        case 'SpacecraftDetailed':
          return SpacecraftDetailed.fromJson(value);
        case 'SpacecraftDetailedNoFlights':
          return SpacecraftDetailedNoFlights.fromJson(value);
        case 'SpacecraftFlight':
          return SpacecraftFlight.fromJson(value);
        case 'SpacecraftFlightDetailed':
          return SpacecraftFlightDetailed.fromJson(value);
        case 'SpacecraftFlightDetailedSerializerForLaunch':
          return SpacecraftFlightDetailedSerializerForLaunch.fromJson(value);
        case 'SpacecraftFlightForDockingEvent':
          return SpacecraftFlightForDockingEvent.fromJson(value);
        case 'SpacecraftFlightSerializerForDockingEvent':
          return SpacecraftFlightSerializerForDockingEvent.fromJson(value);
        case 'SpacecraftFlightSerializerForDockingEventDetailed':
          return SpacecraftFlightSerializerForDockingEventDetailed.fromJson(
              value);
        case 'SpacecraftStatus':
          return SpacecraftStatus.fromJson(value);
        case 'SpacewalkDetailed':
          return SpacewalkDetailed.fromJson(value);
        case 'SpacewalkList':
          return SpacewalkList.fromJson(value);
        case 'SpacewalkNormal':
          return SpacewalkNormal.fromJson(value);
        case 'StarshipDashboard':
          return StarshipDashboard.fromJson(value);
        case 'StarshipDashboardUpcoming':
          return StarshipDashboardUpcoming.fromJson(value);
        case 'Update':
          return Update.fromJson(value);
        case 'VidURL':
          return VidURL.fromJson(value);
        default:
          dynamic match;
          if (value is List &&
              (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toList(growable: growable);
          }
          if (value is Set &&
              (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
                .map<dynamic>((dynamic v) => _deserialize(
                      v,
                      match,
                      growable: growable,
                    ))
                .toSet();
          }
          if (value is Map &&
              (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(
                    v,
                    match,
                    growable: growable,
                  )),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.internalServerError,
        'Exception during deserialization.',
        error,
        trace,
      );
    }
    throw ApiException(
      HttpStatus.internalServerError,
      'Could not find a suitable class for deserialization',
    );
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
      ? message.json
      : ApiClient._deserialize(
          jsonDecode(message.json),
          targetType,
          growable: message.growable,
        );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async =>
    value == null ? '' : json.encode(value);
