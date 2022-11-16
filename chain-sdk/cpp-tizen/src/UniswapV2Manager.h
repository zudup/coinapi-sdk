#ifndef _UniswapV2Manager_H_
#define _UniswapV2Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV2.PairV2DTO.h"
#include "UniswapV2.SwapV2DTO.h"
#include "UniswapV2.TokenV2DTO.h"
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



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* UniswapV2Manager_H_ */
