/*
 * TokenV2DTO.h
 *
 * 
 */

#ifndef _TokenV2DTO_H_
#define _TokenV2DTO_H_


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

class TokenV2DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TokenV2DTO();
	TokenV2DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TokenV2DTO();

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
	std::string getSymbol();

	/*! \brief Set 
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	int getDecimals();

	/*! \brief Set 
	 */
	void setDecimals(int  decimals);
	/*! \brief Get 
	 */
	BigInteger getTotalSupply();

	/*! \brief Set 
	 */
	void setTotalSupply(BigInteger  total_supply);
	/*! \brief Get 
	 */
	std::string getTradeVolume();

	/*! \brief Set 
	 */
	void setTradeVolume(std::string  trade_volume);
	/*! \brief Get 
	 */
	std::string getTradeVolumeUsd();

	/*! \brief Set 
	 */
	void setTradeVolumeUsd(std::string  trade_volume_usd);
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
	std::string getTotalLiquidity();

	/*! \brief Set 
	 */
	void setTotalLiquidity(std::string  total_liquidity);
	/*! \brief Get 
	 */
	std::string getDerivedEth();

	/*! \brief Set 
	 */
	void setDerivedEth(std::string  derived_eth);
	/*! \brief Get 
	 */
	std::string getTokenSymbol();

	/*! \brief Set 
	 */
	void setTokenSymbol(std::string  token_symbol);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string id;
	std::string symbol;
	std::string name;
	int decimals;
	BigInteger total_supply;
	std::string trade_volume;
	std::string trade_volume_usd;
	std::string untracked_volume_usd;
	BigInteger tx_count;
	std::string total_liquidity;
	std::string derived_eth;
	std::string token_symbol;
	void __init();
	void __cleanup();

};
}
}

#endif /* _TokenV2DTO_H_ */
