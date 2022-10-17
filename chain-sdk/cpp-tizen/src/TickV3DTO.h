/*
 * TickV3DTO.h
 *
 * 
 */

#ifndef _TickV3DTO_H_
#define _TickV3DTO_H_


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

class TickV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TickV3DTO();
	TickV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TickV3DTO();

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
	std::string getPoolAddress();

	/*! \brief Set 
	 */
	void setPoolAddress(std::string  pool_address);
	/*! \brief Get 
	 */
	BigInteger getTickIdx();

	/*! \brief Set 
	 */
	void setTickIdx(BigInteger  tick_idx);
	/*! \brief Get 
	 */
	std::string getPool();

	/*! \brief Set 
	 */
	void setPool(std::string  pool);
	/*! \brief Get 
	 */
	BigInteger getLiquidityGross();

	/*! \brief Set 
	 */
	void setLiquidityGross(BigInteger  liquidity_gross);
	/*! \brief Get 
	 */
	BigInteger getLiquidityNet();

	/*! \brief Set 
	 */
	void setLiquidityNet(BigInteger  liquidity_net);
	/*! \brief Get 
	 */
	std::string getPrice0();

	/*! \brief Set 
	 */
	void setPrice0(std::string  price_0);
	/*! \brief Get 
	 */
	std::string getPrice1();

	/*! \brief Set 
	 */
	void setPrice1(std::string  price_1);
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
	std::string getCreatedAtTimestamp();

	/*! \brief Set 
	 */
	void setCreatedAtTimestamp(std::string  created_at_timestamp);
	/*! \brief Get 
	 */
	BigInteger getLiquidityProviderCount();

	/*! \brief Set 
	 */
	void setLiquidityProviderCount(BigInteger  liquidity_provider_count);
	/*! \brief Get 
	 */
	BigInteger getFeeGrowthOutside0x128();

	/*! \brief Set 
	 */
	void setFeeGrowthOutside0x128(BigInteger  fee_growth_outside_0x128);
	/*! \brief Get 
	 */
	BigInteger getFeeGrowthOutside1x128();

	/*! \brief Set 
	 */
	void setFeeGrowthOutside1x128(BigInteger  fee_growth_outside_1x128);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string id;
	std::string pool_address;
	BigInteger tick_idx;
	std::string pool;
	BigInteger liquidity_gross;
	BigInteger liquidity_net;
	std::string price_0;
	std::string price_1;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string fees_usd;
	std::string collected_fees_token_0;
	std::string collected_fees_token_1;
	std::string collected_fees_usd;
	std::string created_at_timestamp;
	BigInteger liquidity_provider_count;
	BigInteger fee_growth_outside_0x128;
	BigInteger fee_growth_outside_1x128;
	void __init();
	void __cleanup();

};
}
}

#endif /* _TickV3DTO_H_ */
