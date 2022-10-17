#ifndef _SushiswapManager_H_
#define _SushiswapManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "PairDTO.h"
#include "SwapDTO.h"
#include "TokenDTO.h"
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

/*! \brief GetPools. *Synchronous*
 *
 * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapPoolsCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<PairDTO>, Error, void* )
	, void* userData);

/*! \brief GetPools. *Asynchronous*
 *
 * Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapPoolsCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<PairDTO>, Error, void* )
	, void* userData);


/*! \brief GetSwaps. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapSwapsCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<SwapDTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapSwapsCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<SwapDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens. *Synchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapTokensCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<TokenDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens. *Asynchronous*
 *
 * 
 * \param chainId Chain id *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsSushiswapTokensCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<TokenDTO>, Error, void* )
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
