#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SwapV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SwapV3DTO::SwapV3DTO()
{
	//__init();
}

SwapV3DTO::~SwapV3DTO()
{
	//__cleanup();
}

void
SwapV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = long(0);
	//id = std::string();
	//transaction = std::string();
	//timestamp = null;
	//pool = std::string();
	//token_0 = std::string();
	//token_1 = std::string();
	//sender = std::string();
	//recipient = std::string();
	//origin = std::string();
	//amount_0 = std::string();
	//amount_1 = std::string();
	//amount_usd = std::string();
	//sqrt_price_x96 = new BigInteger();
	//tick = new BigInteger();
	//log_index = new BigInteger();
	//evaluated_price = double(0);
	//evaluated_amount = double(0);
	//evaluated_aggressor = new ETradeAggressiveSide();
	//pool_id = std::string();
	//transaction_id = std::string();
}

void
SwapV3DTO::__cleanup()
{
	//if(entry_time != NULL) {
	//
	//delete entry_time;
	//entry_time = NULL;
	//}
	//if(recv_time != NULL) {
	//
	//delete recv_time;
	//recv_time = NULL;
	//}
	//if(block_number != NULL) {
	//
	//delete block_number;
	//block_number = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//if(id != NULL) {
	//
	//delete id;
	//id = NULL;
	//}
	//if(transaction != NULL) {
	//
	//delete transaction;
	//transaction = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(pool != NULL) {
	//
	//delete pool;
	//pool = NULL;
	//}
	//if(token_0 != NULL) {
	//
	//delete token_0;
	//token_0 = NULL;
	//}
	//if(token_1 != NULL) {
	//
	//delete token_1;
	//token_1 = NULL;
	//}
	//if(sender != NULL) {
	//
	//delete sender;
	//sender = NULL;
	//}
	//if(recipient != NULL) {
	//
	//delete recipient;
	//recipient = NULL;
	//}
	//if(origin != NULL) {
	//
	//delete origin;
	//origin = NULL;
	//}
	//if(amount_0 != NULL) {
	//
	//delete amount_0;
	//amount_0 = NULL;
	//}
	//if(amount_1 != NULL) {
	//
	//delete amount_1;
	//amount_1 = NULL;
	//}
	//if(amount_usd != NULL) {
	//
	//delete amount_usd;
	//amount_usd = NULL;
	//}
	//if(sqrt_price_x96 != NULL) {
	//
	//delete sqrt_price_x96;
	//sqrt_price_x96 = NULL;
	//}
	//if(tick != NULL) {
	//
	//delete tick;
	//tick = NULL;
	//}
	//if(log_index != NULL) {
	//
	//delete log_index;
	//log_index = NULL;
	//}
	//if(evaluated_price != NULL) {
	//
	//delete evaluated_price;
	//evaluated_price = NULL;
	//}
	//if(evaluated_amount != NULL) {
	//
	//delete evaluated_amount;
	//evaluated_amount = NULL;
	//}
	//if(evaluated_aggressor != NULL) {
	//
	//delete evaluated_aggressor;
	//evaluated_aggressor = NULL;
	//}
	//if(pool_id != NULL) {
	//
	//delete pool_id;
	//pool_id = NULL;
	//}
	//if(transaction_id != NULL) {
	//
	//delete transaction_id;
	//transaction_id = NULL;
	//}
	//
}

