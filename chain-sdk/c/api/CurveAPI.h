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


// Accounts (historical) 🔥
//
// Gets accounts.
//
list_t*
CurveAPI_curveGetAccountsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address );


// AddLiquidityEvents (historical) 🔥
//
// Gets addliquidityevents.
//
list_t*
CurveAPI_curveGetAddLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// AdminFeeChangeLogs (historical) 🔥
//
// Gets adminfeechangelogs.
//
list_t*
CurveAPI_curveGetAdminFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// AmplificationCoeffChangeLogs (historical) 🔥
//
// Gets amplificationcoeffchangelogs.
//
list_t*
CurveAPI_curveGetAmplificationCoeffChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// Coins (historical) 🔥
//
// Gets coins.
//
list_t*
CurveAPI_curveGetCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// ContractVersions (historical) 🔥
//
// Gets contractversions.
//
list_t*
CurveAPI_curveGetContractVersionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address );


// Contracts (historical) 🔥
//
// Gets contracts.
//
list_t*
CurveAPI_curveGetContractsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// DailyVolumes (historical) 🔥
//
// Gets dailyvolumes.
//
list_t*
CurveAPI_curveGetDailyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// Exchanges (historical) 🔥
//
// Gets exchanges.
//
list_t*
CurveAPI_curveGetExchangesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// FeeChangeLogs (historical) 🔥
//
// Gets feechangelogs.
//
list_t*
CurveAPI_curveGetFeeChangeLogsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// GaugeDeposits (historical) 🔥
//
// Gets gaugedeposits.
//
list_t*
CurveAPI_curveGetGaugeDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// GaugeLiquiditys (historical) 🔥
//
// Gets gaugeliquiditys.
//
list_t*
CurveAPI_curveGetGaugeLiquiditysHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user );


// GaugeTotalWeights (historical) 🔥
//
// Gets gaugetotalweights.
//
list_t*
CurveAPI_curveGetGaugeTotalWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// GaugeTypeWeights (historical) 🔥
//
// Gets gaugetypeweights.
//
list_t*
CurveAPI_curveGetGaugeTypeWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// GaugeTypes (historical) 🔥
//
// Gets gaugetypes.
//
list_t*
CurveAPI_curveGetGaugeTypesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * name );


// GaugeWeightVotes (historical) 🔥
//
// Gets gaugeweightvotes.
//
list_t*
CurveAPI_curveGetGaugeWeightVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user );


// GaugeWeights (historical) 🔥
//
// Gets gaugeweights.
//
list_t*
CurveAPI_curveGetGaugeWeightsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// GaugeWithdraws (historical) 🔥
//
// Gets gaugewithdraws.
//
list_t*
CurveAPI_curveGetGaugeWithdrawsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Gauges (historical) 🔥
//
// Gets gauges.
//
list_t*
CurveAPI_curveGetGaugesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address , char * pool );


// HourlyVolumes (historical) 🔥
//
// Gets hourlyvolumes.
//
list_t*
CurveAPI_curveGetHourlyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// LpTokens (historical) 🔥
//
// Gets lptokens.
//
list_t*
CurveAPI_curveGetLpTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address , char * name , char * symbol , char * pool );


// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
CurveAPI_curveGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * name );


// ProposalVotes (historical) 🔥
//
// Gets proposalvotes.
//
list_t*
CurveAPI_curveGetProposalVotesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Proposals (historical) 🔥
//
// Gets proposals.
//
list_t*
CurveAPI_curveGetProposalsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// RemoveLiquidityEvents (historical) 🔥
//
// Gets removeliquidityevents.
//
list_t*
CurveAPI_curveGetRemoveLiquidityEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// RemoveLiquidityOneEvents (historical) 🔥
//
// Gets removeliquidityoneevents.
//
list_t*
CurveAPI_curveGetRemoveLiquidityOneEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// SystemStates (historical) 🔥
//
// Gets systemstates.
//
list_t*
CurveAPI_curveGetSystemStatesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
CurveAPI_curveGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address , char * name , char * symbol );


// TransferOwnershipEvents (historical) 🔥
//
// Gets transferownershipevents.
//
list_t*
CurveAPI_curveGetTransferOwnershipEventsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// UnderlyingCoins (historical) 🔥
//
// Gets underlyingcoins.
//
list_t*
CurveAPI_curveGetUnderlyingCoinsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// VotingApps (historical) 🔥
//
// Gets votingapps.
//
list_t*
CurveAPI_curveGetVotingAppsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address );


// WeeklyVolumes (historical) 🔥
//
// Gets weeklyvolumes.
//
list_t*
CurveAPI_curveGetWeeklyVolumesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


