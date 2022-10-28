/*
 * TokenV3DTO.h
 *
 * Stores aggregated information for a specific token across all pairs that token is included in.
 */

#ifndef _TokenV3DTO_H_
#define _TokenV3DTO_H_


#include <string>
#include "BigInteger.h"
#include <list>
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

class TokenV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TokenV3DTO();
	TokenV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TokenV3DTO();

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
	/*! \brief Get fees in USD
	 */
	std::string getFeesUsd();

	/*! \brief Set fees in USD
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
	BigInteger getPoolCount();

	/*! \brief Set 
	 */
	void setPoolCount(BigInteger  pool_count);
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
	/*! \brief Get TVL derived in USD untracked
	 */
	std::string getTotalValueLockedUsdUntracked();

	/*! \brief Set TVL derived in USD untracked
	 */
	void setTotalValueLockedUsdUntracked(std::string  total_value_locked_usd_untracked);
	/*! \brief Get derived price in ETH
	 */
	std::string getDerivedEth();

	/*! \brief Set derived price in ETH
	 */
	void setDerivedEth(std::string  derived_eth);
	/*! \brief Get pools token is in that are white listed for USD pricing
	 */
	std::list<std::string> getWhitelistPools();

	/*! \brief Set pools token is in that are white listed for USD pricing
	 */
	void setWhitelistPools(std::list <std::string> whitelist_pools);
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
	std::string volume;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string fees_usd;
	BigInteger tx_count;
	BigInteger pool_count;
	std::string total_value_locked;
	std::string total_value_locked_usd;
	std::string total_value_locked_usd_untracked;
	std::string derived_eth;
	std::list <std::string>whitelist_pools;
	std::string token_symbol;
	void __init();
	void __cleanup();

};
}
}

#endif /* _TokenV3DTO_H_ */
