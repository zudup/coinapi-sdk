/*
 * UniswapDayDataV3DTO.h
 *
 * 
 */

#ifndef _UniswapDayDataV3DTO_H_
#define _UniswapDayDataV3DTO_H_


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

class UniswapDayDataV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	UniswapDayDataV3DTO();
	UniswapDayDataV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~UniswapDayDataV3DTO();

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
	int getDate();

	/*! \brief Set 
	 */
	void setDate(int  date);
	/*! \brief Get 
	 */
	std::string getVolumeEth();

	/*! \brief Set 
	 */
	void setVolumeEth(std::string  volume_eth);
	/*! \brief Get 
	 */
	std::string getVolumeUsd();

	/*! \brief Set 
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get 
	 */
	std::string getVolumeUsdUntracked();

	/*! \brief Set 
	 */
	void setVolumeUsdUntracked(std::string  volume_usd_untracked);
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
	std::string getTvlUsd();

	/*! \brief Set 
	 */
	void setTvlUsd(std::string  tvl_usd);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string id;
	int date;
	std::string volume_eth;
	std::string volume_usd;
	std::string volume_usd_untracked;
	std::string fees_usd;
	BigInteger tx_count;
	std::string tvl_usd;
	void __init();
	void __cleanup();

};
}
}

#endif /* _UniswapDayDataV3DTO_H_ */
