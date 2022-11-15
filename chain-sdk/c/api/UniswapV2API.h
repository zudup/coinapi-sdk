#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v2_bundle_v2_dto.h"
#include "../model/uniswap_v2_burn_v2_dto.h"
#include "../model/uniswap_v2_liquidity_position_snapshot_v2_dto.h"
#include "../model/uniswap_v2_liquidity_position_v2_dto.h"
#include "../model/uniswap_v2_mint_v2_dto.h"
#include "../model/uniswap_v2_pair_day_data_v2_dto.h"
#include "../model/uniswap_v2_pair_hour_data_v2_dto.h"
#include "../model/uniswap_v2_pair_v2_dto.h"
#include "../model/uniswap_v2_swap_v2_dto.h"
#include "../model/uniswap_v2_token_day_data_v2_dto.h"
#include "../model/uniswap_v2_token_v2_dto.h"
#include "../model/uniswap_v2_transaction_v2_dto.h"
#include "../model/uniswap_v2_uniswap_day_data_v2_dto.h"
#include "../model/uniswap_v2_uniswap_factory_v2_dto.h"
#include "../model/uniswap_v2_user_v2_dto.h"


// BundleV2DTOs (historical) 🔥
//
// Gets BundleV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetBundleV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV2API_uniswapV2GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// BurnV2DTOs (historical) 🔥
//
// Gets BurnV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetBurnV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DayData (historical)
//
// Gets uniswapv2 day data.
//
list_t*
UniswapV2API_uniswapV2GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Factory (historical)
//
// Gets factory.
//
list_t*
UniswapV2API_uniswapV2GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// LiquidityPositionSnapshotV2DTOs (historical) 🔥
//
// Gets LiquidityPositionSnapshotV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPositionV2DTOs (historical) 🔥
//
// Gets LiquidityPositionV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPositions (historical)
//
// Gets liquidity positions.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// LiquidityPositionsSnapshots (historical)
//
// Gets liquidity positions snapshots.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// MintV2DTOs (historical) 🔥
//
// Gets MintV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetMintV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairDayDataV2DTOs (historical) 🔥
//
// Gets PairDayDataV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetPairDayDataV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairHourDataV2DTOs (historical) 🔥
//
// Gets PairHourDataV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetPairHourDataV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PairV2DTOs (historical) 🔥
//
// Gets PairV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetPairV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV2API_uniswapV2GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV2API_uniswapV2GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV2API_uniswapV2GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolsHourData (historical)
//
// Gets pools tracked each our.
//
list_t*
UniswapV2API_uniswapV2GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// SwapV2DTOs (historical) 🔥
//
// Gets SwapV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetSwapV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsCurrent(apiClient_t *apiClient);


// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenDayDataV2DTOs (historical) 🔥
//
// Gets TokenDayDataV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetTokenDayDataV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenV2DTOs (historical) 🔥
//
// Gets TokenV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetTokenV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensCurrent(apiClient_t *apiClient);


// TokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV2API_uniswapV2GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TransactionV2DTOs (historical) 🔥
//
// Gets TransactionV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetTransactionV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// UniswapDayDataV2DTOs (historical) 🔥
//
// Gets UniswapDayDataV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetUniswapDayDataV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// UniswapFactoryV2DTOs (historical) 🔥
//
// Gets UniswapFactoryV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetUniswapFactoryV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// UserV2DTOs (historical) 🔥
//
// Gets UserV2DTOs.
//
list_t*
UniswapV2API_uniswapV2GetUserV2DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Users (historical)
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2GetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


