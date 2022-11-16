import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CurveApi
void main() {
  final instance = Openapi().getCurveApi();

  group(CurveApi, () {
    // Accounts (historical) 🔥
    //
    // Gets accounts.
    //
    //Future<BuiltList<CurveAccountDTO>> curveGetAccountsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address }) async
    test('test curveGetAccountsHistorical', () async {
      // TODO
    });

    // AddLiquidityEvents (historical) 🔥
    //
    // Gets addliquidityevents.
    //
    //Future<BuiltList<CurveAddLiquidityEventDTO>> curveGetAddLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetAddLiquidityEventsHistorical', () async {
      // TODO
    });

    // AdminFeeChangeLogs (historical) 🔥
    //
    // Gets adminfeechangelogs.
    //
    //Future<BuiltList<CurveAdminFeeChangeLogDTO>> curveGetAdminFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetAdminFeeChangeLogsHistorical', () async {
      // TODO
    });

    // AmplificationCoeffChangeLogs (historical) 🔥
    //
    // Gets amplificationcoeffchangelogs.
    //
    //Future<BuiltList<CurveAmplificationCoeffChangeLogDTO>> curveGetAmplificationCoeffChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetAmplificationCoeffChangeLogsHistorical', () async {
      // TODO
    });

    // Coins (historical) 🔥
    //
    // Gets coins.
    //
    //Future<BuiltList<CurveCoinDTO>> curveGetCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetCoinsHistorical', () async {
      // TODO
    });

    // ContractVersions (historical) 🔥
    //
    // Gets contractversions.
    //
    //Future<BuiltList<CurveContractVersionDTO>> curveGetContractVersionsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address }) async
    test('test curveGetContractVersionsHistorical', () async {
      // TODO
    });

    // Contracts (historical) 🔥
    //
    // Gets contracts.
    //
    //Future<BuiltList<CurveContractDTO>> curveGetContractsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetContractsHistorical', () async {
      // TODO
    });

    // DailyVolumes (historical) 🔥
    //
    // Gets dailyvolumes.
    //
    //Future<BuiltList<CurveDailyVolumeDTO>> curveGetDailyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetDailyVolumesHistorical', () async {
      // TODO
    });

    // Exchanges (historical) 🔥
    //
    // Gets exchanges.
    //
    //Future<BuiltList<CurveExchangeDTO>> curveGetExchangesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetExchangesHistorical', () async {
      // TODO
    });

    // FeeChangeLogs (historical) 🔥
    //
    // Gets feechangelogs.
    //
    //Future<BuiltList<CurveFeeChangeLogDTO>> curveGetFeeChangeLogsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetFeeChangeLogsHistorical', () async {
      // TODO
    });

    // GaugeDeposits (historical) 🔥
    //
    // Gets gaugedeposits.
    //
    //Future<BuiltList<CurveGaugeDepositDTO>> curveGetGaugeDepositsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetGaugeDepositsHistorical', () async {
      // TODO
    });

    // GaugeLiquiditys (historical) 🔥
    //
    // Gets gaugeliquiditys.
    //
    //Future<BuiltList<CurveGaugeLiquidityDTO>> curveGetGaugeLiquiditysHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user }) async
    test('test curveGetGaugeLiquiditysHistorical', () async {
      // TODO
    });

    // GaugeTotalWeights (historical) 🔥
    //
    // Gets gaugetotalweights.
    //
    //Future<BuiltList<CurveGaugeTotalWeightDTO>> curveGetGaugeTotalWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetGaugeTotalWeightsHistorical', () async {
      // TODO
    });

    // GaugeTypeWeights (historical) 🔥
    //
    // Gets gaugetypeweights.
    //
    //Future<BuiltList<CurveGaugeTypeWeightDTO>> curveGetGaugeTypeWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetGaugeTypeWeightsHistorical', () async {
      // TODO
    });

    // GaugeTypes (historical) 🔥
    //
    // Gets gaugetypes.
    //
    //Future<BuiltList<CurveGaugeTypeDTO>> curveGetGaugeTypesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String name }) async
    test('test curveGetGaugeTypesHistorical', () async {
      // TODO
    });

    // GaugeWeightVotes (historical) 🔥
    //
    // Gets gaugeweightvotes.
    //
    //Future<BuiltList<CurveGaugeWeightVoteDTO>> curveGetGaugeWeightVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String user }) async
    test('test curveGetGaugeWeightVotesHistorical', () async {
      // TODO
    });

    // GaugeWeights (historical) 🔥
    //
    // Gets gaugeweights.
    //
    //Future<BuiltList<CurveGaugeWeightDTO>> curveGetGaugeWeightsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetGaugeWeightsHistorical', () async {
      // TODO
    });

    // GaugeWithdraws (historical) 🔥
    //
    // Gets gaugewithdraws.
    //
    //Future<BuiltList<CurveGaugeWithdrawDTO>> curveGetGaugeWithdrawsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetGaugeWithdrawsHistorical', () async {
      // TODO
    });

    // Gauges (historical) 🔥
    //
    // Gets gauges.
    //
    //Future<BuiltList<CurveGaugeDTO>> curveGetGaugesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address, String pool }) async
    test('test curveGetGaugesHistorical', () async {
      // TODO
    });

    // HourlyVolumes (historical) 🔥
    //
    // Gets hourlyvolumes.
    //
    //Future<BuiltList<CurveHourlyVolumeDTO>> curveGetHourlyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetHourlyVolumesHistorical', () async {
      // TODO
    });

    // LpTokens (historical) 🔥
    //
    // Gets lptokens.
    //
    //Future<BuiltList<CurveLpTokenDTO>> curveGetLpTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address, String name, String symbol, String pool }) async
    test('test curveGetLpTokensHistorical', () async {
      // TODO
    });

    // Pools (historical) 🔥
    //
    // Gets pools.
    //
    //Future<BuiltList<CurvePoolDTO>> curveGetPoolsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String name }) async
    test('test curveGetPoolsHistorical', () async {
      // TODO
    });

    // ProposalVotes (historical) 🔥
    //
    // Gets proposalvotes.
    //
    //Future<BuiltList<CurveProposalVoteDTO>> curveGetProposalVotesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetProposalVotesHistorical', () async {
      // TODO
    });

    // Proposals (historical) 🔥
    //
    // Gets proposals.
    //
    //Future<BuiltList<CurveProposalDTO>> curveGetProposalsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetProposalsHistorical', () async {
      // TODO
    });

    // RemoveLiquidityEvents (historical) 🔥
    //
    // Gets removeliquidityevents.
    //
    //Future<BuiltList<CurveRemoveLiquidityEventDTO>> curveGetRemoveLiquidityEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetRemoveLiquidityEventsHistorical', () async {
      // TODO
    });

    // RemoveLiquidityOneEvents (historical) 🔥
    //
    // Gets removeliquidityoneevents.
    //
    //Future<BuiltList<CurveRemoveLiquidityOneEventDTO>> curveGetRemoveLiquidityOneEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetRemoveLiquidityOneEventsHistorical', () async {
      // TODO
    });

    // SystemStates (historical) 🔥
    //
    // Gets systemstates.
    //
    //Future<BuiltList<CurveSystemStateDTO>> curveGetSystemStatesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id }) async
    test('test curveGetSystemStatesHistorical', () async {
      // TODO
    });

    // Tokens (historical) 🔥
    //
    // Gets tokens.
    //
    //Future<BuiltList<CurveTokenDTO>> curveGetTokensHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address, String name, String symbol }) async
    test('test curveGetTokensHistorical', () async {
      // TODO
    });

    // TransferOwnershipEvents (historical) 🔥
    //
    // Gets transferownershipevents.
    //
    //Future<BuiltList<CurveTransferOwnershipEventDTO>> curveGetTransferOwnershipEventsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetTransferOwnershipEventsHistorical', () async {
      // TODO
    });

    // UnderlyingCoins (historical) 🔥
    //
    // Gets underlyingcoins.
    //
    //Future<BuiltList<CurveUnderlyingCoinDTO>> curveGetUnderlyingCoinsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetUnderlyingCoinsHistorical', () async {
      // TODO
    });

    // VotingApps (historical) 🔥
    //
    // Gets votingapps.
    //
    //Future<BuiltList<CurveVotingAppDTO>> curveGetVotingAppsHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String address }) async
    test('test curveGetVotingAppsHistorical', () async {
      // TODO
    });

    // WeeklyVolumes (historical) 🔥
    //
    // Gets weeklyvolumes.
    //
    //Future<BuiltList<CurveWeeklyVolumeDTO>> curveGetWeeklyVolumesHistorical({ int startBlock, int endBlock, DateTime startDate, DateTime endDate, String id, String pool }) async
    test('test curveGetWeeklyVolumesHistorical', () async {
      // TODO
    });

  });
}
