/*
 * PositionV3DTO.h
 *
 * 
 */

#ifndef _PositionV3DTO_H_
#define _PositionV3DTO_H_


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

class PositionV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	PositionV3DTO();
	PositionV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~PositionV3DTO();

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
	std::string getOwner();

	/*! \brief Set 
	 */
	void setOwner(std::string  owner);
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
	std::string getLiquidity();

	/*! \brief Set 
	 */
	void setLiquidity(std::string  liquidity);
	/*! \brief Get 
	 */
	std::string getDepositedToken0();

	/*! \brief Set 
	 */
	void setDepositedToken0(std::string  deposited_token_0);
	/*! \brief Get 
	 */
	std::string getDepositedToken1();

	/*! \brief Set 
	 */
	void setDepositedToken1(std::string  deposited_token_1);
	/*! \brief Get 
	 */
	std::string getWithdrawnToken0();

	/*! \brief Set 
	 */
	void setWithdrawnToken0(std::string  withdrawn_token_0);
	/*! \brief Get 
	 */
	std::string getWithdrawnToken1();

	/*! \brief Set 
	 */
	void setWithdrawnToken1(std::string  withdrawn_token_1);
	/*! \brief Get 
	 */
	std::string getCollectedFeesToken0();

	/*! \brief Set 
	 */
	void setCollectedFeesToken0(std::string  collected_fees_token_0);
	/*! \brief Get 
	 */
	std::string getCollectedFeesToken1();

	/*! \brief Set 
	 */
	void setCollectedFeesToken1(std::string  collected_fees_token_1);
	/*! \brief Get 
	 */
	std::string getTransaction();

	/*! \brief Set 
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get 
	 */
	std::string getFeeGrowthInside0LastX128();

	/*! \brief Set 
	 */
	void setFeeGrowthInside0LastX128(std::string  fee_growth_inside_0_last_x128);
	/*! \brief Get 
	 */
	std::string getFeeGrowthInside1LastX128();

	/*! \brief Set 
	 */
	void setFeeGrowthInside1LastX128(std::string  fee_growth_inside_1_last_x128);
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
	std::string owner;
	std::string pool;
	std::string token_0;
	std::string token_1;
	std::string tick_lower;
	std::string tick_upper;
	std::string liquidity;
	std::string deposited_token_0;
	std::string deposited_token_1;
	std::string withdrawn_token_0;
	std::string withdrawn_token_1;
	std::string collected_fees_token_0;
	std::string collected_fees_token_1;
	std::string transaction;
	std::string fee_growth_inside_0_last_x128;
	std::string fee_growth_inside_1_last_x128;
	long long vid;
	void __init();
	void __cleanup();

};
}
}

#endif /* _PositionV3DTO_H_ */
