import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for TokenHourDataV3DTO
void main() {
  final instance = TokenHourDataV3DTOBuilder();
  // TODO add properties to the builder and call build()

  group(TokenHourDataV3DTO, () {
    // DateTime entryTime
    test('to test the property `entryTime`', () async {
      // TODO
    });

    // DateTime recvTime
    test('to test the property `recvTime`', () async {
      // TODO
    });

    // 
    // int blockNumber
    test('to test the property `blockNumber`', () async {
      // TODO
    });

    // token address concatendated with date
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // unix timestamp for start of hour
    // int periodStartUnix
    test('to test the property `periodStartUnix`', () async {
      // TODO
    });

    // pointer to token
    // String token
    test('to test the property `token`', () async {
      // TODO
    });

    // volume in token units
    // String volume
    test('to test the property `volume`', () async {
      // TODO
    });

    // volume in derived USD
    // String volumeUsd
    test('to test the property `volumeUsd`', () async {
      // TODO
    });

    // volume in USD even on pools with less reliable USD values
    // String untrackedVolumeUsd
    test('to test the property `untrackedVolumeUsd`', () async {
      // TODO
    });

    // liquidity across all pools in token units
    // String totalValueLocked
    test('to test the property `totalValueLocked`', () async {
      // TODO
    });

    // liquidity across all pools in derived USD
    // String totalValueLockedUsd
    test('to test the property `totalValueLockedUsd`', () async {
      // TODO
    });

    // price at end of period in USD
    // String priceUsd
    test('to test the property `priceUsd`', () async {
      // TODO
    });

    // fees in USD
    // String feesUsd
    test('to test the property `feesUsd`', () async {
      // TODO
    });

    // opening price USD
    // String open
    test('to test the property `open`', () async {
      // TODO
    });

    // high price USD
    // String high
    test('to test the property `high`', () async {
      // TODO
    });

    // low price USD
    // String low
    test('to test the property `low`', () async {
      // TODO
    });

    // close price USD
    // String close
    test('to test the property `close`', () async {
      // TODO
    });

    // 
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

  });
}
