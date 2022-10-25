#ifndef _GaugeLiquidityManager_H_
#define _GaugeLiquidityManager_H_

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
/** \addtogroup GaugeLiquidity GaugeLiquidity
 * \ingroup Operations
 *  @{
 */
class GaugeLiquidityManager {
public:
	GaugeLiquidityManager();
	virtual ~GaugeLiquidityManager();

/*! \brief . *Synchronous*
 *
 * 
 * \param chainId  *Required*
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsCurveGaugeLiquidityHistoricalGetSync(char * accessToken,
	std::string chainId, long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param chainId  *Required*
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool chainsChainIdDappsCurveGaugeLiquidityHistoricalGetAsync(char * accessToken,
	std::string chainId, long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* GaugeLiquidityManager_H_ */
