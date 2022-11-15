#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/curve_account_dto.h"
#include "../model/curve_add_liquidity_event_dto.h"
#include "../model/curve_admin_fee_change_log_dto.h"
#include "../model/curve_amplification_coeff_change_log_dto.h"
#include "../model/curve_coin_dto.h"
#include "../model/curve_contract_dto.h"
#include "../model/curve_contract_version_dto.h"
#include "../model/curve_daily_volume_dto.h"
#include "../model/curve_exchange_dto.h"
#include "../model/curve_fee_change_log_dto.h"
#include "../model/curve_gauge_deposit_dto.h"
#include "../model/curve_gauge_dto.h"
#include "../model/curve_gauge_liquidity_dto.h"
#include "../model/curve_gauge_total_weight_dto.h"
#include "../model/curve_gauge_type_dto.h"
#include "../model/curve_gauge_type_weight_dto.h"
#include "../model/curve_gauge_weight_dto.h"
#include "../model/curve_gauge_weight_vote_dto.h"
#include "../model/curve_gauge_withdraw_dto.h"
#include "../model/curve_hourly_volume_dto.h"
#include "../model/curve_lp_token_dto.h"
#include "../model/curve_pool_dto.h"
#include "../model/curve_proposal_dto.h"
#include "../model/curve_proposal_vote_dto.h"
#include "../model/curve_remove_liquidity_event_dto.h"
#include "../model/curve_remove_liquidity_one_event_dto.h"
#include "../model/curve_system_state_dto.h"
#include "../model/curve_token_dto.h"
#include "../model/curve_transfer_ownership_event_dto.h"
#include "../model/curve_underlying_coin_dto.h"
#include "../model/curve_voting_app_dto.h"
#include "../model/curve_weekly_volume_dto.h"


