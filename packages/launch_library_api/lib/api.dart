//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library launch_library_api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/agencies_api.dart';
part 'api/astronaut_api.dart';
part 'api/dashboard_api.dart';
part 'api/docking_event_api.dart';
part 'api/event_api.dart';
part 'api/expedition_api.dart';
part 'api/launch_api.dart';
part 'api/launcher_api.dart';
part 'api/location_api.dart';
part 'api/mission_patch_api.dart';
part 'api/pad_api.dart';
part 'api/program_api.dart';
part 'api/spacecraft_api.dart';
part 'api/spacestation_api.dart';
part 'api/spacewalks_api.dart';
part 'api/updates_api.dart';

part 'model/agency.dart';
part 'model/agency_list.dart';
part 'model/agency_serializer_detailed.dart';
part 'model/agency_serializer_detailed_common.dart';
part 'model/agency_serializer_mini.dart';
part 'model/agency_type.dart';
part 'model/astronaut.dart';
part 'model/astronaut_detailed.dart';
part 'model/astronaut_detailed_serializer_no_flights.dart';
part 'model/astronaut_flight.dart';
part 'model/astronaut_flight_for_expedition.dart';
part 'model/astronaut_normal.dart';
part 'model/astronaut_role.dart';
part 'model/astronaut_status.dart';
part 'model/astronaut_type.dart';
part 'model/docking_event.dart';
part 'model/docking_event_detailed.dart';
part 'model/docking_event_detailed_serializer_for_spacestation.dart';
part 'model/docking_event_serializer_for_spacecraft_flight.dart';
part 'model/docking_location.dart';
part 'model/docking_location_serializer_for_spacestation.dart';
part 'model/event_detailed_serializer_for_spacewalk.dart';
part 'model/event_type.dart';
part 'model/events.dart';
part 'model/expedition.dart';
part 'model/expedition_detail.dart';
part 'model/expedition_detailed_serializer_for_spacestation.dart';
part 'model/expedition_detailed_serializer_for_spacewalk.dart';
part 'model/expedition_serializer_for_spacestation.dart';
part 'model/first_stage.dart';
part 'model/first_stage_type.dart';
part 'model/info_url.dart';
part 'model/landing.dart';
part 'model/landing_location.dart';
part 'model/landing_type.dart';
part 'model/launch_detailed.dart';
part 'model/launch_serializer_common.dart';
part 'model/launch_serializer_mini.dart';
part 'model/launch_status.dart';
part 'model/launcher.dart';
part 'model/launcher_config.dart';
part 'model/launcher_config_detail.dart';
part 'model/launcher_config_detail_serializer_for_agency.dart';
part 'model/launcher_config_list.dart';
part 'model/launcher_detail.dart';
part 'model/launcher_detailed.dart';
part 'model/location.dart';
part 'model/location_detail.dart';
part 'model/mission.dart';
part 'model/mission_patch.dart';
part 'model/mission_type.dart';
part 'model/net_precision.dart';
part 'model/notice_type.dart';
part 'model/orbit.dart';
part 'model/pad.dart';
part 'model/pad_serializer_no_location.dart';
part 'model/paginated_agency_list.dart';
part 'model/paginated_agency_type_list.dart';
part 'model/paginated_astronaut_normal_list.dart';
part 'model/paginated_astronaut_role_list.dart';
part 'model/paginated_astronaut_status_list.dart';
part 'model/paginated_astronaut_type_list.dart';
part 'model/paginated_docking_event_list.dart';
part 'model/paginated_docking_location_list.dart';
part 'model/paginated_event_type_list.dart';
part 'model/paginated_events_list.dart';
part 'model/paginated_expedition_list.dart';
part 'model/paginated_first_stage_type_list.dart';
part 'model/paginated_landing_location_list.dart';
part 'model/paginated_landing_type_list.dart';
part 'model/paginated_launch_serializer_common_list.dart';
part 'model/paginated_launch_status_list.dart';
part 'model/paginated_launcher_config_list.dart';
part 'model/paginated_launcher_list.dart';
part 'model/paginated_location_list.dart';
part 'model/paginated_mission_patch_list.dart';
part 'model/paginated_mission_type_list.dart';
part 'model/paginated_net_precision_list.dart';
part 'model/paginated_notice_type_list.dart';
part 'model/paginated_orbit_list.dart';
part 'model/paginated_pad_list.dart';
part 'model/paginated_program_list.dart';
part 'model/paginated_road_closure_status_list.dart';
part 'model/paginated_space_station_list.dart';
part 'model/paginated_space_station_status_list.dart';
part 'model/paginated_spacecraft_configuration_list.dart';
part 'model/paginated_spacecraft_flight_list.dart';
part 'model/paginated_spacecraft_list.dart';
part 'model/paginated_spacecraft_status_list.dart';
part 'model/paginated_spacewalk_normal_list.dart';
part 'model/paginated_update_list.dart';
part 'model/program.dart';
part 'model/road_closure_status.dart';
part 'model/rocket_detailed.dart';
part 'model/rocket_serializer_common.dart';
part 'model/space_station.dart';
part 'model/space_station_detailed.dart';
part 'model/space_station_detailed_serializer_for_expedition.dart';
part 'model/space_station_serializer_for_common.dart';
part 'model/space_station_serializer_for_docking.dart';
part 'model/space_station_serializer_for_docking_event.dart';
part 'model/space_station_serializer_for_expedition.dart';
part 'model/space_station_status.dart';
part 'model/space_station_type.dart';
part 'model/spacecraft.dart';
part 'model/spacecraft_config.dart';
part 'model/spacecraft_config_type.dart';
part 'model/spacecraft_configuration.dart';
part 'model/spacecraft_configuration_detail.dart';
part 'model/spacecraft_detailed.dart';
part 'model/spacecraft_detailed_no_flights.dart';
part 'model/spacecraft_flight.dart';
part 'model/spacecraft_flight_detailed.dart';
part 'model/spacecraft_flight_detailed_serializer_for_launch.dart';
part 'model/spacecraft_flight_for_docking_event.dart';
part 'model/spacecraft_flight_serializer_for_docking_event.dart';
part 'model/spacecraft_flight_serializer_for_docking_event_detailed.dart';
part 'model/spacecraft_status.dart';
part 'model/spacewalk_detailed.dart';
part 'model/spacewalk_list.dart';
part 'model/spacewalk_normal.dart';
part 'model/update.dart';
part 'model/vid_url.dart';

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
