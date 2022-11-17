#ifndef _SushiswapManager_H_
#define _SushiswapManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Sushiswap.BundleDTO.h"
#include "Sushiswap.BurnDTO.h"
#include "Sushiswap.DayDataDTO.h"
#include "Sushiswap.FactoryDTO.h"
#include "Sushiswap.HourDataDTO.h"
#include "Sushiswap.LiquidityPositionDTO.h"
#include "Sushiswap.LiquidityPositionSnapshotDTO.h"
#include "Sushiswap.MintDTO.h"
#include "Sushiswap.PairDTO.h"
#include "Sushiswap.PairDayDataDTO.h"
#include "Sushiswap.PairHourDataDTO.h"
#include "Sushiswap.SwapDTO.h"
#include "Sushiswap.TokenDTO.h"
#include "Sushiswap.TokenDayDataDTO.h"
#include "Sushiswap.TransactionDTO.h"
#include "Sushiswap.UserDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Sushiswap Sushiswap
 * \ingroup Operations
 *  @{
 */
class SushiswapManager {
public:
	SushiswapManager();
	virtual ~SushiswapManager();

/*! \brief Bundles (current). *Synchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapBundles (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (current). *Asynchronous*
 *
 * Gets bundles.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapBundles (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (current). *Synchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapBurns (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (current). *Asynchronous*
 *
 * Gets burns.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapBurns (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief DayDatas (current). *Synchronous*
 *
 * Gets dayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief DayDatas (current). *Asynchronous*
 *
 * Gets dayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Factorys (current). *Synchronous*
 *
 * Gets factorys.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapFactorys (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief Factorys (current). *Asynchronous*
 *
 * Gets factorys.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapFactorys (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical) 🔥. *Synchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Hardcoded to '1'.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical) 🔥. *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Hardcoded to '1'.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Burns (historical) 🔥. *Synchronous*
 *
 * Gets burns.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief Burns (historical) 🔥. *Asynchronous*
 *
 * Gets burns.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief DayDatas (historical) 🔥. *Synchronous*
 *
 * Gets dayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Unix timestamp for start of day / 86400 giving a unique day index.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief DayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets dayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Unix timestamp for start of day / 86400 giving a unique day index.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
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
bool sushiswapGetFactorys (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
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
bool sushiswapGetFactorys (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief HourDatas (historical) 🔥. *Synchronous*
 *
 * Gets hourDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Start of hour timestamp.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);

/*! \brief HourDatas (historical) 🔥. *Asynchronous*
 *
 * Gets hourDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Start of hour timestamp.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshots (historical) 🔥. *Synchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param user 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshots (historical) 🔥. *Asynchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param user 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositions (historical) 🔥. *Synchronous*
 *
 * Gets liquidityPositions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param user 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositions (historical) 🔥. *Asynchronous*
 *
 * Gets liquidityPositions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param user 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string user, std::string pair, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (historical) 🔥. *Synchronous*
 *
 * Gets mints.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (historical) 🔥. *Asynchronous*
 *
 * Gets mints.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PairDayDatas (historical) 🔥. *Synchronous*
 *
 * Gets pairDayDatas.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param token0 
 * \param token1 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, std::string token0, std::string token1, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairDayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets pairDayDatas.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param token0 
 * \param token1 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, std::string token0, std::string token1, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PairHourDatas (historical) 🔥. *Synchronous*
 *
 * Gets pairHourDatas.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairHourDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairHourDatas (historical) 🔥. *Asynchronous*
 *
 * Gets pairHourDatas.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param pair 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairHourDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pairs (historical) 🔥. *Synchronous*
 *
 * Gets pairs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param name 
 * \param token0 
 * \param token1 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, std::string token0, std::string token1, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pairs (historical) 🔥. *Asynchronous*
 *
 * Gets pairs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param id 
 * \param name 
 * \param token0 
 * \param token1 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string name, std::string token0, std::string token1, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in Transaction swap array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Transaction hash plus index in Transaction swap array.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string pair, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayDatas (historical) 🔥. *Synchronous*
 *
 * Gets tokenDayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, day start timestamp in unix / 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDayDatas (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayDatas (historical) 🔥. *Asynchronous*
 *
 * Gets tokenDayDatas.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Identifier, day start timestamp in unix / 86400.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDayDatas (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
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
bool sushiswapGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
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
bool sushiswapGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, std::string symbol, std::string name, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (historical) 🔥. *Synchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Ethereum transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (historical) 🔥. *Asynchronous*
 *
 * Gets transactions.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id Ethereum transaction hash.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief Users (historical) 🔥. *Synchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (historical) 🔥. *Asynchronous*
 *
 * Gets users.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe.
 * \param id User address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string id, 
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
	, void* userData);


/*! \brief HourDatas (current). *Synchronous*
 *
 * Gets hourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);

/*! \brief HourDatas (current). *Asynchronous*
 *
 * Gets hourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshots (current). *Synchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapLiquidityPositionSnapshots (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshots (current). *Asynchronous*
 *
 * Gets liquidityPositionSnapshots.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapLiquidityPositionSnapshots (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositions (current). *Synchronous*
 *
 * Gets liquidityPositions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapLiquidityPositions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositions (current). *Asynchronous*
 *
 * Gets liquidityPositions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapLiquidityPositions (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief Mints (current). *Synchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapMints (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);

/*! \brief Mints (current). *Asynchronous*
 *
 * Gets mints.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapMints (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PairDayDatas (current). *Synchronous*
 *
 * Gets pairDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairDayDatas (current). *Asynchronous*
 *
 * Gets pairDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PairHourDatas (current). *Synchronous*
 *
 * Gets pairHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairHourDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairHourDatas (current). *Asynchronous*
 *
 * Gets pairHourDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairHourDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pairs (current). *Synchronous*
 *
 * Gets pairs.
 * \param id Pair contract address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairs (current)Sync(char * accessToken,
	std::string id, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pairs (current). *Asynchronous*
 *
 * Gets pairs.
 * \param id Pair contract address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapPairs (current)Async(char * accessToken,
	std::string id, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current). *Synchronous*
 *
 * Gets swaps.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapSwaps (current)Sync(char * accessToken,
	std::string pair, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current). *Asynchronous*
 *
 * Gets swaps.
 * \param pair Reference to pair.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapSwaps (current)Async(char * accessToken,
	std::string pair, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayDatas (current). *Synchronous*
 *
 * Gets tokenDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTokenDayDatas (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayDatas (current). *Asynchronous*
 *
 * Gets tokenDayDatas.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTokenDayDatas (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (current). *Synchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTransactions (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (current). *Asynchronous*
 *
 * Gets transactions.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapTransactions (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief Users (current). *Synchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapUsers (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
	, void* userData);

/*! \brief Users (current). *Asynchronous*
 *
 * Gets users.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapUsers (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* SushiswapManager_H_ */
