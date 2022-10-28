/*
 * TokenHourDataV3DTO.h
 *
 * Token data aggregated across all pairs that include token.
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


/*! \brief Token data aggregated across all pairs that include token.
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
	/*! \brief Get token address concatendated with date
	 */
	std::string getId();

	/*! \brief Set token address concatendated with date
	 */
	void setId(std::string  id);
	/*! \brief Get unix timestamp for start of hour
	 */
	int getPeriodStartUnix();

	/*! \brief Set unix timestamp for start of hour
	 */
	void setPeriodStartUnix(int  period_start_unix);
	/*! \brief Get pointer to token
	 */
	std::string getToken();

	/*! \brief Set pointer to token
	 */
	void setToken(std::string  token);
	/*! \brief Get volume in token units
	 */
	std::string getVolume();

	/*! \brief Set volume in token units
	 */
	void setVolume(std::string  volume);
	/*! \brief Get volume in derived USD
	 */
	std::string getVolumeUsd();

	/*! \brief Set volume in derived USD
	 */
	void setVolumeUsd(std::string  volume_usd);
	/*! \brief Get volume in USD even on pools with less reliable USD values
	 */
	std::string getUntrackedVolumeUsd();

	/*! \brief Set volume in USD even on pools with less reliable USD values
	 */
	void setUntrackedVolumeUsd(std::string  untracked_volume_usd);
	/*! \brief Get liquidity across all pools in token units
	 */
	std::string getTotalValueLocked();

	/*! \brief Set liquidity across all pools in token units
	 */
	void setTotalValueLocked(std::string  total_value_locked);
	/*! \brief Get liquidity across all pools in derived USD
	 */
	std::string getTotalValueLockedUsd();

	/*! \brief Set liquidity across all pools in derived USD
	 */
	void setTotalValueLockedUsd(std::string  total_value_locked_usd);
	/*! \brief Get price at end of period in USD
	 */
	std::string getPriceUsd();

	/*! \brief Set price at end of period in USD
	 */
	void setPriceUsd(std::string  price_usd);
	/*! \brief Get fees in USD
	 */
	std::string getFeesUsd();

	/*! \brief Set fees in USD
	 */
	void setFeesUsd(std::string  fees_usd);
	/*! \brief Get opening price USD
	 */
	std::string getOpen();

	/*! \brief Set opening price USD
	 */
	void setOpen(std::string  open);
	/*! \brief Get high price USD
	 */
	std::string getHigh();

	/*! \brief Set high price USD
	 */
	void setHigh(std::string  high);
	/*! \brief Get low price USD
	 */
	std::string getLow();

	/*! \brief Set low price USD
	 */
	void setLow(std::string  low);
	/*! \brief Get close price USD
	 */
	std::string getClose();

	/*! \brief Set close price USD
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
