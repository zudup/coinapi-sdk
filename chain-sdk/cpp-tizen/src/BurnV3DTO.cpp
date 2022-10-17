#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "BurnV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

BurnV3DTO::BurnV3DTO()
{
	//__init();
}

BurnV3DTO::~BurnV3DTO()
{
	//__cleanup();
}

void
BurnV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//transaction = std::string();
	//pool = std::string();
	//token_0 = std::string();
	//token_1 = std::string();
	//timestamp = std::string();
	//owner = std::string();
	//origin = std::string();
	//amount = std::string();
	//amount_0 = std::string();
	//amount_1 = std::string();
	//amount_usd = std::string();
	//tick_lower = std::string();
	//tick_upper = std::string();
	//log_index = std::string();
	//vid = long(0);
}

void
BurnV3DTO::__cleanup()
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
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(owner != NULL) {
	//
	//delete owner;
	//owner = NULL;
	//}
	//if(origin != NULL) {
	//
	//delete origin;
	//origin = NULL;
	//}
	//if(amount != NULL) {
	//
	//delete amount;
	//amount = NULL;
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
	//if(tick_lower != NULL) {
	//
	//delete tick_lower;
	//tick_lower = NULL;
	//}
	//if(tick_upper != NULL) {
	//
	//delete tick_upper;
	//tick_upper = NULL;
	//}
	//if(log_index != NULL) {
	//
	//delete log_index;
	//log_index = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//
}

void
BurnV3DTO::fromJson(char* jsonStr)
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
	const gchar *timestampKey = "timestamp";
	node = json_object_get_member(pJsonObject, timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&timestamp, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *ownerKey = "owner";
	node = json_object_get_member(pJsonObject, ownerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&owner, node, "std::string", "");
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
	const gchar *amountKey = "amount";
	node = json_object_get_member(pJsonObject, amountKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&amount, node, "std::string", "");
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
	const gchar *tick_lowerKey = "tick_lower";
	node = json_object_get_member(pJsonObject, tick_lowerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tick_lower, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tick_upperKey = "tick_upper";
	node = json_object_get_member(pJsonObject, tick_upperKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tick_upper, node, "std::string", "");
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
	const gchar *vidKey = "vid";
	node = json_object_get_member(pJsonObject, vidKey);
	if (node !=NULL) {
	

		if (isprimitive("long long")) {
			jsonToValue(&vid, node, "long long", "");
		} else {
			
		}
	}
}

BurnV3DTO::BurnV3DTO(char* json)
{
	this->fromJson(json);
}

char*
BurnV3DTO::toJson()
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
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOwner();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ownerKey = "owner";
	json_object_set_member(pJsonObject, ownerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOrigin();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *originKey = "origin";
	json_object_set_member(pJsonObject, originKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getAmount();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *amountKey = "amount";
	json_object_set_member(pJsonObject, amountKey, node);
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
	if (isprimitive("std::string")) {
		std::string obj = getTickLower();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tick_lowerKey = "tick_lower";
	json_object_set_member(pJsonObject, tick_lowerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTickUpper();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tick_upperKey = "tick_upper";
	json_object_set_member(pJsonObject, tick_upperKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLogIndex();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *log_indexKey = "log_index";
	json_object_set_member(pJsonObject, log_indexKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
BurnV3DTO::getEntryTime()
{
	return entry_time;
}

void
BurnV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
BurnV3DTO::getRecvTime()
{
	return recv_time;
}

void
BurnV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
BurnV3DTO::getBlockNumber()
{
	return block_number;
}

void
BurnV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
BurnV3DTO::getId()
{
	return id;
}

void
BurnV3DTO::setId(std::string  id)
{
	this->id = id;
}

std::string
BurnV3DTO::getTransaction()
{
	return transaction;
}

void
BurnV3DTO::setTransaction(std::string  transaction)
{
	this->transaction = transaction;
}

std::string
BurnV3DTO::getPool()
{
	return pool;
}

void
BurnV3DTO::setPool(std::string  pool)
{
	this->pool = pool;
}

std::string
BurnV3DTO::getToken0()
{
	return token_0;
}

void
BurnV3DTO::setToken0(std::string  token_0)
{
	this->token_0 = token_0;
}

std::string
BurnV3DTO::getToken1()
{
	return token_1;
}

void
BurnV3DTO::setToken1(std::string  token_1)
{
	this->token_1 = token_1;
}

std::string
BurnV3DTO::getTimestamp()
{
	return timestamp;
}

void
BurnV3DTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
BurnV3DTO::getOwner()
{
	return owner;
}

void
BurnV3DTO::setOwner(std::string  owner)
{
	this->owner = owner;
}

std::string
BurnV3DTO::getOrigin()
{
	return origin;
}

void
BurnV3DTO::setOrigin(std::string  origin)
{
	this->origin = origin;
}

std::string
BurnV3DTO::getAmount()
{
	return amount;
}

void
BurnV3DTO::setAmount(std::string  amount)
{
	this->amount = amount;
}

std::string
BurnV3DTO::getAmount0()
{
	return amount_0;
}

void
BurnV3DTO::setAmount0(std::string  amount_0)
{
	this->amount_0 = amount_0;
}

std::string
BurnV3DTO::getAmount1()
{
	return amount_1;
}

void
BurnV3DTO::setAmount1(std::string  amount_1)
{
	this->amount_1 = amount_1;
}

std::string
BurnV3DTO::getAmountUsd()
{
	return amount_usd;
}

void
BurnV3DTO::setAmountUsd(std::string  amount_usd)
{
	this->amount_usd = amount_usd;
}

std::string
BurnV3DTO::getTickLower()
{
	return tick_lower;
}

void
BurnV3DTO::setTickLower(std::string  tick_lower)
{
	this->tick_lower = tick_lower;
}

std::string
BurnV3DTO::getTickUpper()
{
	return tick_upper;
}

void
BurnV3DTO::setTickUpper(std::string  tick_upper)
{
	this->tick_upper = tick_upper;
}

std::string
BurnV3DTO::getLogIndex()
{
	return log_index;
}

void
BurnV3DTO::setLogIndex(std::string  log_index)
{
	this->log_index = log_index;
}

long long
BurnV3DTO::getVid()
{
	return vid;
}

void
BurnV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}


