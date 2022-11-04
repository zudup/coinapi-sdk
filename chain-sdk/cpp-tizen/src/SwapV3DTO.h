/*
 * SwapV3DTO.h
 *
 * Swap are created for each token swap within a pair.
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


/*! \brief Swap are created for each token swap within a pair.
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
	/*! \brief Get Number of block in which entity was recorded.
	 */
	long long getBlockNumber();

	/*! \brief Set Number of block in which entity was recorded.
	 */
	void setBlockNumber(long long  block_number);
	/*! \brief Get 
	 */
	long long getVid();

	/*! \brief Set 
	 */
	void setVid(long long  vid);
	/*! \brief Get Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
	 */
	std::string getId();

	/*! \brief Set Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
	 */
	void setId(std::string  id);
	/*! \brief Get Pointer to transaction.
	 */
	std::string getTransaction();

	/*! \brief Set Pointer to transaction.
	 */
	void setTransaction(std::string  transaction);
	/*! \brief Get Timestamp of transaction.
	 */
	std::string getTimestamp();

	/*! \brief Set Timestamp of transaction.
	 */
	void setTimestamp(std::string  timestamp);
	/*! \brief Get Pool swap occured within.
	 */
	std::string getPool();

	/*! \brief Set Pool swap occured within.
	 */
	void setPool(std::string  pool);
	/*! \brief Get Reference to token0 as stored in pair contract.
	 */
	std::string getToken0();

	/*! \brief Set Reference to token0 as stored in pair contract.
	 */
	void setToken0(std::string  token_0);
	/*! \brief Get Reference to token1 as stored in pair contract.
	 */
	std::string getToken1();

	/*! \brief Set Reference to token1 as stored in pair contract.
	 */
	void setToken1(std::string  token_1);
	/*! \brief Get Sender of the swap.
	 */
	std::string getSender();

	/*! \brief Set Sender of the swap.
	 */
	void setSender(std::string  sender);
	/*! \brief Get Recipient of the swap.
	 */
	std::string getRecipient();

	/*! \brief Set Recipient of the swap.
	 */
	void setRecipient(std::string  recipient);
	/*! \brief Get Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
	 */
	std::string getOrigin();

	/*! \brief Set Transaction origin: the EOA (Externally Owned Account) that initiated the transaction
	 */
	void setOrigin(std::string  origin);
	/*! \brief Get Delta of token0 swapped.
	 */
	std::string getAmount0();

	/*! \brief Set Delta of token0 swapped.
	 */
	void setAmount0(std::string  amount_0);
	/*! \brief Get Delta of token1 swapped.
	 */
	std::string getAmount1();

	/*! \brief Set Delta of token1 swapped.
	 */
	void setAmount1(std::string  amount_1);
	/*! \brief Get Derived amount of tokens sold in USD.
	 */
	std::string getAmountUsd();

	/*! \brief Set Derived amount of tokens sold in USD.
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
