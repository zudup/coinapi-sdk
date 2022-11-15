#ifndef _UniswapV2Manager_H_
#define _UniswapV2Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV2.BundleV2DTO.h"
#include "UniswapV2.BurnV2DTO.h"
#include "UniswapV2.LiquidityPositionSnapshotV2DTO.h"
#include "UniswapV2.LiquidityPositionV2DTO.h"
#include "UniswapV2.MintV2DTO.h"
#include "UniswapV2.PairDayDataV2DTO.h"
#include "UniswapV2.PairHourDataV2DTO.h"
#include "UniswapV2.PairV2DTO.h"
#include "UniswapV2.SwapV2DTO.h"
#include "UniswapV2.TokenDayDataV2DTO.h"
#include "UniswapV2.TokenV2DTO.h"
#include "UniswapV2.TransactionV2DTO.h"
#include "UniswapV2.UniswapDayDataV2DTO.h"
#include "UniswapV2.UniswapFactoryV2DTO.h"
#include "UniswapV2.UserV2DTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup UniswapV2 UniswapV2
 * \ingroup Operations
 *  @{
 */
class UniswapV2Manager {
public:
	UniswapV2Manager();
	virtual ~UniswapV2Manager();

/*! \brief BundleV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets BundleV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundleV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BundleV2DTO>, Error, void* )
	, void* userData);

/*! \brief BundleV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets BundleV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundleV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BundleV2DTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical). *Synchronous*
 *
 * Gets bundles.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.BundleV2DTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical). *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.BundleV2DTO>, Error, void* )
	, void* userData);


/*! \brief BurnV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets BurnV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurnV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BurnV2DTO>, Error, void* )
	, void* userData);

/*! \brief BurnV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets BurnV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurnV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BurnV2DTO>, Error, void* )
	, void* userData);


/*! \brief Burns (historical). *Synchronous*
 *
 * Gets burns.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BurnV2DTO>, Error, void* )
	, void* userData);

/*! \brief Burns (historical). *Asynchronous*
 *
 * Gets burns.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.BurnV2DTO>, Error, void* )
	, void* userData);


/*! \brief DayData (historical). *Synchronous*
 *
 * Gets uniswapv2 day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief DayData (historical). *Asynchronous*
 *
 * Gets uniswapv2 day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief Factory (historical). *Synchronous*
 *
 * Gets factory.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetFactory (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryV2DTO>, Error, void* )
	, void* userData);

/*! \brief Factory (historical). *Asynchronous*
 *
 * Gets factory.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetFactory (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryV2DTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshotV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets LiquidityPositionSnapshotV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionSnapshotV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotV2DTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshotV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets LiquidityPositionSnapshotV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionSnapshotV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotV2DTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets LiquidityPositionV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionV2DTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets LiquidityPositionV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionV2DTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositions (historical). *Synchronous*
 *
 * Gets liquidity positions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionV2DTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositions (historical). *Asynchronous*
 *
 * Gets liquidity positions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionV2DTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionsSnapshots (historical). *Synchronous*
 *
 * Gets liquidity positions snapshots.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionsSnapshots (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotV2DTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionsSnapshots (historical). *Asynchronous*
 *
 * Gets liquidity positions snapshots.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetLiquidityPositionsSnapshots (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.LiquidityPositionSnapshotV2DTO>, Error, void* )
	, void* userData);


/*! \brief MintV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets MintV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMintV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.MintV2DTO>, Error, void* )
	, void* userData);

/*! \brief MintV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets MintV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMintV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.MintV2DTO>, Error, void* )
	, void* userData);


/*! \brief Mints (historical). *Synchronous*
 *
 * Gets mints.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.MintV2DTO>, Error, void* )
	, void* userData);

/*! \brief Mints (historical). *Asynchronous*
 *
 * Gets mints.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.MintV2DTO>, Error, void* )
	, void* userData);


/*! \brief PairDayDataV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairDayDataV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief PairDayDataV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairDayDataV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief PairHourDataV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairHourDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairHourDataV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairHourDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief PairHourDataV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairHourDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairHourDataV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairHourDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief PairV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);

/*! \brief PairV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPairV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPools (current)Sync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param filterPoolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPools (current)Async(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);

/*! \brief Pools (historical) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairV2DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsDayData (historical). *Synchronous*
 *
 * Gets pools day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPoolsDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsDayData (historical). *Asynchronous*
 *
 * Gets pools day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPoolsDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief PoolsHourData (historical). *Synchronous*
 *
 * Gets pools tracked each our.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPoolsHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairHourDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief PoolsHourData (historical). *Asynchronous*
 *
 * Gets pools tracked each our.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetPoolsHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.PairHourDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief SwapV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets SwapV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwapV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);

/*! \brief SwapV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets SwapV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwapV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.SwapV2DTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayDataV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets TokenDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenDayDataV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TokenDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayDataV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TokenDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenDayDataV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TokenDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief TokenV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets TokenV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);

/*! \brief TokenV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TokenV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokenV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current) 🔥. *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current) 🔥. *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (historical) 🔥. *Synchronous*
 *
 * Gets tokens.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical) 🔥. *Asynchronous*
 *
 * Gets tokens.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<UniswapV2.TokenV2DTO>, Error, void* )
	, void* userData);


/*! \brief TokensDayData (historical). *Synchronous*
 *
 * Gets tokens day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokensDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<UniswapV2.TokenDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief TokensDayData (historical). *Asynchronous*
 *
 * Gets tokens day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTokensDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<UniswapV2.TokenDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief TransactionV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets TransactionV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactionV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TransactionV2DTO>, Error, void* )
	, void* userData);

/*! \brief TransactionV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TransactionV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactionV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.TransactionV2DTO>, Error, void* )
	, void* userData);


/*! \brief Transactions (historical). *Synchronous*
 *
 * Gets transactions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.TransactionV2DTO>, Error, void* )
	, void* userData);

/*! \brief Transactions (historical). *Asynchronous*
 *
 * Gets transactions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.TransactionV2DTO>, Error, void* )
	, void* userData);


/*! \brief UniswapDayDataV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets UniswapDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapDayDataV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataV2DTO>, Error, void* )
	, void* userData);

/*! \brief UniswapDayDataV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets UniswapDayDataV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapDayDataV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UniswapDayDataV2DTO>, Error, void* )
	, void* userData);


/*! \brief UniswapFactoryV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets UniswapFactoryV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapFactoryV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryV2DTO>, Error, void* )
	, void* userData);

/*! \brief UniswapFactoryV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets UniswapFactoryV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUniswapFactoryV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UniswapFactoryV2DTO>, Error, void* )
	, void* userData);


/*! \brief UserV2DTOs (historical) 🔥. *Synchronous*
 *
 * Gets UserV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUserV2DTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UserV2DTO>, Error, void* )
	, void* userData);

/*! \brief UserV2DTOs (historical) 🔥. *Asynchronous*
 *
 * Gets UserV2DTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUserV2DTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<UniswapV2.UserV2DTO>, Error, void* )
	, void* userData);


/*! \brief Users (historical). *Synchronous*
 *
 * Gets users.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UserV2DTO>, Error, void* )
	, void* userData);

/*! \brief Users (historical). *Asynchronous*
 *
 * Gets users.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool uniswapV2GetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<UniswapV2.UserV2DTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* UniswapV2Manager_H_ */
