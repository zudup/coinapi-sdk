#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UniswapDayDataV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UniswapDayDataV3DTO::UniswapDayDataV3DTO()
{
	//__init();
}

UniswapDayDataV3DTO::~UniswapDayDataV3DTO()
{
	//__cleanup();
}

void
UniswapDayDataV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = long(0);
	//id = std::string();
	//date = int(0);
	//volume_eth = std::string();
	//volume_usd = std::string();
	//volume_usd_untracked = std::string();
	//fees_usd = std::string();
	//tx_count = new BigInteger();
	//tvl_usd = std::string();
}

void
UniswapDayDataV3DTO::__cleanup()
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
	//if(date != NULL) {
	//
	//delete date;
	//date = NULL;
	//}
	//if(volume_eth != NULL) {
	//
	//delete volume_eth;
	//volume_eth = NULL;
	//}
	//if(volume_usd != NULL) {
	//
	//delete volume_usd;
	//volume_usd = NULL;
	//}
	//if(volume_usd_untracked != NULL) {
	//
	//delete volume_usd_untracked;
	//volume_usd_untracked = NULL;
	//}
	//if(fees_usd != NULL) {
	//
	//delete fees_usd;
	//fees_usd = NULL;
	//}
	//if(tx_count != NULL) {
	//
	//delete tx_count;
	//tx_count = NULL;
	//}
	//if(tvl_usd != NULL) {
	//
	//delete tvl_usd;
	//tvl_usd = NULL;
	//}
	//
}

void
UniswapDayDataV3DTO::fromJson(char* jsonStr)
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
	const gchar *dateKey = "date";
	node = json_object_get_member(pJsonObject, dateKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&date, node, "int", "");
		} else {
			
		}
	}
	const gchar *volume_ethKey = "volume_eth";
	node = json_object_get_member(pJsonObject, volume_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volume_usdKey = "volume_usd";
	node = json_object_get_member(pJsonObject, volume_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volume_usd_untrackedKey = "volume_usd_untracked";
	node = json_object_get_member(pJsonObject, volume_usd_untrackedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume_usd_untracked, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fees_usdKey = "fees_usd";
	node = json_object_get_member(pJsonObject, fees_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fees_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tx_countKey = "tx_count";
	node = json_object_get_member(pJsonObject, tx_countKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&tx_count, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&tx_count);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *tvl_usdKey = "tvl_usd";
	node = json_object_get_member(pJsonObject, tvl_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tvl_usd, node, "std::string", "");
		} else {
			
		}
	}
}

UniswapDayDataV3DTO::UniswapDayDataV3DTO(char* json)
{
	this->fromJson(json);
}

char*
UniswapDayDataV3DTO::toJson()
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
	if (isprimitive("int")) {
		int obj = getDate();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *dateKey = "date";
	json_object_set_member(pJsonObject, dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_ethKey = "volume_eth";
	json_object_set_member(pJsonObject, volume_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_usdKey = "volume_usd";
	json_object_set_member(pJsonObject, volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeUsdUntracked();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_usd_untrackedKey = "volume_usd_untracked";
	json_object_set_member(pJsonObject, volume_usd_untrackedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeesUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fees_usdKey = "fees_usd";
	json_object_set_member(pJsonObject, fees_usdKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getTxCount();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getTxCount());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *tx_countKey = "tx_count";
	json_object_set_member(pJsonObject, tx_countKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTvlUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tvl_usdKey = "tvl_usd";
	json_object_set_member(pJsonObject, tvl_usdKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
UniswapDayDataV3DTO::getEntryTime()
{
	return entry_time;
}

void
UniswapDayDataV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
UniswapDayDataV3DTO::getRecvTime()
{
	return recv_time;
}

void
UniswapDayDataV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
UniswapDayDataV3DTO::getBlockNumber()
{
	return block_number;
}

void
UniswapDayDataV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

long long
UniswapDayDataV3DTO::getVid()
{
	return vid;
}

void
UniswapDayDataV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
UniswapDayDataV3DTO::getId()
{
	return id;
}

void
UniswapDayDataV3DTO::setId(std::string  id)
{
	this->id = id;
}

int
UniswapDayDataV3DTO::getDate()
{
	return date;
}

void
UniswapDayDataV3DTO::setDate(int  date)
{
	this->date = date;
}

std::string
UniswapDayDataV3DTO::getVolumeEth()
{
	return volume_eth;
}

void
UniswapDayDataV3DTO::setVolumeEth(std::string  volume_eth)
{
	this->volume_eth = volume_eth;
}

std::string
UniswapDayDataV3DTO::getVolumeUsd()
{
	return volume_usd;
}

void
UniswapDayDataV3DTO::setVolumeUsd(std::string  volume_usd)
{
	this->volume_usd = volume_usd;
}

std::string
UniswapDayDataV3DTO::getVolumeUsdUntracked()
{
	return volume_usd_untracked;
}

void
UniswapDayDataV3DTO::setVolumeUsdUntracked(std::string  volume_usd_untracked)
{
	this->volume_usd_untracked = volume_usd_untracked;
}

std::string
UniswapDayDataV3DTO::getFeesUsd()
{
	return fees_usd;
}

void
UniswapDayDataV3DTO::setFeesUsd(std::string  fees_usd)
{
	this->fees_usd = fees_usd;
}

BigInteger
UniswapDayDataV3DTO::getTxCount()
{
	return tx_count;
}

void
UniswapDayDataV3DTO::setTxCount(BigInteger  tx_count)
{
	this->tx_count = tx_count;
}

std::string
UniswapDayDataV3DTO::getTvlUsd()
{
	return tvl_usd;
}

void
UniswapDayDataV3DTO::setTvlUsd(std::string  tvl_usd)
{
	this->tvl_usd = tvl_usd;
}


