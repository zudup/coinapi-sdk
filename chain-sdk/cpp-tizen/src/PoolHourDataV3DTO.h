/*
 * PoolHourDataV3DTO.h
 *
 * 
 */

#ifndef _PoolHourDataV3DTO_H_
#define _PoolHourDataV3DTO_H_


#include <string>
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

class PoolHourDataV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	PoolHourDataV3DTO();
	PoolHourDataV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PoolHourDataV3DTO();

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
	std::string getId();

	/*! \brief Set 
	 */
	void setId(std::string  id);
	/*! \brief Get 
	 */
	int getPeriodStartUnix();

	/*! \brief Set 
	 */
	void setPeriodStartUnix(int  period_start_unix);
	/*! \brief Get 
	 */
	std::string getPool();

	/*! \brief Set 
	 */
	void setPool(std::string  pool);
	/*! \brief Get 
	 */
	std::string getLiquidity();

	/*! \brief Set 
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get 
	 */
	std::string getSqrtPrice();

	/*! \brief Set 
	 */
	void setSqrtPrice(std::string  sqrt_price);
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
	std::string getTick();

	/*! \brief Set 
	 */
	void setTick(std::string  tick);
	/*! \brief Get 
	 */
	std::string getFeeGrowthGlobal0x128();

	/*! \brief Set 
	 */
	void setFeeGrowthGlobal0x128(std::string  fee_growth_global_0x128);
	/*! \brief Get 
	 */
	std::string getFeeGrowthGlobal1x128();

	/*! \brief Set 
	 */
	void setFeeGrowthGlobal1x128(std::string  fee_growth_global_1x128);
	/*! \brief Get 
	 */
	std::string getTvlUsd();

	/*! \brief Set 
	 */
	void setTvlUsd(std::string  tvl_usd);
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
	std::string getFeesUsd();

	/*! \brief Set 
	 */
	void setFeesUsd(std::string  fees_usd);
	/*! \brief Get 
	 */
	std::string getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(std::string  tx_count);
	/*! \brief Get 
	 */
	std::string getOpen();

	/*! \brief Set 
	 */
	void setOpen(std::string  open);
	/*! \brief Get 
	 */
	std::string getHigh();

	/*! \brief Set 
	 */
	void setHigh(std::string  high);
	/*! \brief Get 
	 */
	std::string getLow();

	/*! \brief Set 
	 */
	void setLow(std::string  low);
	/*! \brief Get 
	 */
	std::string getClose();

	/*! \brief Set 
	 */
	void setClose(std::string  close);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	std::string id;
	int period_start_unix;
	std::string pool;
	std::string liquidity;
	std::string sqrt_price;
	std::string token_0_price;
	std::string token_1_price;
	std::string tick;
	std::string fee_growth_global_0x128;
	std::string fee_growth_global_1x128;
	std::string tvl_usd;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string fees_usd;
	std::string tx_count;
	std::string open;
	std::string high;
	std::string low;
	std::string close;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PoolHourDataV3DTO_H_ */
