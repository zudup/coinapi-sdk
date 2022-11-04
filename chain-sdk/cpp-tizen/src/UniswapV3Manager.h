#ifndef _UniswapV3Manager_H_
#define _UniswapV3Manager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "UniswapV3BundleV3DTO.h"
#include "UniswapV3BurnV3DTO.h"
#include "UniswapV3FactoryV3DTO.h"
#include "UniswapV3MintV3DTO.h"
#include "UniswapV3PoolDayDataV3DTO.h"
#include "UniswapV3PoolHourDataV3DTO.h"
#include "UniswapV3PoolV3DTO.h"
#include "UniswapV3PositionSnapshotV3DTO.h"
#include "UniswapV3PositionV3DTO.h"
#include "UniswapV3SwapV3DTO.h"
#include "UniswapV3TickDayDataV3DTO.h"
#include "UniswapV3TickV3DTO.h"
#include "UniswapV3TokenHourDataV3DTO.h"
#include "UniswapV3TokenV3DTO.h"
#include "UniswapV3TokenV3DayDataDTO.h"
#include "UniswapV3UniswapDayDataV3DTO.h"
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
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BundleCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetBundles. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BundleCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3BundleV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BundlesHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BundlesHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetBurns. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BurnsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetBurns. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BurnsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3BurnV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BurnsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3BurnsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3DayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3DayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetFactory. *Synchronous*
 *
 * 
 * \param chainId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3FactoryCurrentGetSync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetFactory. *Asynchronous*
 *
 * 
 * \param chainId  *Required*
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3FactoryCurrentGetAsync(char * accessToken,
	std::string chainId, 
	void(* handler)(std::list<UniswapV3FactoryV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3FactoryHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3FactoryHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetMints. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3MintsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetMints. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3MintsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3MintV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3MintsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3MintsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolHourDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolHourDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetPools. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPools. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPoolsDayData. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsDayDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPoolsDayData. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsDayDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetPoolsHourData. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsHourDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPoolsHourData. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PoolsHourDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PoolHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionSnapshotHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionSnapshotHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetPositionSnapshot. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionSnapshotsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPositionSnapshot. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionSnapshotsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionSnapshotV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetPositions. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetPositions. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3PositionV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3PositionsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetSwaps. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3SwapsCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetSwaps. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3SwapsCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3SwapV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3SwapsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3SwapsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TickDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TickDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetTicks. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTicks. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTicksDayData. *Synchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksDayDataCurrentGetSync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTicksDayData. *Asynchronous*
 *
 * 
 * \param filterPoolId Filter pool id
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksDayDataCurrentGetAsync(char * accessToken,
	std::string filterPoolId, 
	void(* handler)(std::list<UniswapV3TickDayDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TicksHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokenDayDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokenDayDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokenHourDataHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokenHourDataHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetTokens. *Synchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens. *Asynchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DTO>, Error, void* )
	, void* userData);


/*! \brief GetTokensDayData. *Synchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensDayDataCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokensDayData. *Asynchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensDayDataCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenV3DayDataDTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param tokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetTokensHourData. *Synchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensHourDataCurrentGetSync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetTokensHourData. *Asynchronous*
 *
 * 
 * \param filterTokenId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TokensHourDataCurrentGetAsync(char * accessToken,
	std::string filterTokenId, 
	void(* handler)(std::list<UniswapV3TokenHourDataV3DTO>, Error, void* )
	, void* userData);


/*! \brief . *Synchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TransactionsHistoricalGetSync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);

/*! \brief . *Asynchronous*
 *
 * 
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3TransactionsHistoricalGetAsync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	
	void(* handler)(Error, void* ) , void* userData);


/*! \brief GetUniswapDayData. *Synchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3UniswapDayDataCurrentGetSync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
	, void* userData);

/*! \brief GetUniswapDayData. *Asynchronous*
 *
 * 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool dappsUniswapv3UniswapDayDataCurrentGetAsync(char * accessToken,
	
	void(* handler)(std::list<UniswapV3UniswapDayDataV3DTO>, Error, void* )
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
