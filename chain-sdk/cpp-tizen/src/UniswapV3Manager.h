#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV3.BundleDTO.h"
#include "UniswapV3.BurnDTO.h"
#include "UniswapV3.FactoryDTO.h"
#include "UniswapV3.MintDTO.h"
#include "UniswapV3.PoolDTO.h"
#include "UniswapV3.PoolDayDataDTO.h"
#include "UniswapV3.PoolHourDataDTO.h"
#include "UniswapV3.PositionDTO.h"
#include "UniswapV3.PositionSnapshotDTO.h"
#include "UniswapV3.SwapDTO.h"
#include "UniswapV3.TickDTO.h"
#include "UniswapV3.TickDayDataDTO.h"
#include "UniswapV3.TokenDTO.h"
#include "UniswapV3.TokenHourDataDTO.h"
#include "UniswapV3.TokenV3DayDataDTO.h"
#include "UniswapV3.TransactionDTO.h"
#include "UniswapV3.UniswapDayDataDTO.h"
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

/*! \brief Bundles (current). *Synchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Bundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Bundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Burns (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Burns (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief Factorys (current). *Synchronous*
 *
 * Gets factorys.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Factorys (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief Factorys (current). *Asynchronous*
 *
 * Gets factorys.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Factorys (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical) 🔥. *Synchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical) 🔥. *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (historical) 🔥. *Synchronous*
 *
 * Gets burns.
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
bool uniswapV3GetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (historical) 🔥. *Asynchronous*
 *
 * Gets burns.
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
bool uniswapV3GetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief Factorys (historical) 🔥. *Synchronous*
 *
 * Gets factorys.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactorys (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief Factorys (historical) 🔥. *Asynchronous*
 *
 * Gets factorys.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Factory address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetFactorys (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (historical) 🔥. *Synchronous*
 *
 * Gets mints.
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
bool uniswapV3GetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (historical) 🔥. *Asynchronous*
 *
 * Gets mints.
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
bool uniswapV3GetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PoolDayDatas (historical) 🔥. *Synchronous*
 *
 * Gets poolDayDatas.
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
bool uniswapV3GetPoolDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolDayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets poolDayDatas.
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
bool uniswapV3GetPoolDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PoolHourDatas (historical) 🔥. *Synchronous*
 *
 * Gets poolHourDatas.
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
bool uniswapV3GetPoolHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolHourDatas (historical) 🔥. *Asynchronous*
 *
 * Gets poolHourDatas.
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
bool uniswapV3GetPoolHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical) 🔥. *Synchronous*
 *
 * Gets pools.
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
bool uniswapV3GetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (historical) 🔥. *Asynchronous*
 *
 * Gets pools.
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
bool uniswapV3GetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief PositionSnapshots (historical) 🔥. *Synchronous*
 *
 * Gets positionSnapshots.
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
bool uniswapV3GetPositionSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief PositionSnapshots (historical) 🔥. *Asynchronous*
 *
 * Gets positionSnapshots.
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
bool uniswapV3GetPositionSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Positions (historical) 🔥. *Synchronous*
 *
 * Gets positions.
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
bool uniswapV3GetPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);

/*! \brief Positions (historical) 🔥. *Asynchronous*
 *
 * Gets positions.
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
bool uniswapV3GetPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical) 🔥. *Synchronous*
 *
 * Gets swaps.
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
bool uniswapV3GetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical) 🔥. *Asynchronous*
 *
 * Gets swaps.
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
bool uniswapV3GetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, std::string token0, std::string token1, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TickDayDatas (historical) 🔥. *Synchronous*
 *
 * Gets tickDayDatas.
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
bool uniswapV3GetTickDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TickDayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets tickDayDatas.
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
bool uniswapV3GetTickDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (historical) 🔥. *Synchronous*
 *
 * Gets ticks.
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
bool uniswapV3GetTicks (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (historical) 🔥. *Asynchronous*
 *
 * Gets ticks.
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
bool uniswapV3GetTicks (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pool, 
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);


/*! \brief TokenHourDatas (historical) 🔥. *Synchronous*
 *
 * Gets tokenHourDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenHourDatas (historical) 🔥. *Asynchronous*
 *
 * Gets tokenHourDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Token address concatendated with date.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTokenHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3DayDatas (historical) 🔥. *Synchronous*
 *
 * Gets tokenV3DayDatas.
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
 * Gets tokenV3DayDatas.
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


/*! \brief Tokens (historical) 🔥. *Synchronous*
 *
 * Gets tokens.
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
bool uniswapV3GetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical) 🔥. *Asynchronous*
 *
 * Gets tokens.
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
bool uniswapV3GetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (historical) 🔥. *Synchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (historical) 🔥. *Asynchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayDatas (historical) 🔥. *Synchronous*
 *
 * Gets uniswapDayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets uniswapDayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Timestamp rounded to current day by dividing by 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3GetUniswapDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Mints (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Mints (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PoolDayDatas (current). *Synchronous*
 *
 * Gets poolDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolDayDatas (current). *Asynchronous*
 *
 * Gets poolDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PoolHourDatas (current). *Synchronous*
 *
 * Gets poolHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PoolHourDatas (current). *Asynchronous*
 *
 * Gets poolHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PoolHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PoolHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current). *Synchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Pools (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current). *Asynchronous*
 *
 * Gets pools.
 * \param id Pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Pools (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<UniswapV3.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief PositionSnapshots (current). *Synchronous*
 *
 * Gets positionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PositionSnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief PositionSnapshots (current). *Asynchronous*
 *
 * Gets positionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3PositionSnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief Positions (current). *Synchronous*
 *
 * Gets positions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Positions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);

/*! \brief Positions (current). *Asynchronous*
 *
 * Gets positions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Positions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.PositionDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current). *Synchronous*
 *
 * Gets swaps.
 * \param pool Pool swap occured within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Swaps (current)Sync(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current). *Asynchronous*
 *
 * Gets swaps.
 * \param pool Pool swap occured within.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Swaps (current)Async(char * accessToken,
	std::string pool, 
	void(* handler)(std::list<UniswapV3.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TickDayDatas (current). *Synchronous*
 *
 * Gets tickDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TickDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TickDayDatas (current). *Asynchronous*
 *
 * Gets tickDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TickDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Ticks (current). *Synchronous*
 *
 * Gets ticks.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Ticks (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);

/*! \brief Ticks (current). *Asynchronous*
 *
 * Gets ticks.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Ticks (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TickDTO>, Error, void* )
	, void* userData);


/*! \brief TokenHourDatas (current). *Synchronous*
 *
 * Gets tokenHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenHourDatas (current). *Asynchronous*
 *
 * Gets tokenHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief TokenV3DayDatas (current). *Synchronous*
 *
 * Gets tokenV3DayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenV3DayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenV3DayDatas (current). *Asynchronous*
 *
 * Gets tokenV3DayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3TokenV3DayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Tokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Tokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (current). *Synchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Transactions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (current). *Asynchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3Transactions (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayDatas (current). *Synchronous*
 *
 * Gets uniswapDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3UniswapDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayDatas (current). *Asynchronous*
 *
 * Gets uniswapDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV3UniswapDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV3.UniswapDayDataDTO>, Error, void* )
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
