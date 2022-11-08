#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UniswapV2.UniswapDayDataV2DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UniswapV2.UniswapDayDataV2DTO::UniswapV2.UniswapDayDataV2DTO()
{
	//__init();
}

UniswapV2.UniswapDayDataV2DTO::~UniswapV2.UniswapDayDataV2DTO()
{
	//__cleanup();
}

void
UniswapV2.UniswapDayDataV2DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//date = int(0);
	//daily_volume_eth = std::string();
	//daily_volume_usd = std::string();
	//daily_volume_untracked = std::string();
	//total_volume_eth = std::string();
	//total_liquidity_eth = std::string();
	//total_volume_usd = std::string();
	//total_liquidity_usd = std::string();
	//tx_count = std::string();
	//vid = long(0);
}

void
UniswapV2.UniswapDayDataV2DTO::__cleanup()
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
	//if(date != NULL) {
	//
	//delete date;
	//date = NULL;
	//}
	//if(daily_volume_eth != NULL) {
	//
	//delete daily_volume_eth;
	//daily_volume_eth = NULL;
	//}
	//if(daily_volume_usd != NULL) {
	//
	//delete daily_volume_usd;
	//daily_volume_usd = NULL;
	//}
	//if(daily_volume_untracked != NULL) {
	//
	//delete daily_volume_untracked;
	//daily_volume_untracked = NULL;
	//}
	//if(total_volume_eth != NULL) {
	//
	//delete total_volume_eth;
	//total_volume_eth = NULL;
	//}
	//if(total_liquidity_eth != NULL) {
	//
	//delete total_liquidity_eth;
	//total_liquidity_eth = NULL;
	//}
	//if(total_volume_usd != NULL) {
	//
	//delete total_volume_usd;
	//total_volume_usd = NULL;
	//}
	//if(total_liquidity_usd != NULL) {
	//
	//delete total_liquidity_usd;
	//total_liquidity_usd = NULL;
	//}
	//if(tx_count != NULL) {
	//
	//delete tx_count;
	//tx_count = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//
}

