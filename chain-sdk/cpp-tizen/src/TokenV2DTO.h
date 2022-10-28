/*
 * TokenV2DTO.h
 *
 * Stores aggregated information for a specific token across all pairs that token is included in.
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


/*! \brief Stores aggregated information for a specific token across all pairs that token is included in.
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
	/*! \brief Get token address
	 */
	std::string getId();

	/*! \brief Set token address
	 */
	void setId(std::string  id);
	/*! \brief Get token symbol
	 */
	std::string getSymbol();

	/*! \brief Set token symbol
	 */
	void setSymbol(std::string  symbol);
	/*! \brief Get token name
	 */
	std::string getName();

	/*! \brief Set token name
	 */
	void setName(std::string  name);
	/*! \brief Get token decimals
	 */
	int getDecimals();

	/*! \brief Set token decimals
	 */
	void setDecimals(int  decimals);
	/*! \brief Get 
	 */
	BigInteger getTotalSupply();

	/*! \brief Set 
	 */
	void setTotalSupply(BigInteger  total_supply);
	/*! \brief Get amount of token traded all time across all pairs
	 */
	std::string getTradeVolume();

	/*! \brief Set amount of token traded all time across all pairs
	 */
	void setTradeVolume(std::string  trade_volume);
	/*! \brief Get amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold)
	 */
	std::string getTradeVolumeUsd();

	/*! \brief Set amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold)
	 */
	void setTradeVolumeUsd(std::string  trade_volume_usd);
	/*! \brief Get amount of token in USD traded all time across pairs (no minimum liquidity threshold)
	 */
	std::string getUntrackedVolumeUsd();

	/*! \brief Set amount of token in USD traded all time across pairs (no minimum liquidity threshold)
	 */
	void setUntrackedVolumeUsd(std::string  untracked_volume_usd);
	/*! \brief Get 
	 */
	BigInteger getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(BigInteger  tx_count);
	/*! \brief Get total amount of token provided as liquidity across all pairs
	 */
	std::string getTotalLiquidity();

	/*! \brief Set total amount of token provided as liquidity across all pairs
	 */
	void setTotalLiquidity(std::string  total_liquidity);
	/*! \brief Get ETH per token
	 */
	std::string getDerivedEth();

	/*! \brief Set ETH per token
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
