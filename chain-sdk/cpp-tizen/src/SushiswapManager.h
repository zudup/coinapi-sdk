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

/*! \brief GetBundles (historical). *Synchronous*
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
bool sushiswapGetBundles (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);

/*! \brief GetBundles (historical). *Asynchronous*
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
bool sushiswapGetBundles (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Sushiswap.BundleDTO>, Error, void* )
	, void* userData);


/*! \brief GetBurns (historical). *Synchronous*
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

/*! \brief GetBurns (historical). *Asynchronous*
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


/*! \brief GetDayData (historical). *Synchronous*
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

/*! \brief GetDayData (historical). *Asynchronous*
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


/*! \brief GetFactory (historical). *Synchronous*
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

/*! \brief GetFactory (historical). *Asynchronous*
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


/*! \brief GetHourData (historical). *Synchronous*
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

/*! \brief GetHourData (historical). *Asynchronous*
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


/*! \brief GetLiquidityPosition (historical). *Synchronous*
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

/*! \brief GetLiquidityPosition (historical). *Asynchronous*
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


/*! \brief GetLiquidityPositionSnapshot (historical). *Synchronous*
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

/*! \brief GetLiquidityPositionSnapshot (historical). *Asynchronous*
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


/*! \brief GetMints (historical). *Synchronous*
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

/*! \brief GetMints (historical). *Asynchronous*
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


/*! \brief GetPools (current). *Synchronous*
 *
 * Gets pools.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief GetPools (current). *Asynchronous*
 *
 * Gets pools.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief GetPools (historical). *Synchronous*
 *
 * Gets list of pools for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);

/*! \brief GetPools (historical). *Asynchronous*
 *
 * Gets list of pools for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.PairDTO>, Error, void* )
	, void* userData);


/*! \brief GetPoolsDayData (historical). *Synchronous*
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

/*! \brief GetPoolsDayData (historical). *Asynchronous*
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


/*! \brief GetPoolsHourData (historical). *Synchronous*
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

/*! \brief GetPoolsHourData (historical). *Asynchronous*
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


/*! \brief GetSwaps (current). *Synchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps (current). *Asynchronous*
 *
 * Gets swaps.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief GetSwaps (historical). *Synchronous*
 *
 * Gets list of swaps for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps (historical). *Asynchronous*
 *
 * Gets list of swaps for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetSwaps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Sushiswap.SwapDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens (current). *Synchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (current)Sync(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens (current). *Asynchronous*
 *
 * Gets tokens.
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (current)Async(char * accessToken,
	
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens (historical). *Synchronous*
 *
 * Gets list of tokens for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens (historical). *Asynchronous*
 *
 * Gets list of tokens for given filters.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool sushiswapGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Sushiswap.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokensDayData (historical). *Synchronous*
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

/*! \brief GetTokensDayData (historical). *Asynchronous*
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


/*! \brief GetTransactions (historical). *Synchronous*
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

/*! \brief GetTransactions (historical). *Asynchronous*
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


/*! \brief GetUsers (historical). *Synchronous*
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

/*! \brief GetUsers (historical). *Asynchronous*
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
