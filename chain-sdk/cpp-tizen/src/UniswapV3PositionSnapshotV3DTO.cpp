#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UniswapV3PositionSnapshotV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UniswapV3PositionSnapshotV3DTO::UniswapV3PositionSnapshotV3DTO()
{
	//__init();
}

UniswapV3PositionSnapshotV3DTO::~UniswapV3PositionSnapshotV3DTO()
{
	//__cleanup();
}

void
UniswapV3PositionSnapshotV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//owner = std::string();
	//pool = std::string();
	//position = std::string();
	//timestamp = std::string();
	//liquidity = std::string();
	//deposited_token_0 = std::string();
	//deposited_token_1 = std::string();
	//withdrawn_token_0 = std::string();
	//withdrawn_token_1 = std::string();
	//collected_fees_token_0 = std::string();
	//collected_fees_token_1 = std::string();
	//transaction = std::string();
	//fee_growth_inside_0_last_x128 = std::string();
	//fee_growth_inside_1_last_x128 = std::string();
	//vid = long(0);
}

void
UniswapV3PositionSnapshotV3DTO::__cleanup()
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
	//if(owner != NULL) {
	//
	//delete owner;
	//owner = NULL;
	//}
	//if(pool != NULL) {
	//
	//delete pool;
	//pool = NULL;
	//}
	//if(position != NULL) {
	//
	//delete position;
	//position = NULL;
	//}
	//if(timestamp != NULL) {
	//
	//delete timestamp;
	//timestamp = NULL;
	//}
	//if(liquidity != NULL) {
	//
	//delete liquidity;
	//liquidity = NULL;
	//}
	//if(deposited_token_0 != NULL) {
	//
	//delete deposited_token_0;
	//deposited_token_0 = NULL;
	//}
	//if(deposited_token_1 != NULL) {
	//
	//delete deposited_token_1;
	//deposited_token_1 = NULL;
	//}
	//if(withdrawn_token_0 != NULL) {
	//
	//delete withdrawn_token_0;
	//withdrawn_token_0 = NULL;
	//}
	//if(withdrawn_token_1 != NULL) {
	//
	//delete withdrawn_token_1;
	//withdrawn_token_1 = NULL;
	//}
	//if(collected_fees_token_0 != NULL) {
	//
	//delete collected_fees_token_0;
	//collected_fees_token_0 = NULL;
	//}
	//if(collected_fees_token_1 != NULL) {
	//
	//delete collected_fees_token_1;
	//collected_fees_token_1 = NULL;
	//}
	//if(transaction != NULL) {
	//
	//delete transaction;
	//transaction = NULL;
	//}
	//if(fee_growth_inside_0_last_x128 != NULL) {
	//
	//delete fee_growth_inside_0_last_x128;
	//fee_growth_inside_0_last_x128 = NULL;
	//}
	//if(fee_growth_inside_1_last_x128 != NULL) {
	//
	//delete fee_growth_inside_1_last_x128;
	//fee_growth_inside_1_last_x128 = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//
}

