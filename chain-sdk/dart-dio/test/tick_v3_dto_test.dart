import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for TickV3DTO
void main() {
  final instance = TickV3DTOBuilder();
  // TODO add properties to the builder and call build()

  group(TickV3DTO, () {
    // DateTime entryTime
    test('to test the property `entryTime`', () async {
      // TODO
    });

    // DateTime recvTime
    test('to test the property `recvTime`', () async {
      // TODO
    });

    // Number of block in which entity was recorded.
    // int blockNumber
    test('to test the property `blockNumber`', () async {
      // TODO
    });

    // 
    // int vid
    test('to test the property `vid`', () async {
      // TODO
    });

    // Identifier, format: <pool address>#<tick index>
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Pool address.
    // String poolAddress
    test('to test the property `poolAddress`', () async {
      // TODO
    });

    // BigInteger tickIdx
    test('to test the property `tickIdx`', () async {
      // TODO
    });

    // Pool address.
    // String pool
    test('to test the property `pool`', () async {
      // TODO
    });

    // BigInteger liquidityGross
    test('to test the property `liquidityGross`', () async {
      // TODO
    });

    // BigInteger liquidityNet
    test('to test the property `liquidityNet`', () async {
      // TODO
    });

    // Calculated price of token0 of tick within this pool - constant.
    // String price0
    test('to test the property `price0`', () async {
      // TODO
    });

    // Calculated price of token1 of tick within this pool - constant.
    // String price1
    test('to test the property `price1`', () async {
      // TODO
    });

    // Lifetime volume of token0 with this tick in range.
    // String volumeToken0
    test('to test the property `volumeToken0`', () async {
      // TODO
    });

    // Lifetime volume of token1 with this tick in range.
    // String volumeToken1
    test('to test the property `volumeToken1`', () async {
      // TODO
    });

    // Lifetime volume in derived USD with this tick in range.
    // String volumeUsd
    test('to test the property `volumeUsd`', () async {
      // TODO
    });

    // Lifetime volume in untracked USD with this tick in range.
    // String untrackedVolumeUsd
    test('to test the property `untrackedVolumeUsd`', () async {
      // TODO
    });

    // Fees in USD.
    // String feesUsd
    test('to test the property `feesUsd`', () async {
      // TODO
    });

    // All time collected fees in token0.
    // String collectedFeesToken0
    test('to test the property `collectedFeesToken0`', () async {
      // TODO
    });

    // All time collected fees in token1.
    // String collectedFeesToken1
    test('to test the property `collectedFeesToken1`', () async {
      // TODO
    });

    // All time collected fees in USD.
    // String collectedFeesUsd
    test('to test the property `collectedFeesUsd`', () async {
      // TODO
    });

    // Created time.
    // DateTime createdAtTimestamp
    test('to test the property `createdAtTimestamp`', () async {
      // TODO
    });

    // BigInteger liquidityProviderCount
    test('to test the property `liquidityProviderCount`', () async {
      // TODO
    });

    // BigInteger feeGrowthOutside0x128
    test('to test the property `feeGrowthOutside0x128`', () async {
      // TODO
    });

    // BigInteger feeGrowthOutside1x128
    test('to test the property `feeGrowthOutside1x128`', () async {
      // TODO
    });

  });
}
