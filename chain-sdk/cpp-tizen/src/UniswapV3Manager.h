#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV3.BundleV3DTO.h"
#include "UniswapV3.BurnV3DTO.h"
#include "UniswapV3.FactoryV3DTO.h"
#include "UniswapV3.MintV3DTO.h"
#include "UniswapV3.PoolDayDataV3DTO.h"
#include "UniswapV3.PoolHourDataV3DTO.h"
#include "UniswapV3.PoolV3DTO.h"
#include "UniswapV3.PositionSnapshotV3DTO.h"
#include "UniswapV3.PositionV3DTO.h"
#include "UniswapV3.SwapV3DTO.h"
#include "UniswapV3.TickDayDataV3DTO.h"
#include "UniswapV3.TickV3DTO.h"
#include "UniswapV3.TokenHourDataV3DTO.h"
#include "UniswapV3.TokenV3DTO.h"
#include "UniswapV3.TokenV3DayDataDTO.h"
#include "UniswapV3.TransactionV3DTO.h"
#include "UniswapV3.UniswapDayDataV3DTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup UniswapV3 UniswapV3
 * \ingroup Operations
 *  @{
 */
class UniswapV3Manager {
public:
	UniswapV3Manager();
	virtual ~UniswapV3Manager();

/*! \brief BundleV3s (historical) 🔥. *Synchronous*
 *
 * Gets bundlev3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundleV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);

/*! \brief BundleV3s (historical) 🔥. *Asynchronous*
 *
 * Gets bundlev3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundleV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (current). *Synchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleV3DTO>, Error, void* )
	, void* userData);


/*! \brief BurnV3s (historical) 🔥. *Synchronous*
 *
 * Gets burnv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurnV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);

/*! \brief BurnV3s (historical) 🔥. *Asynchronous*
 *
 * Gets burnv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurnV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBurns (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.BurnV3DTO>, Error, void* )
	, void* userData);


/*! \brief DayData (current). *Synchronous*
 *
 * Gets uniswapv3 day data.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetDayData (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief DayData (current). *Asynchronous*
 *
 * Gets uniswapv3 day data.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetDayData (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief Factory (current). *Synchronous*
 *
 * Gets factory.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactory (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);

/*! \brief Factory (current). *Asynchronous*
 *
 * Gets factory.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactory (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);


/*! \brief FactoryV3s (historical) 🔥. *Synchronous*
 *
 * Gets factoryv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactoryV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);

/*! \brief FactoryV3s (historical) 🔥. *Asynchronous*
 *
 * Gets factoryv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactoryV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryV3DTO>, Error, void* )
	, void* userData);


/*! \brief MintV3s (historical) 🔥. *Synchronous*
 *
 * Gets mintv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMintV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);

/*! \brief MintV3s (historical) 🔥. *Asynchronous*
 *
 * Gets mintv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash + '#' + index in mints Transaction array.
 * \param pool Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMintV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetMints (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.MintV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolDayDataV3s (historical) 🔥. *Synchronous*
 *
 * Gets pooldaydatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolDayDataV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolDayDataV3s (historical) 🔥. *Asynchronous*
 *
 * Gets pooldaydatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolDayDataV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolHourDataV3s (historical) 🔥. *Synchronous*
 *
 * Gets poolhourdatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolHourDataV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolHourDataV3s (historical) 🔥. *Asynchronous*
 *
 * Gets poolhourdatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolHourDataV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolV3s (historical) 🔥. *Synchronous*
 *
 * Gets poolv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolV3s (historical) 🔥. *Asynchronous*
 *
 * Gets poolv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Pool address.
 * \param token0 Reference to token0 as stored in pool contract.
 * \param token1 Reference to token1 as stored in pool contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPools (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsDayData (current). *Synchronous*
 *
 * Gets pools day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsDayData (current). *Asynchronous*
 *
 * Gets pools day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsHourData (current). *Synchronous*
 *
 * Gets pools hour data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsHourData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsHourData (current). *Asynchronous*
 *
 * Gets pools hour data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPoolsHourData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PoolHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief PositionSnapshotV3s (historical) 🔥. *Synchronous*
 *
 * Gets positionsnapshotv3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionSnapshotV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);

/*! \brief PositionSnapshotV3s (historical) 🔥. *Asynchronous*
 *
 * Gets positionsnapshotv3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionSnapshotV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);


/*! \brief PositionV3s (historical) 🔥. *Synchronous*
 *
 * Gets positionv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);

/*! \brief PositionV3s (historical) 🔥. *Asynchronous*
 *
 * Gets positionv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id NFT token identifier.
 * \param pool Pool position is within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);


/*! \brief Positions (current). *Synchronous*
 *
 * Gets positions.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);

/*! \brief Positions (current). *Asynchronous*
 *
 * Gets positions.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositions (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionV3DTO>, Error, void* )
	, void* userData);


/*! \brief PositionsSnapshots (current). *Synchronous*
 *
 * Gets positions snapshots.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionsSnapshots (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);

/*! \brief PositionsSnapshots (current). *Asynchronous*
 *
 * Gets positions snapshots.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetPositionsSnapshots (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotV3DTO>, Error, void* )
	, void* userData);


/*! \brief SwapV3s (historical) 🔥. *Synchronous*
 *
 * Gets swapv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
 * \param pool Pool swap occured within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwapV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);

/*! \brief SwapV3s (historical) 🔥. *Asynchronous*
 *
 * Gets swapv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
 * \param pool Pool swap occured within.
 * \param token0 Reference to token0 as stored in pair contract.
 * \param token1 Reference to token1 as stored in pair contract.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwapV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetSwaps (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.SwapV3DTO>, Error, void* )
	, void* userData);


/*! \brief TickDayDataV3s (historical) 🔥. *Synchronous*
 *
 * Gets tickdaydatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickDayDataV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TickDayDataV3s (historical) 🔥. *Asynchronous*
 *
 * Gets tickdaydatav3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickDayDataV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief TickV3s (historical) 🔥. *Synchronous*
 *
 * Gets tickv3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);

/*! \brief TickV3s (historical) 🔥. *Asynchronous*
 *
 * Gets tickv3s.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pool 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTickV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (current). *Synchronous*
 *
 * Gets ticks.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (current). *Asynchronous*
 *
 * Gets ticks.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicks (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickV3DTO>, Error, void* )
	, void* userData);


/*! \brief TicksDayData (current). *Synchronous*
 *
 * Gets ticks day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicksDayData (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TicksDayData (current). *Asynchronous*
 *
 * Gets ticks day data.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTicksDayData (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3.TickDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief TokenHourDataV3s (historical) 🔥. *Synchronous*
 *
 * Gets tokenhourdatav3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourDataV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TokenHourDataV3s (historical) 🔥. *Asynchronous*
 *
 * Gets tokenhourdatav3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourDataV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3DayDatas (historical) 🔥. *Synchronous*
 *
 * Gets tokenv3daydatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3DayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenV3DayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets tokenv3daydatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3DayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3s (historical) 🔥. *Synchronous*
 *
 * Gets tokenv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address.
 * \param symbol Token symbol.
 * \param name Token name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);

/*! \brief TokenV3s (historical) 🔥. *Asynchronous*
 *
 * Gets tokenv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address.
 * \param symbol Token symbol.
 * \param name Token name.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current) 🔥. *Synchronous*
 *
 * Gets tokens.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current) 🔥. *Asynchronous*
 *
 * Gets tokens.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokens (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DTO>, Error, void* )
	, void* userData);


/*! \brief TokensDayData (current). *Synchronous*
 *
 * Gets tokens day data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensDayData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokensDayData (current). *Asynchronous*
 *
 * Gets tokens day data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensDayData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokensHourData (current). *Synchronous*
 *
 * Gets tokens hour data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensHourData (current)Sync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief TokensHourData (current). *Asynchronous*
 *
 * Gets tokens hour data.
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokensHourData (current)Async(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3.TokenHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief TransactionV3s (historical) 🔥. *Synchronous*
 *
 * Gets transactionv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactionV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionV3DTO>, Error, void* )
	, void* userData);

/*! \brief TransactionV3s (historical) 🔥. *Asynchronous*
 *
 * Gets transactionv3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactionV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionV3DTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayDataV3s (historical) 🔥. *Synchronous*
 *
 * Gets uniswapdaydatav3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayDataV3s (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayDataV3s (historical) 🔥. *Asynchronous*
 *
 * Gets uniswapdaydatav3s.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayDataV3s (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataV3DTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* UniswapV3Manager_H_ */
