class HostConstants {
  static const String chargerControlBaseUrl = '/';
  static const String chargingStationsBaseUrl = '/';

  static const String requestChargingSessionEndpoint = 'session/activate';
}

class CacheConstants {
  static const String boxName = 'box';

  static const int cachedObjectTypeId = 1;
  static const int chargingStationModelTypeId = 2;

  static const String chargingStationsKey = 'chargingStations';

  static const int defaultCacheExpireMinutes = 10;
  static const int sessionIdCacheExpireMinutes = 600;

  static const int toMillisecondsConverter = 6000;
}
