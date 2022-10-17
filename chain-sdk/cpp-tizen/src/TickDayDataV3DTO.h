/*
 * TickDayDataV3DTO.h
 *
 * 
 */

#ifndef _TickDayDataV3DTO_H_
#define _TickDayDataV3DTO_H_


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

class TickDayDataV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TickDayDataV3DTO();
	TickDayDataV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TickDayDataV3DTO();

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
	int getDate();

	/*! \brief Set 
	 */
	void setDate(int  date);
	/*! \brief Get 
	 */
	std::string getPool();

	/*! \brief Set 
	 */
	void setPool(std::string  pool);
	/*! \brief Get 
	 */
	std::string getTick();

	/*! \brief Set 
	 */
	void setTick(std::string  tick);
	/*! \brief Get 
	 */
	std::string getLiquidityGross();

	/*! \brief Set 
	 */
	void setLiquidityGross(std::string  liquidity_gross);
	/*! \brief Get 
	 */
	std::string getLiquidityNet();

	/*! \brief Set 
	 */
	void setLiquidityNet(std::string  liquidity_net);
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
	std::string getFeeGrowthOutside0x128();

	/*! \brief Set 
	 */
	void setFeeGrowthOutside0x128(std::string  fee_growth_outside_0x128);
	/*! \brief Get 
	 */
	std::string getFeeGrowthOutside1x128();

	/*! \brief Set 
	 */
	void setFeeGrowthOutside1x128(std::string  fee_growth_outside_1x128);
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
	int date;
	std::string pool;
	std::string tick;
	std::string liquidity_gross;
	std::string liquidity_net;
	std::string volume_token_0;
	std::string volume_token_1;
	std::string volume_usd;
	std::string fees_usd;
	std::string fee_growth_outside_0x128;
	std::string fee_growth_outside_1x128;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _TickDayDataV3DTO_H_ */
