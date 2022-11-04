#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "SushiswapSwapDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

SushiswapSwapDTO::SushiswapSwapDTO()
{
	//__init();
}

SushiswapSwapDTO::~SushiswapSwapDTO()
{
	//__cleanup();
}

void
SushiswapSwapDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//transaction = std::string();
	//timestamp = std::string();
	//pair = std::string();
	//sender = std::string();
	//amount_0_in = std::string();
	//amount_1_in = std::string();
	//amount_0_out = std::string();
	//amount_1_out = std::string();
	//to = std::string();
	//log_index = std::string();
	//amount_usd = std::string();
	//vid = long(0);
	//pool_id = std::string();
	//transaction_id = std::string();
	//evaluated_price = double(0);
	//evaluated_amount = double(0);
	//evaluated_aggressor = new TransactionsETradeAggressiveSide();
}

void
SushiswapSwapDTO::__cleanup()
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
	//if(pair != NULL) {
	//
	//delete pair;
	//pair = NULL;
	//}
	//if(sender != NULL) {
	//
	//delete sender;
	//sender = NULL;
	//}
	//if(amount_0_in != NULL) {
	//
	//delete amount_0_in;
	//amount_0_in = NULL;
	//}
	//if(amount_1_in != NULL) {
	//
	//delete amount_1_in;
	//amount_1_in = NULL;
	//}
	//if(amount_0_out != NULL) {
	//
	//delete amount_0_out;
	//amount_0_out = NULL;
	//}
	//if(amount_1_out != NULL) {
	//
	//delete amount_1_out;
	//amount_1_out = NULL;
	//}
	//if(to != NULL) {
	//
	//delete to;
	//to = NULL;
	//}
	//if(log_index != NULL) {
	//
	//delete log_index;
	//log_index = NULL;
	//}
	//if(amount_usd != NULL) {
	//
	//delete amount_usd;
	//amount_usd = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
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
	//
}