void
UniswapV2.UniswapDayDataV2DTO::fromJson(char* jsonStr)
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
	const gchar *dateKey = "date";
	node = json_object_get_member(pJsonObject, dateKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&date, node, "int", "");
		} else {
			
		}
	}
	const gchar *daily_volume_ethKey = "daily_volume_eth";
	node = json_object_get_member(pJsonObject, daily_volume_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_volume_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *daily_volume_usdKey = "daily_volume_usd";
	node = json_object_get_member(pJsonObject, daily_volume_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_volume_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *daily_volume_untrackedKey = "daily_volume_untracked";
	node = json_object_get_member(pJsonObject, daily_volume_untrackedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&daily_volume_untracked, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_volume_ethKey = "total_volume_eth";
	node = json_object_get_member(pJsonObject, total_volume_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_volume_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_liquidity_ethKey = "total_liquidity_eth";
	node = json_object_get_member(pJsonObject, total_liquidity_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_liquidity_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_volume_usdKey = "total_volume_usd";
	node = json_object_get_member(pJsonObject, total_volume_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_volume_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_liquidity_usdKey = "total_liquidity_usd";
	node = json_object_get_member(pJsonObject, total_liquidity_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_liquidity_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tx_countKey = "tx_count";
	node = json_object_get_member(pJsonObject, tx_countKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tx_count, node, "std::string", "");
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

UniswapV2.UniswapDayDataV2DTO::UniswapV2.UniswapDayDataV2DTO(char* json)
{
	this->fromJson(json);
}

char*
UniswapV2.UniswapDayDataV2DTO::toJson()
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
	if (isprimitive("int")) {
		int obj = getDate();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *dateKey = "date";
	json_object_set_member(pJsonObject, dateKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_volume_ethKey = "daily_volume_eth";
	json_object_set_member(pJsonObject, daily_volume_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_volume_usdKey = "daily_volume_usd";
	json_object_set_member(pJsonObject, daily_volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDailyVolumeUntracked();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *daily_volume_untrackedKey = "daily_volume_untracked";
	json_object_set_member(pJsonObject, daily_volume_untrackedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalVolumeEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_volume_ethKey = "total_volume_eth";
	json_object_set_member(pJsonObject, total_volume_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalLiquidityEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_liquidity_ethKey = "total_liquidity_eth";
	json_object_set_member(pJsonObject, total_liquidity_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_volume_usdKey = "total_volume_usd";
	json_object_set_member(pJsonObject, total_volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalLiquidityUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_liquidity_usdKey = "total_liquidity_usd";
	json_object_set_member(pJsonObject, total_liquidity_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTxCount();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tx_countKey = "tx_count";
	json_object_set_member(pJsonObject, tx_countKey, node);
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
UniswapV2.UniswapDayDataV2DTO::getEntryTime()
{
	return entry_time;
}

void
UniswapV2.UniswapDayDataV2DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getRecvTime()
{
	return recv_time;
}

void
UniswapV2.UniswapDayDataV2DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
UniswapV2.UniswapDayDataV2DTO::getBlockNumber()
{
	return block_number;
}

void
UniswapV2.UniswapDayDataV2DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getId()
{
	return id;
}

void
UniswapV2.UniswapDayDataV2DTO::setId(std::string  id)
{
	this->id = id;
}

int
UniswapV2.UniswapDayDataV2DTO::getDate()
{
	return date;
}

void
UniswapV2.UniswapDayDataV2DTO::setDate(int  date)
{
	this->date = date;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getDailyVolumeEth()
{
	return daily_volume_eth;
}

void
UniswapV2.UniswapDayDataV2DTO::setDailyVolumeEth(std::string  daily_volume_eth)
{
	this->daily_volume_eth = daily_volume_eth;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getDailyVolumeUsd()
{
	return daily_volume_usd;
}

void
UniswapV2.UniswapDayDataV2DTO::setDailyVolumeUsd(std::string  daily_volume_usd)
{
	this->daily_volume_usd = daily_volume_usd;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getDailyVolumeUntracked()
{
	return daily_volume_untracked;
}

void
UniswapV2.UniswapDayDataV2DTO::setDailyVolumeUntracked(std::string  daily_volume_untracked)
{
	this->daily_volume_untracked = daily_volume_untracked;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getTotalVolumeEth()
{
	return total_volume_eth;
}

void
UniswapV2.UniswapDayDataV2DTO::setTotalVolumeEth(std::string  total_volume_eth)
{
	this->total_volume_eth = total_volume_eth;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getTotalLiquidityEth()
{
	return total_liquidity_eth;
}

void
UniswapV2.UniswapDayDataV2DTO::setTotalLiquidityEth(std::string  total_liquidity_eth)
{
	this->total_liquidity_eth = total_liquidity_eth;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getTotalVolumeUsd()
{
	return total_volume_usd;
}

void
UniswapV2.UniswapDayDataV2DTO::setTotalVolumeUsd(std::string  total_volume_usd)
{
	this->total_volume_usd = total_volume_usd;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getTotalLiquidityUsd()
{
	return total_liquidity_usd;
}

void
UniswapV2.UniswapDayDataV2DTO::setTotalLiquidityUsd(std::string  total_liquidity_usd)
{
	this->total_liquidity_usd = total_liquidity_usd;
}

std::string
UniswapV2.UniswapDayDataV2DTO::getTxCount()
{
	return tx_count;
}

void
UniswapV2.UniswapDayDataV2DTO::setTxCount(std::string  tx_count)
{
	this->tx_count = tx_count;
}

long long
UniswapV2.UniswapDayDataV2DTO::getVid()
{
	return vid;
}

void
UniswapV2.UniswapDayDataV2DTO::setVid(long long  vid)
{
	this->vid = vid;
}


