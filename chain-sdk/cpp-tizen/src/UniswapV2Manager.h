#ifndef _UniswapV2Manager_H_
#define _UniswapV2Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "PairV2DTO.h"
#include "SwapV2DTO.h"
#include "TokenV2DTO.h"
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

/*! \brief GetPools. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2PoolsCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<PairV2DTO>, Error, void* )
	, void* userData);

/*! \brief GetPools. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2PoolsCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<PairV2DTO>, Error, void* )
	, void* userData);


/*! \brief GetSwaps. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2SwapsCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<SwapV2DTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2SwapsCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<SwapV2DTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2TokensCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<TokenV2DTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv2TokensCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<TokenV2DTO>, Error, void* )
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
