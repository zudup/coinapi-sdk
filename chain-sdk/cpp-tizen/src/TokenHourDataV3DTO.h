/*
 * TokenHourDataV3DTO.h
 *
 * 
 */

#ifndef _TokenHourDataV3DTO_H_
#define _TokenHourDataV3DTO_H_


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

class TokenHourDataV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TokenHourDataV3DTO();
	TokenHourDataV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TokenHourDataV3DTO();

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
	std::string getToken();

	/*! \brief Set 
	 */
	void setToken(std::string  token);
	/*! \brief Get 
	 */
	std::string getVolume();

	/*! \brief Set 
	 */
	void setVolume(std::string  volume);
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
	std::string getTotalValueLocked();

	/*! \brief Set 
	 */
	void setTotalValueLocked(std::string  total_value_locked);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedUsd();

	/*! \brief Set 
	 */
	void setTotalValueLockedUsd(std::string  total_value_locked_usd);
	/*! \brief Get 
	 */
	std::string getPriceUsd();

	/*! \brief Set 
	 */
	void setPriceUsd(std::string  price_usd);
	/*! \brief Get 
	 */
	std::string getFeesUsd();

	/*! \brief Set 
	 */
	void setFeesUsd(std::string  fees_usd);
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
	std::string token;
	std::string volume;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string total_value_locked;
	std::string total_value_locked_usd;
	std::string price_usd;
	std::string fees_usd;
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

#endif /* _TokenHourDataV3DTO_H_ */
