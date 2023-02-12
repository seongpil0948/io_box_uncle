part of "./index.dart";

@freezed //  all of this class's properties are immutable.
class Locate extends Equatable with _$Locate {
  @JsonSerializable(explicitToJson: true)
  const factory Locate({
    String? code,
    required String alias,
    int? latitude,
    int? longitude,
    String? detailLocate,
    String? firstName,
    String? lastName,
    String? phone,
    String? postalCode,
    required String country,
    String? city,
    String? county,
    String? town,
    LocateType? locateType,
  }) = _Locate;

  const Locate._();
  factory Locate.fromJson(Map<String, Object?> json) => _$LocateFromJson(json);

  String get adminArea {
    return "$city $county $town";
  }

  @override
  List<Object?> get props => [code, alias];
}

enum LocateType {
  @JsonValue('SHOP')
  shop,
  @JsonValue('STORAGE')
  storage,
  @JsonValue('ETC')
  etc,
}
