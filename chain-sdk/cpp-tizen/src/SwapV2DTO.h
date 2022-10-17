/*
 * SwapV2DTO.h
 *
 * 
 */

#ifndef _SwapV2DTO_H_
#define _SwapV2DTO_H_


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

class SwapV2DTO : public Object {
public:
	/*! \brief Constructor.
	 */
	SwapV2DTO();
	SwapV2DTO(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SwapV2DTO();

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
	std::string getPair();

	/*! \brief Set 
	 */
	void setPair(std::string  pair);
	/*! \brief Get 
	 */
	std::string getSender();

	/*! \brief Set 
	 */
	void setSender(std::string  sender);
	/*! \brief Get 
	 */
	std::string getFrom();

	/*! \brief Set 
	 */
	void setFrom(std::string  from);
	/*! \brief Get 
	 */
	std::string getAmount0In();

	/*! \brief Set 
	 */
	void setAmount0In(std::string  amount_0_in);
	/*! \brief Get 
	 */
	std::string getAmount1In();

	/*! \brief Set 
	 */
	void setAmount1In(std::string  amount_1_in);
	/*! \brief Get 
	 */
	std::string getAmount0Out();

	/*! \brief Set 
	 */
	void setAmount0Out(std::string  amount_0_out);
	/*! \brief Get 
	 */
	std::string getAmount1Out();

	/*! \brief Set 
	 */
	void setAmount1Out(std::string  amount_1_out);
	/*! \brief Get 
	 */
	std::string getTo();

	/*! \brief Set 
	 */
	void setTo(std::string  to);
	/*! \brief Get 
	 */
	BigInteger getLogIndex();

	/*! \brief Set 
	 */
	void setLogIndex(BigInteger  log_index);
	/*! \brief Get 
	 */
	std::string getAmountUsd();

	/*! \brief Set 
	 */
	void setAmountUsd(std::string  amount_usd);
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
	std::string pair;
	std::string sender;
	std::string from;
	std::string amount_0_in;
	std::string amount_1_in;
	std::string amount_0_out;
	std::string amount_1_out;
	std::string to;
	BigInteger log_index;
	std::string amount_usd;
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

#endif /* _SwapV2DTO_H_ */
