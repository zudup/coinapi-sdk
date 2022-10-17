/*
 * BurnV3DTO.h
 *
 * 
 */

#ifndef _BurnV3DTO_H_
#define _BurnV3DTO_H_


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

class BurnV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	BurnV3DTO();
	BurnV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~BurnV3DTO();

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
	std::string getTransaction();

	/*! \brief Set 
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get 
	 */
	std::string getPool();

	/*! \brief Set 
	 */
	void setPool(std::string  pool);
	/*! \brief Get 
	 */
	std::string getToken0();

	/*! \brief Set 
	 */
	void setToken0(std::string  token_0);
	/*! \brief Get 
	 */
	std::string getToken1();

	/*! \brief Set 
	 */
	void setToken1(std::string  token_1);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get 
	 */
	std::string getOwner();

	/*! \brief Set 
	 */
	void setOwner(std::string  owner);
	/*! \brief Get 
	 */
	std::string getOrigin();

	/*! \brief Set 
	 */
	void setOrigin(std::string  origin);
	/*! \brief Get 
	 */
	std::string getAmount();

	/*! \brief Set 
	 */
	void setAmount(std::string  amount);
	/*! \brief Get 
	 */
	std::string getAmount0();

	/*! \brief Set 
	 */
	void setAmount0(std::string  amount_0);
	/*! \brief Get 
	 */
	std::string getAmount1();

	/*! \brief Set 
	 */
	void setAmount1(std::string  amount_1);
	/*! \brief Get 
	 */
	std::string getAmountUsd();

	/*! \brief Set 
	 */
	void setAmountUsd(std::string  amount_usd);
	/*! \brief Get 
	 */
	std::string getTickLower();

	/*! \brief Set 
	 */
	void setTickLower(std::string  tick_lower);
	/*! \brief Get 
	 */
	std::string getTickUpper();

	/*! \brief Set 
	 */
	void setTickUpper(std::string  tick_upper);
	/*! \brief Get 
	 */
	std::string getLogIndex();

	/*! \brief Set 
	 */
	void setLogIndex(std::string  log_index);
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
	std::string transaction;
	std::string pool;
	std::string token_0;
	std::string token_1;
	std::string timestamp;
	std::string owner;
	std::string origin;
	std::string amount;
	std::string amount_0;
	std::string amount_1;
	std::string amount_usd;
	std::string tick_lower;
	std::string tick_upper;
	std::string log_index;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _BurnV3DTO_H_ */
