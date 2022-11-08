import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CurveApi
void main() {
  final instance = Openapi().getCurveApi();

  group(CurveApi, () {
    // GetAccounts (historical)
    //
    // Gets accounts.
    //
    //Future<BuiltList<CurveAccountDTO>> curveGetAccountsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetAccountsHistorical', () async {
      // TODO
    });

    // GetAddLiquidityEvents (historical)
    //
    // Gets add liquidity events.
    //
    //Future<BuiltList<CurveAddLiquidityEventDTO>> curveGetAddLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAddLiquidityEventsHistorical', () async {
      // TODO
    });

    // GetAdminFeeChangeLogs (historical)
    //
    // Gets admin fee change logs.
    //
    //Future<BuiltList<CurveAdminFeeChangeLogDTO>> curveGetAdminFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAdminFeeChangeLogsHistorical', () async {
      // TODO
    });

    // GetAmplificationCoeffChangeLogs (historical)
    //
    // Gets amplification coeff change logs.
    //
    //Future<BuiltList<CurveAmplificationCoeffChangeLogDTO>> curveGetAmplificationCoeffChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAmplificationCoeffChangeLogsHistorical', () async {
      // TODO
    });

    // GetCoins (historical)
    //
    // Gets coins.
    //
    //Future<BuiltList<CurveCoinDTO>> curveGetCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetCoinsHistorical', () async {
      // TODO
    });

    // GetContracts (historical)
    //
    // Gets contracts.
    //
    //Future<BuiltList<CurveContractDTO>> curveGetContractsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetContractsHistorical', () async {
      // TODO
    });

    // GetContractsVersions (historical)
    //
    // Gets contracts versions.
    //
    //Future<BuiltList<CurveContractVersionDTO>> curveGetContractsVersionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetContractsVersionsHistorical', () async {
      // TODO
    });

    // GetDailyVolumes (historical)
    //
    // Gets daily volumes.
    //
    //Future<BuiltList<CurveDailyVolumeDTO>> curveGetDailyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetDailyVolumesHistorical', () async {
      // TODO
    });

    // GetExchanges (historical) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetExchangesHistorical', () async {
      // TODO
    });

    // GetFeeChangeLogs (historical)
    //
    // Gets fee change logs.
    //
    //Future<BuiltList<CurveFeeChangeLogDTO>> curveGetFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetFeeChangeLogsHistorical', () async {
      // TODO
    });

    // GetGaugesDeposits (historical)
    //
    // Gets gauges deposits.
    //
    //Future<BuiltList<CurveGaugeDepositDTO>> curveGetGaugesDepositsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesDepositsHistorical', () async {
      // TODO
    });

    // GetGauges (historical)
    //
    // Gets gauges.
    //
    //Future<BuiltList<CurveGaugeDTO>> curveGetGaugesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetGaugesHistorical', () async {
      // TODO
    });

    // GetGaugesLiquidity (historical)
    //
    // Gets gauges liquidity.
    //
    //Future<BuiltList<CurveGaugeLiquidityDTO>> curveGetGaugesLiquidityHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesLiquidityHistorical', () async {
      // TODO
    });

    // GetGaugesTotalWeights (historical)
    //
    // Gets gauges total weights.
    //
    //Future<BuiltList<CurveGaugeTotalWeightDTO>> curveGetGaugesTotalWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTotalWeightsHistorical', () async {
      // TODO
    });

    // GetGaugesTypes (historical)
    //
    // Gets gauges types.
    //
    //Future<BuiltList<CurveGaugeTypeDTO>> curveGetGaugesTypesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTypesHistorical', () async {
      // TODO
    });

    // GetGaugesTypesWeights (historical)
    //
    // Gets gauges types weights.
    //
    //Future<BuiltList<CurveGaugeTypeWeightDTO>> curveGetGaugesTypesWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTypesWeightsHistorical', () async {
      // TODO
    });

    // GetGaugesWeights (historical)
    //
    // Gets gauges weights.
    //
    //Future<BuiltList<CurveGaugeWeightDTO>> curveGetGaugesWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWeightsHistorical', () async {
      // TODO
    });

    // GetGaugesWeightsVotes (historical)
    //
    // Gets gauges weights votes.
    //
    //Future<BuiltList<CurveGaugeWeightVoteDTO>> curveGetGaugesWeightsVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWeightsVotesHistorical', () async {
      // TODO
    });

    // GetGaugesWithdraw (historical)
    //
    // Gets gauges withdraws.
    //
    //Future<BuiltList<CurveGaugeWithdrawDTO>> curveGetGaugesWithdrawHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWithdrawHistorical', () async {
      // TODO
    });

    // GetHourlyVolumes (historical)
    //
    // Gets hourly volumes.
    //
    //Future<BuiltList<CurveHourlyVolumeDTO>> curveGetHourlyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetHourlyVolumesHistorical', () async {
      // TODO
    });

    // GetLpTokens (historical)
    //
    // Gets lp tokens.
    //
    //Future<BuiltList<CurveLpTokenDTO>> curveGetLpTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetLpTokensHistorical', () async {
      // TODO
    });

    // GetPools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<CurvePoolDTO>> curveGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetPoolsHistorical', () async {
      // TODO
    });

    // GetProposals (historical)
    //
    // Gets proposals.
    //
    //Future<BuiltList<CurveProposalDTO>> curveGetProposalsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetProposalsHistorical', () async {
      // TODO
    });

    // GetProposalsVotes (historical)
    //
    // Gets proposals votes.
    //
    //Future<BuiltList<CurveProposalVoteDTO>> curveGetProposalsVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetProposalsVotesHistorical', () async {
      // TODO
    });

    // GetRemoveLiquidityEvents (historical)
    //
    // Gets remove liquidity events.
    //
    //Future<BuiltList<CurveRemoveLiquidityEventDTO>> curveGetRemoveLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetRemoveLiquidityEventsHistorical', () async {
      // TODO
    });

    // GetRemoveLiquidityOneEvents (historical)
    //
    // Gets remove liquidity one events.
    //
    //Future<BuiltList<CurveRemoveLiquidityOneEventDTO>> curveGetRemoveLiquidityOneEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetRemoveLiquidityOneEventsHistorical', () async {
      // TODO
    });

    // GetSystemStates (historical)
    //
    // Gets system states.
    //
    //Future<BuiltList<CurveSystemStateDTO>> curveGetSystemStatesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetSystemStatesHistorical', () async {
      // TODO
    });

    // GetTokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CurveTokenDTO>> curveGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test curveGetTokensHistorical', () async {
      // TODO
    });

    // GetTransferOwnershipEvents (historical)
    //
    // Gets transfer ownership events.
    //
    //Future<BuiltList<CurveTransferOwnershipEventDTO>> curveGetTransferOwnershipEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetTransferOwnershipEventsHistorical', () async {
      // TODO
    });

    // GetUnderlyingCoins (historical)
    //
    // Gets underlying coins.
    //
    //Future<BuiltList<CurveUnderlyingCoinDTO>> curveGetUnderlyingCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetUnderlyingCoinsHistorical', () async {
      // TODO
    });

    // GetVotingApps (historical)
    //
    // Gets voting apps.
    //
    //Future<BuiltList<CurveVotingAppDTO>> curveGetVotingAppsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetVotingAppsHistorical', () async {
      // TODO
    });

    // GetWeeklyVolumes (historical)
    //
    // Gets weekly volumes.
    //
    //Future<BuiltList<CurveWeeklyVolumeDTO>> curveGetWeeklyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetWeeklyVolumesHistorical', () async {
      // TODO
    });

  });
}
