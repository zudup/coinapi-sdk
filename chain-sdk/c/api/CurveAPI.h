#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
CurveAPI_dappsCurveAccountsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveAddLiquidityEventHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveAdminFeeChangeLogHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveAmplificationCoeffChangeLogHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveCoinsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveContractsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveContractsVersionHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveDailyVolumeHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveFeeChangeLogHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveGaugeDepositHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveGaugeLiquidityHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeTotalWeightHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeTypeHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeTypeWeightHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeWeightHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeWeightVoteHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveGaugeWithdrawHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveHourlyVolumeHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveLpTokenHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurvePoolsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveProposalsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveProposalsVoteHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveRemoveLiquidityEventHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveRemoveLiquidityOneEventHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveSwapsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveSystemStateHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveTokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
CurveAPI_dappsCurveTransferOwnershipEventHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveUnderlyingCoinHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
CurveAPI_dappsCurveVotingAppHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
CurveAPI_dappsCurveWeeklyVolumeHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