void
SwapV3DTO::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *entry_timeKey = "entry_time";
	node = json_object_get_member(pJsonObject, entry_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&entry_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recv_timeKey = "recv_time";
	node = json_object_get_member(pJsonObject, recv_timeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recv_time, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *block_numberKey = "block_number";
	node = json_object_get_member(pJsonObject, block_numberKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&block_number, node, "long long", "");
		} else {
			
		}
	}
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&vid, node, "long long", "");
		} else {
			
		}
	}
	const gchar *idKey = "id";
	node = json_object_get_member(pJsonObject, idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *transactionKey = "transaction";
	node = json_object_get_member(pJsonObject, transactionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&transaction, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *poolKey = "pool";
	node = json_object_get_member(pJsonObject, poolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pool, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *token_0Key = "token_0";
	node = json_object_get_member(pJsonObject, token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *token_1Key = "token_1";
	node = json_object_get_member(pJsonObject, token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *senderKey = "sender";
	node = json_object_get_member(pJsonObject, senderKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&sender, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *recipientKey = "recipient";
	node = json_object_get_member(pJsonObject, recipientKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&recipient, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *originKey = "origin";
	node = json_object_get_member(pJsonObject, originKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&origin, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_0Key = "amount_0";
	node = json_object_get_member(pJsonObject, amount_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_1Key = "amount_1";
	node = json_object_get_member(pJsonObject, amount_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_usdKey = "amount_usd";
	node = json_object_get_member(pJsonObject, amount_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *sqrt_price_x96Key = "sqrt_price_x96";
	node = json_object_get_member(pJsonObject, sqrt_price_x96Key);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&sqrt_price_x96, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&sqrt_price_x96);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *tickKey = "tick";
	node = json_object_get_member(pJsonObject, tickKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&tick, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&tick);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *log_indexKey = "log_index";
	node = json_object_get_member(pJsonObject, log_indexKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&log_index, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&log_index);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *evaluated_priceKey = "evaluated_price";
	node = json_object_get_member(pJsonObject, evaluated_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&evaluated_price, node, "double", "");
		} else {
			
		}
	}
	const gchar *evaluated_amountKey = "evaluated_amount";
	node = json_object_get_member(pJsonObject, evaluated_amountKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&evaluated_amount, node, "double", "");
		} else {
			
		}
	}
	const gchar *evaluated_aggressorKey = "evaluated_aggressor";
	node = json_object_get_member(pJsonObject, evaluated_aggressorKey);
	if (node !=NULL) {
	

		if (isprimitive("ETradeAggressiveSide")) {
			jsonToValue(&evaluated_aggressor, node, "ETradeAggressiveSide", "ETradeAggressiveSide");
		} else {
			
			ETradeAggressiveSide* obj = static_cast<ETradeAggressiveSide*> (&evaluated_aggressor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *pool_idKey = "pool_id";
	node = json_object_get_member(pJsonObject, pool_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pool_id, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *transaction_idKey = "transaction_id";
	node = json_object_get_member(pJsonObject, transaction_idKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&transaction_id, node, "std::string", "");
		} else {
			
		}
	}
}

SwapV3DTO::SwapV3DTO(char* json)
{
	this->fromJson(json);
}

char*
SwapV3DTO::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getEntryTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *entry_timeKey = "entry_time";
	json_object_set_member(pJsonObject, entry_timeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecvTime();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recv_timeKey = "recv_time";
	json_object_set_member(pJsonObject, recv_timeKey, node);
	if (isprimitive("long long")) {
		long long obj = getBlockNumber();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *block_numberKey = "block_number";
	json_object_set_member(pJsonObject, block_numberKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *idKey = "id";
	json_object_set_member(pJsonObject, idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTransaction();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *transactionKey = "transaction";
	json_object_set_member(pJsonObject, transactionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPool();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *poolKey = "pool";
	json_object_set_member(pJsonObject, poolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_0Key = "token_0";
	json_object_set_member(pJsonObject, token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_1Key = "token_1";
	json_object_set_member(pJsonObject, token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getSender();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *senderKey = "sender";
	json_object_set_member(pJsonObject, senderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRecipient();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *recipientKey = "recipient";
	json_object_set_member(pJsonObject, recipientKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrigin();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *originKey = "origin";
	json_object_set_member(pJsonObject, originKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_0Key = "amount_0";
	json_object_set_member(pJsonObject, amount_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_1Key = "amount_1";
	json_object_set_member(pJsonObject, amount_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmountUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_usdKey = "amount_usd";
	json_object_set_member(pJsonObject, amount_usdKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getSqrtPriceX96();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getSqrtPriceX96());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *sqrt_price_x96Key = "sqrt_price_x96";
	json_object_set_member(pJsonObject, sqrt_price_x96Key, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getTick();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getTick());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *tickKey = "tick";
	json_object_set_member(pJsonObject, tickKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getLogIndex();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getLogIndex());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *log_indexKey = "log_index";
	json_object_set_member(pJsonObject, log_indexKey, node);
	if (isprimitive("double")) {
		double obj = getEvaluatedPrice();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *evaluated_priceKey = "evaluated_price";
	json_object_set_member(pJsonObject, evaluated_priceKey, node);
	if (isprimitive("double")) {
		double obj = getEvaluatedAmount();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *evaluated_amountKey = "evaluated_amount";
	json_object_set_member(pJsonObject, evaluated_amountKey, node);
	if (isprimitive("ETradeAggressiveSide")) {
		ETradeAggressiveSide obj = getEvaluatedAggressor();
		node = converttoJson(&obj, "ETradeAggressiveSide", "");
	}
	else {
		
		ETradeAggressiveSide obj = static_cast<ETradeAggressiveSide> (getEvaluatedAggressor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *evaluated_aggressorKey = "evaluated_aggressor";
	json_object_set_member(pJsonObject, evaluated_aggressorKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPoolId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pool_idKey = "pool_id";
	json_object_set_member(pJsonObject, pool_idKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTransactionId();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *transaction_idKey = "transaction_id";
	json_object_set_member(pJsonObject, transaction_idKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SwapV3DTO::getEntryTime()
{
	return entry_time;
}

void
SwapV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
SwapV3DTO::getRecvTime()
{
	return recv_time;
}

void
SwapV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
SwapV3DTO::getBlockNumber()
{
	return block_number;
}

void
SwapV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

long long
SwapV3DTO::getVid()
{
	return vid;
}

void
SwapV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
SwapV3DTO::getId()
{
	return id;
}

void
SwapV3DTO::setId(std::string  id)
{
	this->id = id;
}

std::string
SwapV3DTO::getTransaction()
{
	return transaction;
}

void
SwapV3DTO::setTransaction(std::string  transaction)
{
	this->transaction = transaction;
}

std::string
SwapV3DTO::getTimestamp()
{
	return timestamp;
}

void
SwapV3DTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
SwapV3DTO::getPool()
{
	return pool;
}

void
SwapV3DTO::setPool(std::string  pool)
{
	this->pool = pool;
}

std::string
SwapV3DTO::getToken0()
{
	return token_0;
}

void
SwapV3DTO::setToken0(std::string  token_0)
{
	this->token_0 = token_0;
}

std::string
SwapV3DTO::getToken1()
{
	return token_1;
}

void
SwapV3DTO::setToken1(std::string  token_1)
{
	this->token_1 = token_1;
}

std::string
SwapV3DTO::getSender()
{
	return sender;
}

void
SwapV3DTO::setSender(std::string  sender)
{
	this->sender = sender;
}

std::string
SwapV3DTO::getRecipient()
{
	return recipient;
}

void
SwapV3DTO::setRecipient(std::string  recipient)
{
	this->recipient = recipient;
}

std::string
SwapV3DTO::getOrigin()
{
	return origin;
}

void
SwapV3DTO::setOrigin(std::string  origin)
{
	this->origin = origin;
}

std::string
SwapV3DTO::getAmount0()
{
	return amount_0;
}

void
SwapV3DTO::setAmount0(std::string  amount_0)
{
	this->amount_0 = amount_0;
}

std::string
SwapV3DTO::getAmount1()
{
	return amount_1;
}

void
SwapV3DTO::setAmount1(std::string  amount_1)
{
	this->amount_1 = amount_1;
}

std::string
SwapV3DTO::getAmountUsd()
{
	return amount_usd;
}

void
SwapV3DTO::setAmountUsd(std::string  amount_usd)
{
	this->amount_usd = amount_usd;
}

BigInteger
SwapV3DTO::getSqrtPriceX96()
{
	return sqrt_price_x96;
}

void
SwapV3DTO::setSqrtPriceX96(BigInteger  sqrt_price_x96)
{
	this->sqrt_price_x96 = sqrt_price_x96;
}

BigInteger
SwapV3DTO::getTick()
{
	return tick;
}

void
SwapV3DTO::setTick(BigInteger  tick)
{
	this->tick = tick;
}

BigInteger
SwapV3DTO::getLogIndex()
{
	return log_index;
}

void
SwapV3DTO::setLogIndex(BigInteger  log_index)
{
	this->log_index = log_index;
}

double
SwapV3DTO::getEvaluatedPrice()
{
	return evaluated_price;
}

void
SwapV3DTO::setEvaluatedPrice(double  evaluated_price)
{
	this->evaluated_price = evaluated_price;
}

double
SwapV3DTO::getEvaluatedAmount()
{
	return evaluated_amount;
}

void
SwapV3DTO::setEvaluatedAmount(double  evaluated_amount)
{
	this->evaluated_amount = evaluated_amount;
}

ETradeAggressiveSide
SwapV3DTO::getEvaluatedAggressor()
{
	return evaluated_aggressor;
}

void
SwapV3DTO::setEvaluatedAggressor(ETradeAggressiveSide  evaluated_aggressor)
{
	this->evaluated_aggressor = evaluated_aggressor;
}

std::string
SwapV3DTO::getPoolId()
{
	return pool_id;
}

void
SwapV3DTO::setPoolId(std::string  pool_id)
{
	this->pool_id = pool_id;
}

std::string
SwapV3DTO::getTransactionId()
{
	return transaction_id;
}

void
SwapV3DTO::setTransactionId(std::string  transaction_id)
{
	this->transaction_id = transaction_id;
}


