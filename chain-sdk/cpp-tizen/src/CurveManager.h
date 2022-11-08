#ifndef _CurveManager_H_
#define _CurveManager_H_

#include <string>
#include <cstring>
#include <list>
#include <glib.h>
#include "Curve.AccountDTO.h"
#include "Curve.AddLiquidityEventDTO.h"
#include "Curve.AdminFeeChangeLogDTO.h"
#include "Curve.AmplificationCoeffChangeLogDTO.h"
#include "Curve.CoinDTO.h"
#include "Curve.ContractDTO.h"
#include "Curve.ContractVersionDTO.h"
#include "Curve.DailyVolumeDTO.h"
#include "Curve.ExchangeDTO.h"
#include "Curve.FeeChangeLogDTO.h"
#include "Curve.GaugeDTO.h"
#include "Curve.GaugeDepositDTO.h"
#include "Curve.GaugeLiquidityDTO.h"
#include "Curve.GaugeTotalWeightDTO.h"
#include "Curve.GaugeTypeDTO.h"
#include "Curve.GaugeTypeWeightDTO.h"
#include "Curve.GaugeWeightDTO.h"
#include "Curve.GaugeWeightVoteDTO.h"
#include "Curve.GaugeWithdrawDTO.h"
#include "Curve.HourlyVolumeDTO.h"
#include "Curve.LpTokenDTO.h"
#include "Curve.PoolDTO.h"
#include "Curve.ProposalDTO.h"
#include "Curve.ProposalVoteDTO.h"
#include "Curve.RemoveLiquidityEventDTO.h"
#include "Curve.RemoveLiquidityOneEventDTO.h"
#include "Curve.SystemStateDTO.h"
#include "Curve.TokenDTO.h"
#include "Curve.TransferOwnershipEventDTO.h"
#include "Curve.UnderlyingCoinDTO.h"
#include "Curve.VotingAppDTO.h"
#include "Curve.WeeklyVolumeDTO.h"
#include "Error.h"

/** \defgroup Operations API Endpoints
 *  Classes containing all the functions for calling API endpoints
 *
 */

