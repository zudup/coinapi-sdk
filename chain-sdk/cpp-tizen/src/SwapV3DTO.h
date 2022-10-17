/*
 * SwapV3DTO.h
 *
 * 
 */

#ifndef _SwapV3DTO_H_
#define _SwapV3DTO_H_


#include <string>
#include "BigInteger.h"
#include "ETradeAggressiveSide.h"
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

class SwapV3DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	SwapV3DTO();
	SwapV3DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SwapV3DTO();

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
	std::string getTransaction();

	/*! \brief Set 
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get 
	 */
	std::string getTimestamp();

	/*! \brief Set 
	 */
	void setTimestamp(std::string  timestamp);
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
	std::string getSender();

	/*! \brief Set 
	 */
	void setSender(std::string  sender);
	/*! \brief Get 
	 */
	std::string getRecipient();

	/*! \brief Set 
	 */
	void setRecipient(std::string  recipient);
	/*! \brief Get 
	 */
	std::string getOrigin();

	/*! \brief Set 
	 */
	void setOrigin(std::string  origin);
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
	BigInteger getSqrtPriceX96();

	/*! \brief Set 
	 */
	void setSqrtPriceX96(BigInteger  sqrt_price_x96);
	/*! \brief Get 
	 */
	BigInteger getTick();

	/*! \brief Set 
	 */
	void setTick(BigInteger  tick);
	/*! \brief Get 
	 */
	BigInteger getLogIndex();

	/*! \brief Set 
	 */
	void setLogIndex(BigInteger  log_index);
	/*! \brief Get 
	 */
	double getEvaluatedPrice();

	/*! \brief Set 
	 */
	void setEvaluatedPrice(double  evaluated_price);
	/*! \brief Get 
	 */
	double getEvaluatedAmount();

	/*! \brief Set 
	 */
	void setEvaluatedAmount(double  evaluated_amount);
	/*! \brief Get 
	 */
	ETradeAggressiveSide getEvaluatedAggressor();

	/*! \brief Set 
	 */
	void setEvaluatedAggressor(ETradeAggressiveSide  evaluated_aggressor);
	/*! \brief Get 
	 */
	std::string getPoolId();

	/*! \brief Set 
	 */
	void setPoolId(std::string  pool_id);
	/*! \brief Get 
	 */
	std::string getTransactionId();

	/*! \brief Set 
	 */
	void setTransactionId(std::string  transaction_id);

private:
	std::string entry_time;
	std::string recv_time;
	long long block_number;
	long long vid;
	std::string id;
	std::string transaction;
	std::string timestamp;
	std::string pool;
	std::string token_0;
	std::string token_1;
	std::string sender;
	std::string recipient;
	std::string origin;
	std::string amount_0;
	std::string amount_1;
	std::string amount_usd;
	BigInteger sqrt_price_x96;
	BigInteger tick;
	BigInteger log_index;
	double evaluated_price;
	double evaluated_amount;
	ETradeAggressiveSide evaluated_aggressor;
	std::string pool_id;
	std::string transaction_id;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SwapV3DTO_H_ */
