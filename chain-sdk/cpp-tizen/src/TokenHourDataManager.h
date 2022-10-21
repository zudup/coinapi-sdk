#ifndef _TokenHourDataManager_H_
#define _TokenHourDataManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup TokenHourData TokenHourData
 * \ingroup Operations
 *  @{
 */
class TokenHourDataManager {
public:
	TokenHourDataManager();
	virtual ~TokenHourDataManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param chainId  *Required*
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetSync(char * accessToken,
	std::string chainId, long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param chainId  *Required*
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsUniswapv3TokenHourDataHistoricalGetAsync(char * accessToken,
	std::string chainId, long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* TokenHourDataManager_H_ */
