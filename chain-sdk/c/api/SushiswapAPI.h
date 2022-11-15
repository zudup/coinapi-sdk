#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/curve_exchange_dto.h"
#include "../model/dex_trade_dto.h"
#include "../model/sushiswap_bundle_dto.h"
#include "../model/sushiswap_burn_dto.h"
#include "../model/sushiswap_day_data_dto.h"
#include "../model/sushiswap_factory_dto.h"
#include "../model/sushiswap_hour_data_dto.h"
#include "../model/sushiswap_liquidity_position_dto.h"
#include "../model/sushiswap_liquidity_position_snapshot_dto.h"
#include "../model/sushiswap_mint_dto.h"
#include "../model/sushiswap_pair_day_data_dto.h"
#include "../model/sushiswap_pair_dto.h"
#include "../model/sushiswap_pair_hour_data_dto.h"
#include "../model/sushiswap_swap_dto.h"
#include "../model/sushiswap_token_day_data_dto.h"
#include "../model/sushiswap_token_dto.h"
#include "../model/sushiswap_transaction_dto.h"
#include "../model/sushiswap_user_dto.h"


// Exchanges (current) 🔥
//
// Gets exchanges.
//
list_t*
SushiswapAPI_curveGetExchangesCurrent(apiClient_t *apiClient);


// Trades (current) 🔥
//
// Gets trades.
//
list_t*
SushiswapAPI_dexGetTradesCurrent(apiClient_t *apiClient);


// BundleDTOs (historical) 🔥
//
// Gets BundleDTOs.
//
list_t*
SushiswapAPI_sushiswapGetBundleDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Bundles (historical)
//
// Gets bundles.
//
list_t*
SushiswapAPI_sushiswapGetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// BurnDTOs (historical) 🔥
//
// Gets BurnDTOs.
//
list_t*
SushiswapAPI_sushiswapGetBurnDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Burns (historical)
//
// Gets burns.
//
list_t*
SushiswapAPI_sushiswapGetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DayDataDTOs (historical) 🔥
//
// Gets DayDataDTOs.
//
list_t*
SushiswapAPI_sushiswapGetDayDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DayData (historical)
//
// Gets day data.
//
list_t*
SushiswapAPI_sushiswapGetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// FactoryDTOs (historical) 🔥
//
// Gets FactoryDTOs.
//
list_t*
SushiswapAPI_sushiswapGetFactoryDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Factory (historical)
//
// Gets factory.
//
list_t*
SushiswapAPI_sushiswapGetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// HourDataDTOs (historical) 🔥
//
// Gets HourDataDTOs.
//
list_t*
SushiswapAPI_sushiswapGetHourDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// HourData (historical)
//
// Gets hour data.
//
list_t*
SushiswapAPI_sushiswapGetHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// LiquidityPositionDTOs (historical) 🔥
//
// Gets LiquidityPositionDTOs.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPosition (historical)
//
// Gets liquidity position.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPositionSnapshotDTOs (historical) 🔥
//
// Gets LiquidityPositionSnapshotDTOs.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionSnapshotDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPositionSnapshot (historical)
//
// Gets liquidity position snapshot.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// MintDTOs (historical) 🔥
//
// Gets MintDTOs.
//
list_t*
SushiswapAPI_sushiswapGetMintDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Mints (historical)
//
// Gets mints.
//
list_t*
SushiswapAPI_sushiswapGetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairDTOs (historical) 🔥
//
// Gets PairDTOs.
//
list_t*
SushiswapAPI_sushiswapGetPairDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairDayDataDTOs (historical) 🔥
//
// Gets PairDayDataDTOs.
//
list_t*
SushiswapAPI_sushiswapGetPairDayDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairHourDataDTOs (historical) 🔥
//
// Gets PairHourDataDTOs.
//
list_t*
SushiswapAPI_sushiswapGetPairHourDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);


// PoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
SushiswapAPI_sushiswapGetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (historical) 🔥
//
// Gets list of pools for given filters.
//
list_t*
SushiswapAPI_sushiswapGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolsHourData (historical)
//
// Gets pools tracked each our.
//
list_t*
SushiswapAPI_sushiswapGetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// SwapDTOs (historical) 🔥
//
// Gets SwapDTOs.
//
list_t*
SushiswapAPI_sushiswapGetSwapDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);


// Swaps (historical) 🔥
//
// Gets list of swaps for given filters.
//
list_t*
SushiswapAPI_sushiswapGetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t*
SushiswapAPI_sushiswapGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenDayDataDTOs (historical) 🔥
//
// Gets TokenDayDataDTOs.
//
list_t*
SushiswapAPI_sushiswapGetTokenDayDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);


// TokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
SushiswapAPI_sushiswapGetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Tokens (historical) 🔥
//
// Gets list of tokens for given filters.
//
list_t*
SushiswapAPI_sushiswapGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TransactionDTOs (historical) 🔥
//
// Gets TransactionDTOs.
//
list_t*
SushiswapAPI_sushiswapGetTransactionDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
SushiswapAPI_sushiswapGetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// UserDTOs (historical) 🔥
//
// Gets UserDTOs.
//
list_t*
SushiswapAPI_sushiswapGetUserDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Users (historical)
//
// Gets users.
//
list_t*
SushiswapAPI_sushiswapGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


