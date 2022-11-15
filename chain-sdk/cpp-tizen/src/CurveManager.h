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

/*! \brief AccountDTOs (historical) 🔥. *Synchronous*
 *
 * Gets AccountDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccountDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);

/*! \brief AccountDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets AccountDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAccountDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AccountDTO>, Error, void* )
	, void* userData);


/*! \brief Accounts (historical). *Synchronous*
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

/*! \brief Accounts (historical). *Asynchronous*
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


/*! \brief AddLiquidityEventDTOs (historical) 🔥. *Synchronous*
 *
 * Gets AddLiquidityEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEventDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief AddLiquidityEventDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets AddLiquidityEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAddLiquidityEventDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AddLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief AddLiquidityEvents (historical). *Synchronous*
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

/*! \brief AddLiquidityEvents (historical). *Asynchronous*
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


/*! \brief AdminFeeChangeLogDTOs (historical) 🔥. *Synchronous*
 *
 * Gets AdminFeeChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AdminFeeChangeLogDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets AdminFeeChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAdminFeeChangeLogDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AdminFeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief AdminFeeChangeLogs (historical). *Synchronous*
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

/*! \brief AdminFeeChangeLogs (historical). *Asynchronous*
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


/*! \brief AmplificationCoeffChangeLogDTOs (historical) 🔥. *Synchronous*
 *
 * Gets AmplificationCoeffChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief AmplificationCoeffChangeLogDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets AmplificationCoeffChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetAmplificationCoeffChangeLogDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.AmplificationCoeffChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief AmplificationCoeffChangeLogs (historical). *Synchronous*
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

/*! \brief AmplificationCoeffChangeLogs (historical). *Asynchronous*
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


/*! \brief CoinDTOs (historical) 🔥. *Synchronous*
 *
 * Gets CoinDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoinDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);

/*! \brief CoinDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets CoinDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetCoinDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.CoinDTO>, Error, void* )
	, void* userData);


/*! \brief Coins (historical). *Synchronous*
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

/*! \brief Coins (historical). *Asynchronous*
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


/*! \brief ContractDTOs (historical) 🔥. *Synchronous*
 *
 * Gets ContractDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);

/*! \brief ContractDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets ContractDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractDTO>, Error, void* )
	, void* userData);


/*! \brief ContractVersionDTOs (historical) 🔥. *Synchronous*
 *
 * Gets ContractVersionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractVersionDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);

/*! \brief ContractVersionDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets ContractVersionDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetContractVersionDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ContractVersionDTO>, Error, void* )
	, void* userData);


/*! \brief Contracts (historical). *Synchronous*
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

/*! \brief Contracts (historical). *Asynchronous*
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


/*! \brief ContractsVersions (historical). *Synchronous*
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

/*! \brief ContractsVersions (historical). *Asynchronous*
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


/*! \brief DailyVolumeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets DailyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief DailyVolumeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets DailyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetDailyVolumeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.DailyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief DailyVolumes (historical). *Synchronous*
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

/*! \brief DailyVolumes (historical). *Asynchronous*
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


/*! \brief ExchangeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets ExchangeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchangeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);

/*! \brief ExchangeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets ExchangeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetExchangeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ExchangeDTO>, Error, void* )
	, void* userData);


/*! \brief Exchanges (historical) 🔥. *Synchronous*
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

/*! \brief Exchanges (historical) 🔥. *Asynchronous*
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


/*! \brief FeeChangeLogDTOs (historical) 🔥. *Synchronous*
 *
 * Gets FeeChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);

/*! \brief FeeChangeLogDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets FeeChangeLogDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetFeeChangeLogDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.FeeChangeLogDTO>, Error, void* )
	, void* userData);


/*! \brief FeeChangeLogs (historical). *Synchronous*
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

/*! \brief FeeChangeLogs (historical). *Asynchronous*
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


/*! \brief GaugeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeDepositDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeDepositDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDepositDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeDepositDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeDepositDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeDepositDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeDepositDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeLiquidityDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeLiquidityDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeLiquidityDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeLiquidityDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeLiquidityDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeLiquidityDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeLiquidityDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTotalWeightDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeTotalWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTotalWeightDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTotalWeightDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeTotalWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTotalWeightDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTotalWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeTypeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeTypeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTypeDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeTypeWeightDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeTypeWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeWeightDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeTypeWeightDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeTypeWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeTypeWeightDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeTypeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeightDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeightDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeWeightDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWeightDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWeightVoteDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeWeightVoteDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightVoteDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWeightVoteDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeWeightVoteDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWeightVoteDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWeightVoteDTO>, Error, void* )
	, void* userData);


/*! \brief GaugeWithdrawDTOs (historical) 🔥. *Synchronous*
 *
 * Gets GaugeWithdrawDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWithdrawDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);

/*! \brief GaugeWithdrawDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets GaugeWithdrawDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetGaugeWithdrawDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.GaugeWithdrawDTO>, Error, void* )
	, void* userData);


/*! \brief Gauges (historical). *Synchronous*
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

/*! \brief Gauges (historical). *Asynchronous*
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


/*! \brief GaugesDeposits (historical). *Synchronous*
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

/*! \brief GaugesDeposits (historical). *Asynchronous*
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


/*! \brief GaugesLiquidity (historical). *Synchronous*
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

/*! \brief GaugesLiquidity (historical). *Asynchronous*
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


/*! \brief GaugesTotalWeights (historical). *Synchronous*
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

/*! \brief GaugesTotalWeights (historical). *Asynchronous*
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


/*! \brief GaugesTypes (historical). *Synchronous*
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

/*! \brief GaugesTypes (historical). *Asynchronous*
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


/*! \brief GaugesTypesWeights (historical). *Synchronous*
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

/*! \brief GaugesTypesWeights (historical). *Asynchronous*
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


/*! \brief GaugesWeights (historical). *Synchronous*
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

/*! \brief GaugesWeights (historical). *Asynchronous*
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


/*! \brief GaugesWeightsVotes (historical). *Synchronous*
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

/*! \brief GaugesWeightsVotes (historical). *Asynchronous*
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


/*! \brief GaugesWithdraw (historical). *Synchronous*
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

/*! \brief GaugesWithdraw (historical). *Asynchronous*
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


/*! \brief HourlyVolumeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets HourlyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief HourlyVolumeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets HourlyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetHourlyVolumeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.HourlyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief HourlyVolumes (historical). *Synchronous*
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

/*! \brief HourlyVolumes (historical). *Asynchronous*
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


/*! \brief LpTokenDTOs (historical) 🔥. *Synchronous*
 *
 * Gets LpTokenDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokenDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);

/*! \brief LpTokenDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets LpTokenDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetLpTokenDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.LpTokenDTO>, Error, void* )
	, void* userData);


/*! \brief LpTokens (historical). *Synchronous*
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

/*! \brief LpTokens (historical). *Asynchronous*
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


/*! \brief PoolDTOs (historical) 🔥. *Synchronous*
 *
 * Gets PoolDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPoolDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);

/*! \brief PoolDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets PoolDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetPoolDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.PoolDTO>, Error, void* )
	, void* userData);


/*! \brief Pools (historical) 🔥. *Synchronous*
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

/*! \brief Pools (historical) 🔥. *Asynchronous*
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


/*! \brief ProposalDTOs (historical) 🔥. *Synchronous*
 *
 * Gets ProposalDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);

/*! \brief ProposalDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets ProposalDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ProposalDTO>, Error, void* )
	, void* userData);


/*! \brief ProposalVoteDTOs (historical) 🔥. *Synchronous*
 *
 * Gets ProposalVoteDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalVoteDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);

/*! \brief ProposalVoteDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets ProposalVoteDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetProposalVoteDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.ProposalVoteDTO>, Error, void* )
	, void* userData);


/*! \brief Proposals (historical). *Synchronous*
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

/*! \brief Proposals (historical). *Asynchronous*
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


/*! \brief ProposalsVotes (historical). *Synchronous*
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

/*! \brief ProposalsVotes (historical). *Asynchronous*
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


/*! \brief RemoveLiquidityEventDTOs (historical) 🔥. *Synchronous*
 *
 * Gets RemoveLiquidityEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEventDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityEventDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets RemoveLiquidityEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityEventDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityEventDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityEvents (historical). *Synchronous*
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

/*! \brief RemoveLiquidityEvents (historical). *Asynchronous*
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


/*! \brief RemoveLiquidityOneEventDTOs (historical) 🔥. *Synchronous*
 *
 * Gets RemoveLiquidityOneEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEventDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);

/*! \brief RemoveLiquidityOneEventDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets RemoveLiquidityOneEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetRemoveLiquidityOneEventDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.RemoveLiquidityOneEventDTO>, Error, void* )
	, void* userData);


/*! \brief RemoveLiquidityOneEvents (historical). *Synchronous*
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

/*! \brief RemoveLiquidityOneEvents (historical). *Asynchronous*
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


/*! \brief SystemStateDTOs (historical) 🔥. *Synchronous*
 *
 * Gets SystemStateDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStateDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);

/*! \brief SystemStateDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets SystemStateDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetSystemStateDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.SystemStateDTO>, Error, void* )
	, void* userData);


/*! \brief SystemStates (historical). *Synchronous*
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

/*! \brief SystemStates (historical). *Asynchronous*
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
bool curveGetTokenDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
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
bool curveGetTokenDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
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
bool curveGetTokens (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
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
bool curveGetTokens (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string tokenId, 
	void(* handler)(std::list<Curve.TokenDTO>, Error, void* )
	, void* userData);


/*! \brief TransferOwnershipEventDTOs (historical) 🔥. *Synchronous*
 *
 * Gets TransferOwnershipEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEventDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);

/*! \brief TransferOwnershipEventDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets TransferOwnershipEventDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetTransferOwnershipEventDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.TransferOwnershipEventDTO>, Error, void* )
	, void* userData);


/*! \brief TransferOwnershipEvents (historical). *Synchronous*
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

/*! \brief TransferOwnershipEvents (historical). *Asynchronous*
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


/*! \brief UnderlyingCoinDTOs (historical) 🔥. *Synchronous*
 *
 * Gets UnderlyingCoinDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoinDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);

/*! \brief UnderlyingCoinDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets UnderlyingCoinDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetUnderlyingCoinDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.UnderlyingCoinDTO>, Error, void* )
	, void* userData);


/*! \brief UnderlyingCoins (historical). *Synchronous*
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

/*! \brief UnderlyingCoins (historical). *Asynchronous*
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


/*! \brief VotingAppDTOs (historical) 🔥. *Synchronous*
 *
 * Gets VotingAppDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingAppDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);

/*! \brief VotingAppDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets VotingAppDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetVotingAppDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.VotingAppDTO>, Error, void* )
	, void* userData);


/*! \brief VotingApps (historical). *Synchronous*
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

/*! \brief VotingApps (historical). *Asynchronous*
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


/*! \brief WeeklyVolumeDTOs (historical) 🔥. *Synchronous*
 *
 * Gets WeeklyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumeDTOs (historical)Sync(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);

/*! \brief WeeklyVolumeDTOs (historical) 🔥. *Asynchronous*
 *
 * Gets WeeklyVolumeDTOs.
 * \param startBlock 
 * \param endBlock 
 * \param startDate 
 * \param endDate 
 * \param poolId 
 * \param handler The callback function to be invoked on completion. *Required*
 * \param accessToken The Authorization token. *Required*
 * \param userData The user data to be passed to the callback function.
 */
bool curveGetWeeklyVolumeDTOs (historical)Async(char * accessToken,
	long long startBlock, long long endBlock, std::string startDate, std::string endDate, std::string poolId, 
	void(* handler)(std::list<Curve.WeeklyVolumeDTO>, Error, void* )
	, void* userData);


/*! \brief WeeklyVolumes (historical). *Synchronous*
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

/*! \brief WeeklyVolumes (historical). *Asynchronous*
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
