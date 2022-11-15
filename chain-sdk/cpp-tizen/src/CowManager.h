#ifndef _CowManager_H_
#define _CowManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Cow.OrderDTO.h"
#include "Cow.SettlementDTO.h"
#include "Cow.TokenDTO.h"
#include "Cow.TradeDTO.h"
#include "Cow.UserDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Cow Cow
 * \ingroup Operations
 *  @{
 */
class CowManager {
public:
	CowManager();
	virtual ~CowManager();

/*! \brief OrderDTOs (historical) 🔥. *Synchronous*
 *
 * Gets OrderDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetOrderDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.OrderDTO>, Error, void* )
	, void* userData);

/*! \brief OrderDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets OrderDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetOrderDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.OrderDTO>, Error, void* )
	, void* userData);


/*! \brief Orders (historical). *Synchronous*
 *
 * Gets orders.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetOrders (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.OrderDTO>, Error, void* )
	, void* userData);

/*! \brief Orders (historical). *Asynchronous*
 *
 * Gets orders.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetOrders (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.OrderDTO>, Error, void* )
	, void* userData);


/*! \brief SettlementDTOs (historical) 🔥. *Synchronous*
 *
 * Gets SettlementDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetSettlementDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.SettlementDTO>, Error, void* )
	, void* userData);

/*! \brief SettlementDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets SettlementDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetSettlementDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.SettlementDTO>, Error, void* )
	, void* userData);


/*! \brief Settlements (historical). *Synchronous*
 *
 * Gets settlements.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetSettlements (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.SettlementDTO>, Error, void* )
	, void* userData);

/*! \brief Settlements (historical). *Asynchronous*
 *
 * Gets settlements.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetSettlements (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.SettlementDTO>, Error, void* )
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
bool cowGetTokenDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.TokenDTO>, Error, void* )
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
bool cowGetTokenDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.TokenDTO>, Error, void* )
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
bool cowGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Cow.TokenDTO>, Error, void* )
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
bool cowGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Cow.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief TradeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets TradeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetTradeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief TradeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TradeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetTradeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.TradeDTO>, Error, void* )
	, void* userData);


/*! \brief Trades (historical) 🔥. *Synchronous*
 *
 * Gets trades.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetTrades (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.TradeDTO>, Error, void* )
	, void* userData);

/*! \brief Trades (historical) 🔥. *Asynchronous*
 *
 * Gets trades.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool cowGetTrades (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.TradeDTO>, Error, void* )
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
bool cowGetUserDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.UserDTO>, Error, void* )
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
bool cowGetUserDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Cow.UserDTO>, Error, void* )
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
bool cowGetUsers (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.UserDTO>, Error, void* )
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
bool cowGetUsers (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Cow.UserDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* CowManager_H_ */
