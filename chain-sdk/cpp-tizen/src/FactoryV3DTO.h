/*
 * FactoryV3DTO.h
 *
 * 
 */

#ifndef _FactoryV3DTO_H_
#define _FactoryV3DTO_H_


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

class FactoryV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	FactoryV3DTO();
	FactoryV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~FactoryV3DTO();

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
	std::string getPoolCount();

	/*! \brief Set 
	 */
	void setPoolCount(std::string  pool_count);
	/*! \brief Get 
	 */
	std::string getTxCount();

	/*! \brief Set 
	 */
	void setTxCount(std::string  tx_count);
	/*! \brief Get 
	 */
	std::string getTotalVolumeUsd();

	/*! \brief Set 
	 */
	void setTotalVolumeUsd(std::string  total_volume_usd);
	/*! \brief Get 
	 */
	std::string getTotalVolumeEth();

	/*! \brief Set 
	 */
	void setTotalVolumeEth(std::string  total_volume_eth);
	/*! \brief Get 
	 */
	std::string getTotalFeesUsd();

	/*! \brief Set 
	 */
	void setTotalFeesUsd(std::string  total_fees_usd);
	/*! \brief Get 
	 */
	std::string getTotalFeesEth();

	/*! \brief Set 
	 */
	void setTotalFeesEth(std::string  total_fees_eth);
	/*! \brief Get 
	 */
	std::string getUntrackedVolumeUsd();

	/*! \brief Set 
	 */
	void setUntrackedVolumeUsd(std::string  untracked_volume_usd);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedUsd();

	/*! \brief Set 
	 */
	void setTotalValueLockedUsd(std::string  total_value_locked_usd);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedEth();

	/*! \brief Set 
	 */
	void setTotalValueLockedEth(std::string  total_value_locked_eth);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedUsdUntracked();

	/*! \brief Set 
	 */
	void setTotalValueLockedUsdUntracked(std::string  total_value_locked_usd_untracked);
	/*! \brief Get 
	 */
	std::string getTotalValueLockedEthUntracked();

	/*! \brief Set 
	 */
	void setTotalValueLockedEthUntracked(std::string  total_value_locked_eth_untracked);
	/*! \brief Get 
	 */
	std::string getOwner();

	/*! \brief Set 
	 */
	void setOwner(std::string  owner);
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
	std::string pool_count;
	std::string tx_count;
	std::string total_volume_usd;
	std::string total_volume_eth;
	std::string total_fees_usd;
	std::string total_fees_eth;
	std::string untracked_volume_usd;
	std::string total_value_locked_usd;
	std::string total_value_locked_eth;
	std::string total_value_locked_usd_untracked;
	std::string total_value_locked_eth_untracked;
	std::string owner;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _FactoryV3DTO_H_ */
