/*
 * PairV2DTO.h
 *
 * 
 */

#ifndef _PairV2DTO_H_
#define _PairV2DTO_H_


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

class PairV2DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	PairV2DTO();
	PairV2DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PairV2DTO();

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
	std::string getReserve0();

	/*! \brief Set 
	 */
	void setReserve0(std::string  reserve_0);
	/*! \brief Get 
	 */
	std::string getReserve1();

	/*! \brief Set 
	 */
	void setReserve1(std::string  reserve_1);
	/*! \brief Get 
	 */
	std::string getTotalSupply();

	/*! \brief Set 
	 */
	void setTotalSupply(std::string  total_supply);
	/*! \brief Get 
	 */
	std::string getReserveEth();

	/*! \brief Set 
	 */
	void setReserveEth(std::string  reserve_eth);
	/*! \brief Get 
	 */
	std::string getReserveUsd();

	/*! \brief Set 
	 */
	void setReserveUsd(std::string  reserve_usd);
	/*! \brief Get 
	 */
	std::string getTrackedReserveEth();

	/*! \brief Set 
	 */
	void setTrackedReserveEth(std::string  tracked_reserve_eth);
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
	BigInteger getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(BigInteger  tx_count);
	/*! \brief Get 
	 */
	std::string getCreatedAtTimestamp();

	/*! \brief Set 
	 */
	void setCreatedAtTimestamp(std::string  created_at_timestamp);
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
	std::string token_0;
	std::string token_1;
	std::string reserve_0;
	std::string reserve_1;
	std::string total_supply;
	std::string reserve_eth;
	std::string reserve_usd;
	std::string tracked_reserve_eth;
	std::string token_0_price;
	std::string token_1_price;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string untracked_volume_usd;
	BigInteger tx_count;
	std::string created_at_timestamp;
	std::string liquidity_provider_count;
	double evaluated_ask;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PairV2DTO_H_ */