// AccountDTOs (historical) 🔥
//
// Gets AccountDTOs.
//
list_t*
CurveAPI_curveGetAccountDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Accounts (historical)
//
// Gets accounts.
//
list_t*
CurveAPI_curveGetAccountsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// AddLiquidityEventDTOs (historical) 🔥
//
// Gets AddLiquidityEventDTOs.
//
list_t*
CurveAPI_curveGetAddLiquidityEventDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// AddLiquidityEvents (historical)
//
// Gets add liquidity events.
//
list_t*
CurveAPI_curveGetAddLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// AdminFeeChangeLogDTOs (historical) 🔥
//
// Gets AdminFeeChangeLogDTOs.
//
list_t*
CurveAPI_curveGetAdminFeeChangeLogDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// AdminFeeChangeLogs (historical)
//
// Gets admin fee change logs.
//
list_t*
CurveAPI_curveGetAdminFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// AmplificationCoeffChangeLogDTOs (historical) 🔥
//
// Gets AmplificationCoeffChangeLogDTOs.
//
list_t*
CurveAPI_curveGetAmplificationCoeffChangeLogDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// AmplificationCoeffChangeLogs (historical)
//
// Gets amplification coeff change logs.
//
list_t*
CurveAPI_curveGetAmplificationCoeffChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// CoinDTOs (historical) 🔥
//
// Gets CoinDTOs.
//
list_t*
CurveAPI_curveGetCoinDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Coins (historical)
//
// Gets coins.
//
list_t*
CurveAPI_curveGetCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ContractDTOs (historical) 🔥
//
// Gets ContractDTOs.
//
list_t*
CurveAPI_curveGetContractDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ContractVersionDTOs (historical) 🔥
//
// Gets ContractVersionDTOs.
//
list_t*
CurveAPI_curveGetContractVersionDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Contracts (historical)
//
// Gets contracts.
//
list_t*
CurveAPI_curveGetContractsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ContractsVersions (historical)
//
// Gets contracts versions.
//
list_t*
CurveAPI_curveGetContractsVersionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DailyVolumeDTOs (historical) 🔥
//
// Gets DailyVolumeDTOs.
//
list_t*
CurveAPI_curveGetDailyVolumeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DailyVolumes (historical)
//
// Gets daily volumes.
//
list_t*
CurveAPI_curveGetDailyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ExchangeDTOs (historical) 🔥
//
// Gets ExchangeDTOs.
//
list_t*
CurveAPI_curveGetExchangeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Exchanges (historical) 🔥
//
// Gets exchanges.
//
list_t*
CurveAPI_curveGetExchangesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// FeeChangeLogDTOs (historical) 🔥
//
// Gets FeeChangeLogDTOs.
//
list_t*
CurveAPI_curveGetFeeChangeLogDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// FeeChangeLogs (historical)
//
// Gets fee change logs.
//
list_t*
CurveAPI_curveGetFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeDTOs (historical) 🔥
//
// Gets GaugeDTOs.
//
list_t*
CurveAPI_curveGetGaugeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeDepositDTOs (historical) 🔥
//
// Gets GaugeDepositDTOs.
//
list_t*
CurveAPI_curveGetGaugeDepositDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeLiquidityDTOs (historical) 🔥
//
// Gets GaugeLiquidityDTOs.
//
list_t*
CurveAPI_curveGetGaugeLiquidityDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeTotalWeightDTOs (historical) 🔥
//
// Gets GaugeTotalWeightDTOs.
//
list_t*
CurveAPI_curveGetGaugeTotalWeightDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeTypeDTOs (historical) 🔥
//
// Gets GaugeTypeDTOs.
//
list_t*
CurveAPI_curveGetGaugeTypeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeTypeWeightDTOs (historical) 🔥
//
// Gets GaugeTypeWeightDTOs.
//
list_t*
CurveAPI_curveGetGaugeTypeWeightDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeWeightDTOs (historical) 🔥
//
// Gets GaugeWeightDTOs.
//
list_t*
CurveAPI_curveGetGaugeWeightDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeWeightVoteDTOs (historical) 🔥
//
// Gets GaugeWeightVoteDTOs.
//
list_t*
CurveAPI_curveGetGaugeWeightVoteDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugeWithdrawDTOs (historical) 🔥
//
// Gets GaugeWithdrawDTOs.
//
list_t*
CurveAPI_curveGetGaugeWithdrawDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugesDeposits (historical)
//
// Gets gauges deposits.
//
list_t*
CurveAPI_curveGetGaugesDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Gauges (historical)
//
// Gets gauges.
//
list_t*
CurveAPI_curveGetGaugesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GaugesLiquidity (historical)
//
// Gets gauges liquidity.
//
list_t*
CurveAPI_curveGetGaugesLiquidityHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesTotalWeights (historical)
//
// Gets gauges total weights.
//
list_t*
CurveAPI_curveGetGaugesTotalWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesTypes (historical)
//
// Gets gauges types.
//
list_t*
CurveAPI_curveGetGaugesTypesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesTypesWeights (historical)
//
// Gets gauges types weights.
//
list_t*
CurveAPI_curveGetGaugesTypesWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesWeights (historical)
//
// Gets gauges weights.
//
list_t*
CurveAPI_curveGetGaugesWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesWeightsVotes (historical)
//
// Gets gauges weights votes.
//
list_t*
CurveAPI_curveGetGaugesWeightsVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GaugesWithdraw (historical)
//
// Gets gauges withdraws.
//
list_t*
CurveAPI_curveGetGaugesWithdrawHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// HourlyVolumeDTOs (historical) 🔥
//
// Gets HourlyVolumeDTOs.
//
list_t*
CurveAPI_curveGetHourlyVolumeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// HourlyVolumes (historical)
//
// Gets hourly volumes.
//
list_t*
CurveAPI_curveGetHourlyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LpTokenDTOs (historical) 🔥
//
// Gets LpTokenDTOs.
//
list_t*
CurveAPI_curveGetLpTokenDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LpTokens (historical)
//
// Gets lp tokens.
//
list_t*
CurveAPI_curveGetLpTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolDTOs (historical) 🔥
//
// Gets PoolDTOs.
//
list_t*
CurveAPI_curveGetPoolDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
CurveAPI_curveGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ProposalDTOs (historical) 🔥
//
// Gets ProposalDTOs.
//
list_t*
CurveAPI_curveGetProposalDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// ProposalVoteDTOs (historical) 🔥
//
// Gets ProposalVoteDTOs.
//
list_t*
CurveAPI_curveGetProposalVoteDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Proposals (historical)
//
// Gets proposals.
//
list_t*
CurveAPI_curveGetProposalsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// ProposalsVotes (historical)
//
// Gets proposals votes.
//
list_t*
CurveAPI_curveGetProposalsVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// RemoveLiquidityEventDTOs (historical) 🔥
//
// Gets RemoveLiquidityEventDTOs.
//
list_t*
CurveAPI_curveGetRemoveLiquidityEventDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// RemoveLiquidityEvents (historical)
//
// Gets remove liquidity events.
//
list_t*
CurveAPI_curveGetRemoveLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// RemoveLiquidityOneEventDTOs (historical) 🔥
//
// Gets RemoveLiquidityOneEventDTOs.
//
list_t*
CurveAPI_curveGetRemoveLiquidityOneEventDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// RemoveLiquidityOneEvents (historical)
//
// Gets remove liquidity one events.
//
list_t*
CurveAPI_curveGetRemoveLiquidityOneEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// SystemStateDTOs (historical) 🔥
//
// Gets SystemStateDTOs.
//
list_t*
CurveAPI_curveGetSystemStateDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// SystemStates (historical)
//
// Gets system states.
//
list_t*
CurveAPI_curveGetSystemStatesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t*
CurveAPI_curveGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
CurveAPI_curveGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TransferOwnershipEventDTOs (historical) 🔥
//
// Gets TransferOwnershipEventDTOs.
//
list_t*
CurveAPI_curveGetTransferOwnershipEventDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TransferOwnershipEvents (historical)
//
// Gets transfer ownership events.
//
list_t*
CurveAPI_curveGetTransferOwnershipEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// UnderlyingCoinDTOs (historical) 🔥
//
// Gets UnderlyingCoinDTOs.
//
list_t*
CurveAPI_curveGetUnderlyingCoinDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// UnderlyingCoins (historical)
//
// Gets underlying coins.
//
list_t*
CurveAPI_curveGetUnderlyingCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// VotingAppDTOs (historical) 🔥
//
// Gets VotingAppDTOs.
//
list_t*
CurveAPI_curveGetVotingAppDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// VotingApps (historical)
//
// Gets voting apps.
//
list_t*
CurveAPI_curveGetVotingAppsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// WeeklyVolumeDTOs (historical) 🔥
//
// Gets WeeklyVolumeDTOs.
//
list_t*
CurveAPI_curveGetWeeklyVolumeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// WeeklyVolumes (historical)
//
// Gets weekly volumes.
//
list_t*
CurveAPI_curveGetWeeklyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