void
UniswapV3PositionSnapshotV3DTO::fromJson(char* jsonStr)
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
	const gchar *ownerKey = "owner";
	node = json_object_get_member(pJsonObject, ownerKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&owner, node, "std::string", "");
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
	const gchar *positionKey = "position";
	node = json_object_get_member(pJsonObject, positionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&position, node, "std::string", "");
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
	const gchar *liquidityKey = "liquidity";
	node = json_object_get_member(pJsonObject, liquidityKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&liquidity, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deposited_token_0Key = "deposited_token_0";
	node = json_object_get_member(pJsonObject, deposited_token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&deposited_token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *deposited_token_1Key = "deposited_token_1";
	node = json_object_get_member(pJsonObject, deposited_token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&deposited_token_1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *withdrawn_token_0Key = "withdrawn_token_0";
	node = json_object_get_member(pJsonObject, withdrawn_token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&withdrawn_token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *withdrawn_token_1Key = "withdrawn_token_1";
	node = json_object_get_member(pJsonObject, withdrawn_token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&withdrawn_token_1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *collected_fees_token_0Key = "collected_fees_token_0";
	node = json_object_get_member(pJsonObject, collected_fees_token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&collected_fees_token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *collected_fees_token_1Key = "collected_fees_token_1";
	node = json_object_get_member(pJsonObject, collected_fees_token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&collected_fees_token_1, node, "std::string", "");
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
	const gchar *fee_growth_inside_0_last_x128Key = "fee_growth_inside_0_last_x128";
	node = json_object_get_member(pJsonObject, fee_growth_inside_0_last_x128Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fee_growth_inside_0_last_x128, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fee_growth_inside_1_last_x128Key = "fee_growth_inside_1_last_x128";
	node = json_object_get_member(pJsonObject, fee_growth_inside_1_last_x128Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fee_growth_inside_1_last_x128, node, "std::string", "");
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

UniswapV3PositionSnapshotV3DTO::UniswapV3PositionSnapshotV3DTO(char* json)
{
	this->fromJson(json);
}

char*
UniswapV3PositionSnapshotV3DTO::toJson()
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
		std::string obj = getOwner();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *ownerKey = "owner";
	json_object_set_member(pJsonObject, ownerKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPool();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *poolKey = "pool";
	json_object_set_member(pJsonObject, poolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPosition();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *positionKey = "position";
	json_object_set_member(pJsonObject, positionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *timestampKey = "timestamp";
	json_object_set_member(pJsonObject, timestampKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLiquidity();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *liquidityKey = "liquidity";
	json_object_set_member(pJsonObject, liquidityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDepositedToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *deposited_token_0Key = "deposited_token_0";
	json_object_set_member(pJsonObject, deposited_token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getDepositedToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *deposited_token_1Key = "deposited_token_1";
	json_object_set_member(pJsonObject, deposited_token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getWithdrawnToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *withdrawn_token_0Key = "withdrawn_token_0";
	json_object_set_member(pJsonObject, withdrawn_token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getWithdrawnToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *withdrawn_token_1Key = "withdrawn_token_1";
	json_object_set_member(pJsonObject, withdrawn_token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCollectedFeesToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *collected_fees_token_0Key = "collected_fees_token_0";
	json_object_set_member(pJsonObject, collected_fees_token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getCollectedFeesToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *collected_fees_token_1Key = "collected_fees_token_1";
	json_object_set_member(pJsonObject, collected_fees_token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getTransaction();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *transactionKey = "transaction";
	json_object_set_member(pJsonObject, transactionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeeGrowthInside0LastX128();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fee_growth_inside_0_last_x128Key = "fee_growth_inside_0_last_x128";
	json_object_set_member(pJsonObject, fee_growth_inside_0_last_x128Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeeGrowthInside1LastX128();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fee_growth_inside_1_last_x128Key = "fee_growth_inside_1_last_x128";
	json_object_set_member(pJsonObject, fee_growth_inside_1_last_x128Key, node);
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
UniswapV3PositionSnapshotV3DTO::getEntryTime()
{
	return entry_time;
}

void
UniswapV3PositionSnapshotV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
UniswapV3PositionSnapshotV3DTO::getRecvTime()
{
	return recv_time;
}

void
UniswapV3PositionSnapshotV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
UniswapV3PositionSnapshotV3DTO::getBlockNumber()
{
	return block_number;
}

void
UniswapV3PositionSnapshotV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
UniswapV3PositionSnapshotV3DTO::getId()
{
	return id;
}

void
UniswapV3PositionSnapshotV3DTO::setId(std::string  id)
{
	this->id = id;
}

std::string
UniswapV3PositionSnapshotV3DTO::getOwner()
{
	return owner;
}

void
UniswapV3PositionSnapshotV3DTO::setOwner(std::string  owner)
{
	this->owner = owner;
}

std::string
UniswapV3PositionSnapshotV3DTO::getPool()
{
	return pool;
}

void
UniswapV3PositionSnapshotV3DTO::setPool(std::string  pool)
{
	this->pool = pool;
}

std::string
UniswapV3PositionSnapshotV3DTO::getPosition()
{
	return position;
}

void
UniswapV3PositionSnapshotV3DTO::setPosition(std::string  position)
{
	this->position = position;
}

std::string
UniswapV3PositionSnapshotV3DTO::getTimestamp()
{
	return timestamp;
}

void
UniswapV3PositionSnapshotV3DTO::setTimestamp(std::string  timestamp)
{
	this->timestamp = timestamp;
}

std::string
UniswapV3PositionSnapshotV3DTO::getLiquidity()
{
	return liquidity;
}

void
UniswapV3PositionSnapshotV3DTO::setLiquidity(std::string  liquidity)
{
	this->liquidity = liquidity;
}

std::string
UniswapV3PositionSnapshotV3DTO::getDepositedToken0()
{
	return deposited_token_0;
}

void
UniswapV3PositionSnapshotV3DTO::setDepositedToken0(std::string  deposited_token_0)
{
	this->deposited_token_0 = deposited_token_0;
}

std::string
UniswapV3PositionSnapshotV3DTO::getDepositedToken1()
{
	return deposited_token_1;
}

void
UniswapV3PositionSnapshotV3DTO::setDepositedToken1(std::string  deposited_token_1)
{
	this->deposited_token_1 = deposited_token_1;
}

std::string
UniswapV3PositionSnapshotV3DTO::getWithdrawnToken0()
{
	return withdrawn_token_0;
}

void
UniswapV3PositionSnapshotV3DTO::setWithdrawnToken0(std::string  withdrawn_token_0)
{
	this->withdrawn_token_0 = withdrawn_token_0;
}

std::string
UniswapV3PositionSnapshotV3DTO::getWithdrawnToken1()
{
	return withdrawn_token_1;
}

void
UniswapV3PositionSnapshotV3DTO::setWithdrawnToken1(std::string  withdrawn_token_1)
{
	this->withdrawn_token_1 = withdrawn_token_1;
}

std::string
UniswapV3PositionSnapshotV3DTO::getCollectedFeesToken0()
{
	return collected_fees_token_0;
}

void
UniswapV3PositionSnapshotV3DTO::setCollectedFeesToken0(std::string  collected_fees_token_0)
{
	this->collected_fees_token_0 = collected_fees_token_0;
}

std::string
UniswapV3PositionSnapshotV3DTO::getCollectedFeesToken1()
{
	return collected_fees_token_1;
}

void
UniswapV3PositionSnapshotV3DTO::setCollectedFeesToken1(std::string  collected_fees_token_1)
{
	this->collected_fees_token_1 = collected_fees_token_1;
}

std::string
UniswapV3PositionSnapshotV3DTO::getTransaction()
{
	return transaction;
}

void
UniswapV3PositionSnapshotV3DTO::setTransaction(std::string  transaction)
{
	this->transaction = transaction;
}

std::string
UniswapV3PositionSnapshotV3DTO::getFeeGrowthInside0LastX128()
{
	return fee_growth_inside_0_last_x128;
}

void
UniswapV3PositionSnapshotV3DTO::setFeeGrowthInside0LastX128(std::string  fee_growth_inside_0_last_x128)
{
	this->fee_growth_inside_0_last_x128 = fee_growth_inside_0_last_x128;
}

std::string
UniswapV3PositionSnapshotV3DTO::getFeeGrowthInside1LastX128()
{
	return fee_growth_inside_1_last_x128;
}

void
UniswapV3PositionSnapshotV3DTO::setFeeGrowthInside1LastX128(std::string  fee_growth_inside_1_last_x128)
{
	this->fee_growth_inside_1_last_x128 = fee_growth_inside_1_last_x128;
}

long long
UniswapV3PositionSnapshotV3DTO::getVid()
{
	return vid;
}

void
UniswapV3PositionSnapshotV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}


