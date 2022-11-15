#ifndef _SushiswapManager_H_
#define _SushiswapManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Curve.ExchangeDTO.h"
#include "Dex.TradeDTO.h"
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

/*! \brief Exchanges (current) 🔥. *Synchronous*
 *
 * Gets exchanges.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);

/*! \brief Exchanges (current) 🔥. *Asynchronous*
 *
 * Gets exchanges.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (current)Async(char * accessToken,
	
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (current) 🔥. *Synchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTrades (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (current) 🔥. *Asynchronous*
 *
 * Gets trades.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dexGetTrades (current)Async(char * accessToken,
	
	void(* handler)(std::list<Dex.TradeDTO>, Error, void* )
	, void* userData);


/*! \brief BundleDTOs (historical) 🔥. *Synchronous*
 *
 * Gets BundleDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundleDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief BundleDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets BundleDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundleDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief Bundles (historical). *Synchronous*
 *
 * Gets bundles.
 * \param startBlock AAAAAAAAAA
 * \param endBlock BBBBBBBBBBBB
 * \param startDate CCCCCCCCC
 * \param endDate DDDDDDDDDDD
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief Bundles (historical). *Asynchronous*
 *
 * Gets bundles.
 * \param startBlock AAAAAAAAAA
 * \param endBlock BBBBBBBBBBBB
 * \param startDate CCCCCCCCC
 * \param endDate DDDDDDDDDDD
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief BurnDTOs (historical) 🔥. *Synchronous*
 *
 * Gets BurnDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBurnDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);

/*! \brief BurnDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets BurnDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetBurnDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
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
bool sushiswapGetBurns (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
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
bool sushiswapGetBurns (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.BurnDTO>, Error, void* )
	, void* userData);


/*! \brief DayData (historical). *Synchronous*
 *
 * Gets day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief DayData (historical). *Asynchronous*
 *
 * Gets day data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief DayDataDTOs (historical) 🔥. *Synchronous*
 *
 * Gets DayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayDataDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief DayDataDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets DayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetDayDataDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.DayDataDTO>, Error, void* )
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
bool sushiswapGetFactory (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
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
bool sushiswapGetFactory (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief FactoryDTOs (historical) 🔥. *Synchronous*
 *
 * Gets FactoryDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetFactoryDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);

/*! \brief FactoryDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets FactoryDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetFactoryDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.FactoryDTO>, Error, void* )
	, void* userData);


/*! \brief HourData (historical). *Synchronous*
 *
 * Gets hour data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);

/*! \brief HourData (historical). *Asynchronous*
 *
 * Gets hour data.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);


/*! \brief HourDataDTOs (historical) 🔥. *Synchronous*
 *
 * Gets HourDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourDataDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);

/*! \brief HourDataDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets HourDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetHourDataDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.HourDataDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPosition (historical). *Synchronous*
 *
 * Gets liquidity position.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPosition (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPosition (historical). *Asynchronous*
 *
 * Gets liquidity position.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPosition (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionDTOs (historical) 🔥. *Synchronous*
 *
 * Gets LiquidityPositionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets LiquidityPositionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshot (historical). *Synchronous*
 *
 * Gets liquidity position snapshot.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshot (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshot (historical). *Asynchronous*
 *
 * Gets liquidity position snapshot.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshot (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief LiquidityPositionSnapshotDTOs (historical) 🔥. *Synchronous*
 *
 * Gets LiquidityPositionSnapshotDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshotDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);

/*! \brief LiquidityPositionSnapshotDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets LiquidityPositionSnapshotDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetLiquidityPositionSnapshotDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.LiquidityPositionSnapshotDTO>, Error, void* )
	, void* userData);


/*! \brief MintDTOs (historical) 🔥. *Synchronous*
 *
 * Gets MintDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetMintDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);

/*! \brief MintDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets MintDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetMintDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
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
bool sushiswapGetMints (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
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
bool sushiswapGetMints (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.MintDTO>, Error, void* )
	, void* userData);


/*! \brief PairDTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief PairDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief PairDayDataDTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairDayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDayDataDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairDayDataDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairDayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairDayDataDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief PairHourDataDTOs (historical) 🔥. *Synchronous*
 *
 * Gets PairHourDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairHourDataDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);

/*! \brief PairHourDataDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PairHourDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPairHourDataDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (current) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (current) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical) 🔥. *Synchronous*
 *
 * Gets list of pools for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param poolId The pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief Pools (historical) 🔥. *Asynchronous*
 *
 * Gets list of pools for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param poolId The pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
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
bool sushiswapGetPoolsDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
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
bool sushiswapGetPoolsDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDayDataDTO>, Error, void* )
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
bool sushiswapGetPoolsHourData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
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
bool sushiswapGetPoolsHourData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairHourDataDTO>, Error, void* )
	, void* userData);


/*! \brief SwapDTOs (historical) 🔥. *Synchronous*
 *
 * Gets SwapDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwapDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief SwapDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets SwapDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwapDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (current) 🔥. *Synchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (current) 🔥. *Asynchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief Swaps (historical) 🔥. *Synchronous*
 *
 * Gets list of swaps for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param poolId The pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief Swaps (historical) 🔥. *Asynchronous*
 *
 * Gets list of swaps for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param poolId The pool address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDTOs (historical) 🔥. *Synchronous*
 *
 * Gets TokenDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TokenDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief TokenDayDataDTOs (historical) 🔥. *Synchronous*
 *
 * Gets TokenDayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDayDataDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);

/*! \brief TokenDayDataDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TokenDayDataDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokenDayDataDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (current) 🔥. *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (current) 🔥. *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief Tokens (historical) 🔥. *Synchronous*
 *
 * Gets list of tokens for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param tokenId The token address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief Tokens (historical) 🔥. *Asynchronous*
 *
 * Gets list of tokens for given filters.
 * \param startBlock The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
 * \param endBlock The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
 * \param startDate The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
 * \param endDate The end date of timeframe
 * \param tokenId The token address.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
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
bool sushiswapGetTokensDayData (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
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
bool sushiswapGetTokensDayData (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDayDataDTO>, Error, void* )
	, void* userData);


/*! \brief TransactionDTOs (historical) 🔥. *Synchronous*
 *
 * Gets TransactionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTransactionDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);

/*! \brief TransactionDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TransactionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTransactionDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
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
bool sushiswapGetTransactions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
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
bool sushiswapGetTransactions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.TransactionDTO>, Error, void* )
	, void* userData);


/*! \brief UserDTOs (historical) 🔥. *Synchronous*
 *
 * Gets UserDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetUserDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
	, void* userData);

/*! \brief UserDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets UserDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetUserDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
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
bool sushiswapGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.UserDTO>, Error, void* )
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
bool sushiswapGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
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
