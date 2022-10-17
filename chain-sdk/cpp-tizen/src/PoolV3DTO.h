/*
 * PoolV3DTO.h
 *
 * 
 */

#ifndef _PoolV3DTO_H_
#define _PoolV3DTO_H_


#include <string>
#include "BigInteger.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class PoolV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	PoolV3DTO();
	PoolV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PoolV3DTO();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getEntryTime();

	/*! \brief Set 
	 */
	void setEntryTime(std::string  entry_time);
	/*! \brief Get 
	 */
	std::string getRecvTime();

	/*! \brief Set 
	 */
	void setRecvTime(std::string  recv_time);
	/*! \brief Get 
	 */
	long long getBlockNumber();

	/*! \brief Set 
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get 
	 */
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	std::string getCreatedAtTimestamp();

	/*! \brief Set 
	 */
	void setCreatedAtTimestamp(std::string  created_at_timestamp);
	/*! \brief Get 
	 */
	std::string getToken0();

	/*! \brief Set 
	 */
	void setToken0(std::string  token_0);
	/*! \brief Get 
	 */
	std::string getToken1();

	/*! \brief Set 
	 */
	void setToken1(std::string  token_1);
	/*! \brief Get 
	 */
	BigInteger getFeeTier();

	/*! \brief Set 
	 */
	void setFeeTier(BigInteger  fee_tier);
	/*! \brief Get 
	 */
	BigInteger getLiquidity();

	/*! \brief Set 
	 */
	void setLiquidity(BigInteger  liquidity);
	/*! \brief Get 
	 */
	BigInteger getSqrtPrice();

	/*! \brief Set 
	 */
	void setSqrtPrice(BigInteger  sqrt_price);
	/*! \brief Get 
	 */
	BigInteger getFeeGrowthGlobal0x128();

	/*! \brief Set 
	 */
	void setFeeGrowthGlobal0x128(BigInteger  fee_growth_global_0x128);
	/*! \brief Get 
	 */
	BigInteger getFeeGrowthGlobal1x128();

	/*! \brief Set 
	 */
	void setFeeGrowthGlobal1x128(BigInteger  fee_growth_global_1x128);
	/*! \brief Get 
	 */
	std::string getToken0Price();

	/*! \brief Set 
	 */
	void setToken0Price(std::string  token_0_price);
	/*! \brief Get 
	 */
	std::string getToken1Price();

	/*! \brief Set 
	 */
	void setToken1Price(std::string  token_1_price);
	/*! \brief Get 
	 */
	BigInteger getTick();

	/*! \brief Set 
	 */
	void setTick(BigInteger  tick);
	/*! \brief Get 
	 */
	BigInteger getObservationIndex();

	/*! \brief Set 
	 */
	void setObservationIndex(BigInteger  observation_index);
	/*! \brief Get 
	 */
	std::string getVolumeToken0();

	/*! \brief Set 
	 */
	void setVolumeToken0(std::string  volume_token_0);
	/*! \brief Get 
	 */
	std::string getVolumeToken1();

	/*! \brief Set 
	 */
	void setVolumeToken1(std::string  volume_token_1);
	/*! \brief Get 
	 */
	std::string getVolumeUsd();

	/*! \brief Set 
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get 
	 */
	std::string getUntrackedVolumeUsd();

	/*! \brief Set 
	 */
	void setUntrackedVolumeUsd(std::string  untracked_volume_usd);
	/*! \brief Get 
	 */
	std::string getFeesUsd();

	/*! \brief Set 
	 */
	void setFeesUsd(std::string  fees_usd);
	/*! \brief Get 
	 */
	BigInteger getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(BigInteger  tx_count);
	/*! \brief Get 
	 */
	std::string getCollectedFeesToken0();

	/*! \brief Set 
	 */
	void setCollectedFeesToken0(std::string  collected_fees_token_0);
	/*! \brief Get 
	 */
	std::string getCollectedFeesToken1();

	/*! \brief Set 
	 */
	void setCollectedFeesToken1(std::string  collected_fees_token_1);
	/*! \brief Get 
	 */
	std::string getCollectedFeesUsd();

	/*! \brief Set 
	 */
	void setCollectedFeesUsd(std::string  collected_fees_usd);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedToken0();

	/*! \brief Set 
	 */
	void setTotalValueLockedToken0(std::string  total_value_locked_token_0);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedToken1();

	/*! \brief Set 
	 */
	void setTotalValueLockedToken1(std::string  total_value_locked_token_1);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedEth();

	/*! \brief Set 
	 */
	void setTotalValueLockedEth(std::string  total_value_locked_eth);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedUsd();

	/*! \brief Set 
	 */
	void setTotalValueLockedUsd(std::string  total_value_locked_usd);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedUsdUntracked();

	/*! \brief Set 
	 */
	void setTotalValueLockedUsdUntracked(std::string  total_value_locked_usd_untracked);
	/*! \brief Get 
	 */
	std::string getLiquidityProviderCount();

	/*! \brief Set 
	 */
	void setLiquidityProviderCount(std::string  liquidity_provider_count);
	/*! \brief Get 
	 */
	double getEvaluatedAsk();

	/*! \brief Set 
	 */
	void setEvaluatedAsk(double  evaluated_ask);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string id;
	std::string created_at_timestamp;
	std::string token_0;
	std::string token_1;
	BigInteger fee_tier;
	BigInteger liquidity;
	BigInteger sqrt_price;
	BigInteger fee_growth_global_0x128;
	BigInteger fee_growth_global_1x128;
	std::string token_0_price;
	std::string token_1_price;
	BigInteger tick;
	BigInteger observation_index;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string fees_usd;
	BigInteger tx_count;
	std::string collected_fees_token_0;
	std::string collected_fees_token_1;
	std::string collected_fees_usd;
	std::string total_value_locked_token_0;
	std::string total_value_locked_token_1;
	std::string total_value_locked_eth;
	std::string total_value_locked_usd;
	std::string total_value_locked_usd_untracked;
	std::string liquidity_provider_count;
	double evaluated_ask;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PoolV3DTO_H_ */
