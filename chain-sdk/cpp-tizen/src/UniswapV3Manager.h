#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "BundleV3DTO.h"
#include "BurnV3DTO.h"
#include "FactoryV3DTO.h"
#include "MintV3DTO.h"
#include "PoolDayDataV3DTO.h"
#include "PoolHourDataV3DTO.h"
#include "PoolV3DTO.h"
#include "PositionSnapshotV3DTO.h"
#include "PositionV3DTO.h"
#include "SwapV3DTO.h"
#include "TickDayDataV3DTO.h"
#include "TickV3DTO.h"
#include "TokenHourDataV3DTO.h"
#include "TokenV3DTO.h"
#include "TokenV3DayDataDTO.h"
#include "UniswapDayDataV3DTO.h"
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

/*! \brief GetBundles. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3BundleCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetBundles. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3BundleCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<BundleV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetBurns. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3BurnsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetBurns. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3BurnsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<BurnV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetFactory. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3FactoryCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetFactory. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3FactoryCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<FactoryV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetMints. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3MintsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetMints. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3MintsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<MintV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPools. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPools. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPoolsDayData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPoolsDayData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPoolsHourData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPoolsHourData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PoolsHourDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PoolHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPositionSnapshot. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPositionSnapshot. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionSnapshotV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPositions. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PositionsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPositions. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3PositionsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<PositionV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetSwaps. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3SwapsCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3SwapsCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<SwapV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTicks. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TicksCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTicks. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TicksCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTicksDayData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TicksDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTicksDayData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TicksDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterPoolId, 
	void(* handler)(std::list<TickDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTokensDayData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensDayDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokensDayData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokensHourData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensHourDataCurrentGetSync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTokensHourData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokensHourDataCurrentGetAsync(char * accessToken,
	std::string chainId, std::string filterTokenId, 
	void(* handler)(std::list<TokenHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetUniswapDayData. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetUniswapDayData. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3UniswapDayDataCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapDayDataV3DTO>, Error, void* )
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
