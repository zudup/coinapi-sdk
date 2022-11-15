#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v3_bundle_v3_dto.h"
#include "../model/uniswap_v3_burn_v3_dto.h"
#include "../model/uniswap_v3_factory_v3_dto.h"
#include "../model/uniswap_v3_mint_v3_dto.h"
#include "../model/uniswap_v3_pool_day_data_v3_dto.h"
#include "../model/uniswap_v3_pool_hour_data_v3_dto.h"
#include "../model/uniswap_v3_pool_v3_dto.h"
#include "../model/uniswap_v3_position_snapshot_v3_dto.h"
#include "../model/uniswap_v3_position_v3_dto.h"
#include "../model/uniswap_v3_swap_v3_dto.h"
#include "../model/uniswap_v3_tick_day_data_v3_dto.h"
#include "../model/uniswap_v3_tick_v3_dto.h"
#include "../model/uniswap_v3_token_hour_data_v3_dto.h"
#include "../model/uniswap_v3_token_v3_day_data_dto.h"
#include "../model/uniswap_v3_token_v3_dto.h"
#include "../model/uniswap_v3_transaction_v3_dto.h"
#include "../model/uniswap_v3_uniswap_day_data_v3_dto.h"


// BundleV3DTOs (historical) 🔥
//
// Gets BundleV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetBundleV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);


// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// BurnV3DTOs (historical) 🔥
//
// Gets BurnV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetBurnV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DayData (current)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient);


// DayData (historical)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Factory (current)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient);


// Factory (historical)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// FactoryV3DTOs (historical) 🔥
//
// Gets FactoryV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetFactoryV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// MintV3DTOs (historical) 🔥
//
// Gets MintV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetMintV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolDayDataV3DTOs (historical) 🔥
//
// Gets PoolDayDataV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetPoolDayDataV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolHourDataV3DTOs (historical) 🔥
//
// Gets PoolHourDataV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetPoolHourDataV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolV3DTOs (historical) 🔥
//
// Gets PoolV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetPoolV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsDayData (current)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolsHourData (current)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsHourData (historical)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PositionSnapshotV3DTOs (historical) 🔥
//
// Gets PositionSnapshotV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetPositionSnapshotV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PositionV3DTOs (historical) 🔥
//
// Gets PositionV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetPositionV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Positions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Positions (historical)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PositionsSnaphots (historical)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnaphotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PositionsSnapshots (current)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// SwapV3DTOs (historical) 🔥
//
// Gets SwapV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetSwapV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TickDayDataV3DTOs (historical) 🔥
//
// Gets TickDayDataV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetTickDayDataV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TickV3DTOs (historical) 🔥
//
// Gets TickV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetTickV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Ticks (current)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksCurrent(apiClient_t *apiClient, char * filter_pool_id );


// TicksDayData (current)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// TicksDayData (historical)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Ticks (historical)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenHourDataV3DTOs (historical) 🔥
//
// Gets TokenHourDataV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetTokenHourDataV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenV3DTOs (historical) 🔥
//
// Gets TokenV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetTokenV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// TokenV3DayDataDTOs (historical) 🔥
//
// Gets TokenV3DayDataDTOs.
//
list_t*
UniswapV3API_uniswapV3GetTokenV3DayDataDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensDayData (current)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TokensHourData (current)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensHourData (historical)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TransactionV3DTOs (historical) 🔥
//
// Gets TransactionV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetTransactionV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// UniswapDayDataV3DTOs (historical) 🔥
//
// Gets UniswapDayDataV3DTOs.
//
list_t*
UniswapV3API_uniswapV3GetUniswapDayDataV3DTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