void
SushiswapSwapDTO::fromJson(char* jsonStr)
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
	const gchar *pairKey = "pair";
	node = json_object_get_member(pJsonObject, pairKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pair, node, "std::string", "");
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
	const gchar *amount_0_inKey = "amount_0_in";
	node = json_object_get_member(pJsonObject, amount_0_inKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_0_in, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_1_inKey = "amount_1_in";
	node = json_object_get_member(pJsonObject, amount_1_inKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_1_in, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_0_outKey = "amount_0_out";
	node = json_object_get_member(pJsonObject, amount_0_outKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_0_out, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *amount_1_outKey = "amount_1_out";
	node = json_object_get_member(pJsonObject, amount_1_outKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount_1_out, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *toKey = "to";
	node = json_object_get_member(pJsonObject, toKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&to, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *log_indexKey = "log_index";
	node = json_object_get_member(pJsonObject, log_indexKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&log_index, node, "std::string", "");
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
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&vid, node, "long long", "");
		} else {
			
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
	

		if (isprimitive("TransactionsETradeAggressiveSide")) {
			jsonToValue(&evaluated_aggressor, node, "TransactionsETradeAggressiveSide", "TransactionsETradeAggressiveSide");
		} else {
			
			TransactionsETradeAggressiveSide* obj = static_cast<TransactionsETradeAggressiveSide*> (&evaluated_aggressor);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
}

SushiswapSwapDTO::SushiswapSwapDTO(char* json)
{
	this->fromJson(json);
}

char*
SushiswapSwapDTO::toJson()
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
		std::string obj = getPair();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *pairKey = "pair";
	json_object_set_member(pJsonObject, pairKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSender();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *senderKey = "sender";
	json_object_set_member(pJsonObject, senderKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount0In();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_0_inKey = "amount_0_in";
	json_object_set_member(pJsonObject, amount_0_inKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount1In();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_1_inKey = "amount_1_in";
	json_object_set_member(pJsonObject, amount_1_inKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount0Out();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_0_outKey = "amount_0_out";
	json_object_set_member(pJsonObject, amount_0_outKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount1Out();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_1_outKey = "amount_1_out";
	json_object_set_member(pJsonObject, amount_1_outKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTo();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *toKey = "to";
	json_object_set_member(pJsonObject, toKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLogIndex();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *log_indexKey = "log_index";
	json_object_set_member(pJsonObject, log_indexKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmountUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amount_usdKey = "amount_usd";
	json_object_set_member(pJsonObject, amount_usdKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
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
	if (isprimitive("TransactionsETradeAggressiveSide")) {
		TransactionsETradeAggressiveSide obj = getEvaluatedAggressor();
		node = converttoJson(&obj, "TransactionsETradeAggressiveSide", "");
	}
	else {
		
		TransactionsETradeAggressiveSide obj = static_cast<TransactionsETradeAggressiveSide> (getEvaluatedAggressor());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *evaluated_aggressorKey = "evaluated_aggressor";
	json_object_set_member(pJsonObject, evaluated_aggressorKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
SushiswapSwapDTO::getEntryTime()
{
	return entry_time;
}

void
SushiswapSwapDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
SushiswapSwapDTO::getRecvTime()
{
	return recv_time;
}

void
SushiswapSwapDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
SushiswapSwapDTO::getBlockNumber()
{
	return block_number;
}

void
SushiswapSwapDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
SushiswapSwapDTO::getId()
{
	return id;
}

void
SushiswapSwapDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
SushiswapSwapDTO::getTransaction()
{
	return transaction;
}

void
SushiswapSwapDTO::setTransaction(std::string  transaction)
{
	this->transaction = transaction;
}

std::string
SushiswapSwapDTO::getTimestamp()
{
	return timestamp;
}

void
SushiswapSwapDTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
SushiswapSwapDTO::getPair()
{
	return pair;
}

void
SushiswapSwapDTO::setPair(std::string  pair)
{
	this->pair = pair;
}

std::string
SushiswapSwapDTO::getSender()
{
	return sender;
}

void
SushiswapSwapDTO::setSender(std::string  sender)
{
	this->sender = sender;
}

std::string
SushiswapSwapDTO::getAmount0In()
{
	return amount_0_in;
}

void
SushiswapSwapDTO::setAmount0In(std::string  amount_0_in)
{
	this->amount_0_in = amount_0_in;
}

std::string
SushiswapSwapDTO::getAmount1In()
{
	return amount_1_in;
}

void
SushiswapSwapDTO::setAmount1In(std::string  amount_1_in)
{
	this->amount_1_in = amount_1_in;
}

std::string
SushiswapSwapDTO::getAmount0Out()
{
	return amount_0_out;
}

void
SushiswapSwapDTO::setAmount0Out(std::string  amount_0_out)
{
	this->amount_0_out = amount_0_out;
}

std::string
SushiswapSwapDTO::getAmount1Out()
{
	return amount_1_out;
}

void
SushiswapSwapDTO::setAmount1Out(std::string  amount_1_out)
{
	this->amount_1_out = amount_1_out;
}

std::string
SushiswapSwapDTO::getTo()
{
	return to;
}

void
SushiswapSwapDTO::setTo(std::string  to)
{
	this->to = to;
}

std::string
SushiswapSwapDTO::getLogIndex()
{
	return log_index;
}

void
SushiswapSwapDTO::setLogIndex(std::string  log_index)
{
	this->log_index = log_index;
}

std::string
SushiswapSwapDTO::getAmountUsd()
{
	return amount_usd;
}

void
SushiswapSwapDTO::setAmountUsd(std::string  amount_usd)
{
	this->amount_usd = amount_usd;
}

long long
SushiswapSwapDTO::getVid()
{
	return vid;
}

void
SushiswapSwapDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
SushiswapSwapDTO::getPoolId()
{
	return pool_id;
}

void
SushiswapSwapDTO::setPoolId(std::string  pool_id)
{
	this->pool_id = pool_id;
}

std::string
SushiswapSwapDTO::getTransactionId()
{
	return transaction_id;
}

void
SushiswapSwapDTO::setTransactionId(std::string  transaction_id)
{
	this->transaction_id = transaction_id;
}

double
SushiswapSwapDTO::getEvaluatedPrice()
{
	return evaluated_price;
}

void
SushiswapSwapDTO::setEvaluatedPrice(double  evaluated_price)
{
	this->evaluated_price = evaluated_price;
}

double
SushiswapSwapDTO::getEvaluatedAmount()
{
	return evaluated_amount;
}

void
SushiswapSwapDTO::setEvaluatedAmount(double  evaluated_amount)
{
	this->evaluated_amount = evaluated_amount;
}

TransactionsETradeAggressiveSide
SushiswapSwapDTO::getEvaluatedAggressor()
{
	return evaluated_aggressor;
}

void
SushiswapSwapDTO::setEvaluatedAggressor(TransactionsETradeAggressiveSide  evaluated_aggressor)
{
	this->evaluated_aggressor = evaluated_aggressor;
}


