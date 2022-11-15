import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CurveApi
void main() {
  final instance = Openapi().getCurveApi();

  group(CurveApi, () {
    // Accounts (historical)
    //
    // Gets accounts.
    //
    //Future<BuiltList<CurveAccountDTO>> curveGetAccountsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetAccountsHistorical', () async {
      // TODO
    });

    // AddLiquidityEvents (historical)
    //
    // Gets add liquidity events.
    //
    //Future<BuiltList<CurveAddLiquidityEventDTO>> curveGetAddLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAddLiquidityEventsHistorical', () async {
      // TODO
    });

    // AdminFeeChangeLogs (historical)
    //
    // Gets admin fee change logs.
    //
    //Future<BuiltList<CurveAdminFeeChangeLogDTO>> curveGetAdminFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAdminFeeChangeLogsHistorical', () async {
      // TODO
    });

    // AmplificationCoeffChangeLogs (historical)
    //
    // Gets amplification coeff change logs.
    //
    //Future<BuiltList<CurveAmplificationCoeffChangeLogDTO>> curveGetAmplificationCoeffChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetAmplificationCoeffChangeLogsHistorical', () async {
      // TODO
    });

    // Coins (historical)
    //
    // Gets coins.
    //
    //Future<BuiltList<CurveCoinDTO>> curveGetCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetCoinsHistorical', () async {
      // TODO
    });

    // Contracts (historical)
    //
    // Gets contracts.
    //
    //Future<BuiltList<CurveContractDTO>> curveGetContractsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetContractsHistorical', () async {
      // TODO
    });

    // ContractsVersions (historical)
    //
    // Gets contracts versions.
    //
    //Future<BuiltList<CurveContractVersionDTO>> curveGetContractsVersionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetContractsVersionsHistorical', () async {
      // TODO
    });

    // DailyVolumes (historical)
    //
    // Gets daily volumes.
    //
    //Future<BuiltList<CurveDailyVolumeDTO>> curveGetDailyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetDailyVolumesHistorical', () async {
      // TODO
    });

    // Exchanges (historical) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetExchangesHistorical', () async {
      // TODO
    });

    // FeeChangeLogs (historical)
    //
    // Gets fee change logs.
    //
    //Future<BuiltList<CurveFeeChangeLogDTO>> curveGetFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetFeeChangeLogsHistorical', () async {
      // TODO
    });

    // GaugesDeposits (historical)
    //
    // Gets gauges deposits.
    //
    //Future<BuiltList<CurveGaugeDepositDTO>> curveGetGaugesDepositsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesDepositsHistorical', () async {
      // TODO
    });

    // Gauges (historical)
    //
    // Gets gauges.
    //
    //Future<BuiltList<CurveGaugeDTO>> curveGetGaugesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetGaugesHistorical', () async {
      // TODO
    });

    // GaugesLiquidity (historical)
    //
    // Gets gauges liquidity.
    //
    //Future<BuiltList<CurveGaugeLiquidityDTO>> curveGetGaugesLiquidityHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesLiquidityHistorical', () async {
      // TODO
    });

    // GaugesTotalWeights (historical)
    //
    // Gets gauges total weights.
    //
    //Future<BuiltList<CurveGaugeTotalWeightDTO>> curveGetGaugesTotalWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTotalWeightsHistorical', () async {
      // TODO
    });

    // GaugesTypes (historical)
    //
    // Gets gauges types.
    //
    //Future<BuiltList<CurveGaugeTypeDTO>> curveGetGaugesTypesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTypesHistorical', () async {
      // TODO
    });

    // GaugesTypesWeights (historical)
    //
    // Gets gauges types weights.
    //
    //Future<BuiltList<CurveGaugeTypeWeightDTO>> curveGetGaugesTypesWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesTypesWeightsHistorical', () async {
      // TODO
    });

    // GaugesWeights (historical)
    //
    // Gets gauges weights.
    //
    //Future<BuiltList<CurveGaugeWeightDTO>> curveGetGaugesWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWeightsHistorical', () async {
      // TODO
    });

    // GaugesWeightsVotes (historical)
    //
    // Gets gauges weights votes.
    //
    //Future<BuiltList<CurveGaugeWeightVoteDTO>> curveGetGaugesWeightsVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWeightsVotesHistorical', () async {
      // TODO
    });

    // GaugesWithdraw (historical)
    //
    // Gets gauges withdraws.
    //
    //Future<BuiltList<CurveGaugeWithdrawDTO>> curveGetGaugesWithdrawHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetGaugesWithdrawHistorical', () async {
      // TODO
    });

    // HourlyVolumes (historical)
    //
    // Gets hourly volumes.
    //
    //Future<BuiltList<CurveHourlyVolumeDTO>> curveGetHourlyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetHourlyVolumesHistorical', () async {
      // TODO
    });

    // LpTokens (historical)
    //
    // Gets lp tokens.
    //
    //Future<BuiltList<CurveLpTokenDTO>> curveGetLpTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetLpTokensHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<CurvePoolDTO>> curveGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetPoolsHistorical', () async {
      // TODO
    });

    // Proposals (historical)
    //
    // Gets proposals.
    //
    //Future<BuiltList<CurveProposalDTO>> curveGetProposalsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetProposalsHistorical', () async {
      // TODO
    });

    // ProposalsVotes (historical)
    //
    // Gets proposals votes.
    //
    //Future<BuiltList<CurveProposalVoteDTO>> curveGetProposalsVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetProposalsVotesHistorical', () async {
      // TODO
    });

    // RemoveLiquidityEvents (historical)
    //
    // Gets remove liquidity events.
    //
    //Future<BuiltList<CurveRemoveLiquidityEventDTO>> curveGetRemoveLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetRemoveLiquidityEventsHistorical', () async {
      // TODO
    });

    // RemoveLiquidityOneEvents (historical)
    //
    // Gets remove liquidity one events.
    //
    //Future<BuiltList<CurveRemoveLiquidityOneEventDTO>> curveGetRemoveLiquidityOneEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetRemoveLiquidityOneEventsHistorical', () async {
      // TODO
    });

    // SystemStates (historical)
    //
    // Gets system states.
    //
    //Future<BuiltList<CurveSystemStateDTO>> curveGetSystemStatesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetSystemStatesHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CurveTokenDTO>> curveGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String tokenId }) async
    test('test curveGetTokensHistorical', () async {
      // TODO
    });

    // TransferOwnershipEvents (historical)
    //
    // Gets transfer ownership events.
    //
    //Future<BuiltList<CurveTransferOwnershipEventDTO>> curveGetTransferOwnershipEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetTransferOwnershipEventsHistorical', () async {
      // TODO
    });

    // UnderlyingCoins (historical)
    //
    // Gets underlying coins.
    //
    //Future<BuiltList<CurveUnderlyingCoinDTO>> curveGetUnderlyingCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetUnderlyingCoinsHistorical', () async {
      // TODO
    });

    // VotingApps (historical)
    //
    // Gets voting apps.
    //
    //Future<BuiltList<CurveVotingAppDTO>> curveGetVotingAppsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate }) async
    test('test curveGetVotingAppsHistorical', () async {
      // TODO
    });

    // WeeklyVolumes (historical)
    //
    // Gets weekly volumes.
    //
    //Future<BuiltList<CurveWeeklyVolumeDTO>> curveGetWeeklyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String poolId }) async
    test('test curveGetWeeklyVolumesHistorical', () async {
      // TODO
    });

  });
}
