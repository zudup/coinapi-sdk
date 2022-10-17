/*
 * TokenDTO.h
 *
 * 
 */

#ifndef _TokenDTO_H_
#define _TokenDTO_H_


#include <string>
#include <list>
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

class TokenDTO : public Object {
public:
	/*! \brief Constructor.
	 */
	TokenDTO();
	TokenDTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~TokenDTO();

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
	std::string getFactory();

	/*! \brief Set 
	 */
	void setFactory(std::string  factory);
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
	std::string getDecimals();

	/*! \brief Set 
	 */
	void setDecimals(std::string  decimals);
	/*! \brief Get 
	 */
	std::string getTotalSupply();

	/*! \brief Set 
	 */
	void setTotalSupply(std::string  total_supply);
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
	std::string getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(std::string  tx_count);
	/*! \brief Get 
	 */
	std::string getLiquidity();

	/*! \brief Set 
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get 
	 */
	std::string getDerivedEth();

	/*! \brief Set 
	 */
	void setDerivedEth(std::string  derived_eth);
	/*! \brief Get 
	 */
	std::list<std::string> getWhitelistPairs();

	/*! \brief Set 
	 */
	void setWhitelistPairs(std::list <std::string> whitelist_pairs);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
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
	std::string id;
	std::string factory;
	std::string symbol;
	std::string name;
	std::string decimals;
	std::string total_supply;
	std::string volume;
	std::string volume_usd;
	std::string untracked_volume_usd;
	std::string tx_count;
	std::string liquidity;
	std::string derived_eth;
	std::list <std::string>whitelist_pairs;
	long long vid;
	std::string token_symbol;
	void __init();
	void __cleanup();

};
}
}

#endif /* _TokenDTO_H_ */
