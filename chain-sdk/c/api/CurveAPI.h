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


// GetAccounts (historical)
//
// Gets accounts.
//
list_t*
CurveAPI_curveGetAccountsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetAddLiquidityEvents (historical)
//
// Gets add liquidity events.
//
list_t*
CurveAPI_curveGetAddLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetAdminFeeChangeLogs (historical)
//
// Gets admin fee change logs.
//
list_t*
CurveAPI_curveGetAdminFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetAmplificationCoeffChangeLogs (historical)
//
// Gets amplification coeff change logs.
//
list_t*
CurveAPI_curveGetAmplificationCoeffChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetCoins (historical)
//
// Gets coins.
//
list_t*
CurveAPI_curveGetCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetContracts (historical)
//
// Gets contracts.
//
list_t*
CurveAPI_curveGetContractsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetContractsVersions (historical)
//
// Gets contracts versions.
//
list_t*
CurveAPI_curveGetContractsVersionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetDailyVolumes (historical)
//
// Gets daily volumes.
//
list_t*
CurveAPI_curveGetDailyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetExchanges (historical) 🔥
//
// Gets exchanges.
//
list_t*
CurveAPI_curveGetExchangesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetFeeChangeLogs (historical)
//
// Gets fee change logs.
//
list_t*
CurveAPI_curveGetFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetGaugesDeposits (historical)
//
// Gets gauges deposits.
//
list_t*
CurveAPI_curveGetGaugesDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGauges (historical)
//
// Gets gauges.
//
list_t*
CurveAPI_curveGetGaugesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetGaugesLiquidity (historical)
//
// Gets gauges liquidity.
//
list_t*
CurveAPI_curveGetGaugesLiquidityHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesTotalWeights (historical)
//
// Gets gauges total weights.
//
list_t*
CurveAPI_curveGetGaugesTotalWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesTypes (historical)
//
// Gets gauges types.
//
list_t*
CurveAPI_curveGetGaugesTypesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesTypesWeights (historical)
//
// Gets gauges types weights.
//
list_t*
CurveAPI_curveGetGaugesTypesWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesWeights (historical)
//
// Gets gauges weights.
//
list_t*
CurveAPI_curveGetGaugesWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesWeightsVotes (historical)
//
// Gets gauges weights votes.
//
list_t*
CurveAPI_curveGetGaugesWeightsVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetGaugesWithdraw (historical)
//
// Gets gauges withdraws.
//
list_t*
CurveAPI_curveGetGaugesWithdrawHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetHourlyVolumes (historical)
//
// Gets hourly volumes.
//
list_t*
CurveAPI_curveGetHourlyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetLpTokens (historical)
//
// Gets lp tokens.
//
list_t*
CurveAPI_curveGetLpTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (historical) 🔥
//
// Gets pools.
//
list_t*
CurveAPI_curveGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetProposals (historical)
//
// Gets proposals.
//
list_t*
CurveAPI_curveGetProposalsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetProposalsVotes (historical)
//
// Gets proposals votes.
//
list_t*
CurveAPI_curveGetProposalsVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetRemoveLiquidityEvents (historical)
//
// Gets remove liquidity events.
//
list_t*
CurveAPI_curveGetRemoveLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetRemoveLiquidityOneEvents (historical)
//
// Gets remove liquidity one events.
//
list_t*
CurveAPI_curveGetRemoveLiquidityOneEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSystemStates (historical)
//
// Gets system states.
//
list_t*
CurveAPI_curveGetSystemStatesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetTokens (historical) 🔥
//
// Gets tokens.
//
list_t*
CurveAPI_curveGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTransferOwnershipEvents (historical)
//
// Gets transfer ownership events.
//
list_t*
CurveAPI_curveGetTransferOwnershipEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetUnderlyingCoins (historical)
//
// Gets underlying coins.
//
list_t*
CurveAPI_curveGetUnderlyingCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetVotingApps (historical)
//
// Gets voting apps.
//
list_t*
CurveAPI_curveGetVotingAppsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetWeeklyVolumes (historical)
//
// Gets weekly volumes.
//
list_t*
CurveAPI_curveGetWeeklyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