namespace Tizen{
namespace ArtikCloud {
/** \addtogroup Curve Curve
 * \ingroup Operations
 *  @{
 */
class CurveManager {
public:
	CurveManager();
	virtual ~CurveManager();

/*! \brief GetAccounts (historical). *Synchronous*
 *
 * Gets accounts.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccounts (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);

/*! \brief GetAccounts (historical). *Asynchronous*
 *
 * Gets accounts.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccounts (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);


/*! \brief GetAddLiquidityEvents (historical). *Synchronous*
 *
 * Gets add liquidity events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief GetAddLiquidityEvents (historical). *Asynchronous*
 *
 * Gets add liquidity events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief GetAdminFeeChangeLogs (historical). *Synchronous*
 *
 * Gets admin fee change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief GetAdminFeeChangeLogs (historical). *Asynchronous*
 *
 * Gets admin fee change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief GetAmplificationCoeffChangeLogs (historical). *Synchronous*
 *
 * Gets amplification coeff change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief GetAmplificationCoeffChangeLogs (historical). *Asynchronous*
 *
 * Gets amplification coeff change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief GetCoins (historical). *Synchronous*
 *
 * Gets coins.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoins (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);

/*! \brief GetCoins (historical). *Asynchronous*
 *
 * Gets coins.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoins (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);


/*! \brief GetContracts (historical). *Synchronous*
 *
 * Gets contracts.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContracts (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);

/*! \brief GetContracts (historical). *Asynchronous*
 *
 * Gets contracts.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContracts (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);


/*! \brief GetContractsVersions (historical). *Synchronous*
 *
 * Gets contracts versions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractsVersions (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);

/*! \brief GetContractsVersions (historical). *Asynchronous*
 *
 * Gets contracts versions.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractsVersions (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);


/*! \brief GetDailyVolumes (historical). *Synchronous*
 *
 * Gets daily volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief GetDailyVolumes (historical). *Asynchronous*
 *
 * Gets daily volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief GetExchanges (historical) 🔥. *Synchronous*
 *
 * Gets exchanges.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);

/*! \brief GetExchanges (historical) 🔥. *Asynchronous*
 *
 * Gets exchanges.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchanges (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);


/*! \brief GetFeeChangeLogs (historical). *Synchronous*
 *
 * Gets fee change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief GetFeeChangeLogs (historical). *Asynchronous*
 *
 * Gets fee change logs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief GetGauges (historical). *Synchronous*
 *
 * Gets gauges.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGauges (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);

/*! \brief GetGauges (historical). *Asynchronous*
 *
 * Gets gauges.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGauges (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesDeposits (historical). *Synchronous*
 *
 * Gets gauges deposits.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesDeposits (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesDeposits (historical). *Asynchronous*
 *
 * Gets gauges deposits.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesDeposits (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesLiquidity (historical). *Synchronous*
 *
 * Gets gauges liquidity.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesLiquidity (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesLiquidity (historical). *Asynchronous*
 *
 * Gets gauges liquidity.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesLiquidity (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesTotalWeights (historical). *Synchronous*
 *
 * Gets gauges total weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTotalWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesTotalWeights (historical). *Asynchronous*
 *
 * Gets gauges total weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTotalWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesTypes (historical). *Synchronous*
 *
 * Gets gauges types.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTypes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesTypes (historical). *Asynchronous*
 *
 * Gets gauges types.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTypes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesTypesWeights (historical). *Synchronous*
 *
 * Gets gauges types weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTypesWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesTypesWeights (historical). *Asynchronous*
 *
 * Gets gauges types weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesTypesWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesWeights (historical). *Synchronous*
 *
 * Gets gauges weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWeights (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesWeights (historical). *Asynchronous*
 *
 * Gets gauges weights.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWeights (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesWeightsVotes (historical). *Synchronous*
 *
 * Gets gauges weights votes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWeightsVotes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesWeightsVotes (historical). *Asynchronous*
 *
 * Gets gauges weights votes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWeightsVotes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);


/*! \brief GetGaugesWithdraw (historical). *Synchronous*
 *
 * Gets gauges withdraws.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWithdraw (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief GetGaugesWithdraw (historical). *Asynchronous*
 *
 * Gets gauges withdraws.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugesWithdraw (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);


/*! \brief GetHourlyVolumes (historical). *Synchronous*
 *
 * Gets hourly volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief GetHourlyVolumes (historical). *Asynchronous*
 *
 * Gets hourly volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief GetLpTokens (historical). *Synchronous*
 *
 * Gets lp tokens.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);

/*! \brief GetLpTokens (historical). *Asynchronous*
 *
 * Gets lp tokens.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);


/*! \brief GetPools (historical) 🔥. *Synchronous*
 *
 * Gets pools.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPools (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief GetPools (historical) 🔥. *Asynchronous*
 *
 * Gets pools.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPools (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief GetProposals (historical). *Synchronous*
 *
 * Gets proposals.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposals (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);

/*! \brief GetProposals (historical). *Asynchronous*
 *
 * Gets proposals.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposals (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);


/*! \brief GetProposalsVotes (historical). *Synchronous*
 *
 * Gets proposals votes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalsVotes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);

/*! \brief GetProposalsVotes (historical). *Asynchronous*
 *
 * Gets proposals votes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalsVotes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);


/*! \brief GetRemoveLiquidityEvents (historical). *Synchronous*
 *
 * Gets remove liquidity events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief GetRemoveLiquidityEvents (historical). *Asynchronous*
 *
 * Gets remove liquidity events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief GetRemoveLiquidityOneEvents (historical). *Synchronous*
 *
 * Gets remove liquidity one events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);

/*! \brief GetRemoveLiquidityOneEvents (historical). *Asynchronous*
 *
 * Gets remove liquidity one events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);


/*! \brief GetSystemStates (historical). *Synchronous*
 *
 * Gets system states.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStates (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);

/*! \brief GetSystemStates (historical). *Asynchronous*
 *
 * Gets system states.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStates (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);


/*! \brief GetTokens (historical) 🔥. *Synchronous*
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
bool curveGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);

/*! \brief GetTokens (historical) 🔥. *Asynchronous*
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
bool curveGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief GetTransferOwnershipEvents (historical). *Synchronous*
 *
 * Gets transfer ownership events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEvents (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);

/*! \brief GetTransferOwnershipEvents (historical). *Asynchronous*
 *
 * Gets transfer ownership events.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEvents (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);


/*! \brief GetUnderlyingCoins (historical). *Synchronous*
 *
 * Gets underlying coins.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoins (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);

/*! \brief GetUnderlyingCoins (historical). *Asynchronous*
 *
 * Gets underlying coins.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoins (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);


/*! \brief GetVotingApps (historical). *Synchronous*
 *
 * Gets voting apps.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingApps (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);

/*! \brief GetVotingApps (historical). *Asynchronous*
 *
 * Gets voting apps.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingApps (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);


/*! \brief GetWeeklyVolumes (historical). *Synchronous*
 *
 * Gets weekly volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumes (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief GetWeeklyVolumes (historical). *Asynchronous*
 *
 * Gets weekly volumes.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumes (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);



	static std::string getBasePath()
	{
		return "https://onchain.coinapi.io";
	}
};
/** @}*/

}
}
#endif /* CurveManager_H_ */
