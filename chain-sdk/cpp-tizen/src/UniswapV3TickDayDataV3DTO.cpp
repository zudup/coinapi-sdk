#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "UniswapV3.TickDayDataV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

UniswapV3.TickDayDataV3DTO::UniswapV3.TickDayDataV3DTO()
{
	//__init();
}

UniswapV3.TickDayDataV3DTO::~UniswapV3.TickDayDataV3DTO()
{
	//__cleanup();
}

void
UniswapV3.TickDayDataV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//date = int(0);
	//pool = std::string();
	//tick = std::string();
	//liquidity_gross = std::string();
	//liquidity_net = std::string();
	//volume_token_0 = std::string();
	//volume_token_1 = std::string();
	//volume_usd = std::string();
	//fees_usd = std::string();
	//fee_growth_outside_0x128 = std::string();
	//fee_growth_outside_1x128 = std::string();
	//vid = long(0);
}

void
UniswapV3.TickDayDataV3DTO::__cleanup()
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
	//if(pool != NULL) {
	//
	//delete pool;
	//pool = NULL;
	//}
	//if(tick != NULL) {
	//
	//delete tick;
	//tick = NULL;
	//}
	//if(liquidity_gross != NULL) {
	//
	//delete liquidity_gross;
	//liquidity_gross = NULL;
	//}
	//if(liquidity_net != NULL) {
	//
	//delete liquidity_net;
	//liquidity_net = NULL;
	//}
	//if(volume_token_0 != NULL) {
	//
	//delete volume_token_0;
	//volume_token_0 = NULL;
	//}
	//if(volume_token_1 != NULL) {
	//
	//delete volume_token_1;
	//volume_token_1 = NULL;
	//}
	//if(volume_usd != NULL) {
	//
	//delete volume_usd;
	//volume_usd = NULL;
	//}
	//if(fees_usd != NULL) {
	//
	//delete fees_usd;
	//fees_usd = NULL;
	//}
	//if(fee_growth_outside_0x128 != NULL) {
	//
	//delete fee_growth_outside_0x128;
	//fee_growth_outside_0x128 = NULL;
	//}
	//if(fee_growth_outside_1x128 != NULL) {
	//
	//delete fee_growth_outside_1x128;
	//fee_growth_outside_1x128 = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//
}

void
UniswapV3.TickDayDataV3DTO::fromJson(char* jsonStr)
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
	const gchar *poolKey = "pool";
	node = json_object_get_member(pJsonObject, poolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&pool, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *tickKey = "tick";
	node = json_object_get_member(pJsonObject, tickKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tick, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *liquidity_grossKey = "liquidity_gross";
	node = json_object_get_member(pJsonObject, liquidity_grossKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&liquidity_gross, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *liquidity_netKey = "liquidity_net";
	node = json_object_get_member(pJsonObject, liquidity_netKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&liquidity_net, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volume_token_0Key = "volume_token_0";
	node = json_object_get_member(pJsonObject, volume_token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume_token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volume_token_1Key = "volume_token_1";
	node = json_object_get_member(pJsonObject, volume_token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume_token_1, node, "std::string", "");
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
	const gchar *fees_usdKey = "fees_usd";
	node = json_object_get_member(pJsonObject, fees_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fees_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fee_growth_outside_0x128Key = "fee_growth_outside_0x128";
	node = json_object_get_member(pJsonObject, fee_growth_outside_0x128Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fee_growth_outside_0x128, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *fee_growth_outside_1x128Key = "fee_growth_outside_1x128";
	node = json_object_get_member(pJsonObject, fee_growth_outside_1x128Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&fee_growth_outside_1x128, node, "std::string", "");
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

UniswapV3.TickDayDataV3DTO::UniswapV3.TickDayDataV3DTO(char* json)
{
	this->fromJson(json);
}

char*
UniswapV3.TickDayDataV3DTO::toJson()
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
		std::string obj = getPool();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *poolKey = "pool";
	json_object_set_member(pJsonObject, poolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTick();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tickKey = "tick";
	json_object_set_member(pJsonObject, tickKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLiquidityGross();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *liquidity_grossKey = "liquidity_gross";
	json_object_set_member(pJsonObject, liquidity_grossKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLiquidityNet();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *liquidity_netKey = "liquidity_net";
	json_object_set_member(pJsonObject, liquidity_netKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_token_0Key = "volume_token_0";
	json_object_set_member(pJsonObject, volume_token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_token_1Key = "volume_token_1";
	json_object_set_member(pJsonObject, volume_token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_usdKey = "volume_usd";
	json_object_set_member(pJsonObject, volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeesUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fees_usdKey = "fees_usd";
	json_object_set_member(pJsonObject, fees_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeeGrowthOutside0x128();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fee_growth_outside_0x128Key = "fee_growth_outside_0x128";
	json_object_set_member(pJsonObject, fee_growth_outside_0x128Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeeGrowthOutside1x128();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fee_growth_outside_1x128Key = "fee_growth_outside_1x128";
	json_object_set_member(pJsonObject, fee_growth_outside_1x128Key, node);
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
UniswapV3.TickDayDataV3DTO::getEntryTime()
{
	return entry_time;
}

void
UniswapV3.TickDayDataV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
UniswapV3.TickDayDataV3DTO::getRecvTime()
{
	return recv_time;
}

void
UniswapV3.TickDayDataV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
UniswapV3.TickDayDataV3DTO::getBlockNumber()
{
	return block_number;
}

void
UniswapV3.TickDayDataV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
UniswapV3.TickDayDataV3DTO::getId()
{
	return id;
}

void
UniswapV3.TickDayDataV3DTO::setId(std::string  id)
{
	this->id = id;
}

int
UniswapV3.TickDayDataV3DTO::getDate()
{
	return date;
}

void
UniswapV3.TickDayDataV3DTO::setDate(int  date)
{
	this->date = date;
}

std::string
UniswapV3.TickDayDataV3DTO::getPool()
{
	return pool;
}

void
UniswapV3.TickDayDataV3DTO::setPool(std::string  pool)
{
	this->pool = pool;
}

std::string
UniswapV3.TickDayDataV3DTO::getTick()
{
	return tick;
}

void
UniswapV3.TickDayDataV3DTO::setTick(std::string  tick)
{
	this->tick = tick;
}

std::string
UniswapV3.TickDayDataV3DTO::getLiquidityGross()
{
	return liquidity_gross;
}

void
UniswapV3.TickDayDataV3DTO::setLiquidityGross(std::string  liquidity_gross)
{
	this->liquidity_gross = liquidity_gross;
}

std::string
UniswapV3.TickDayDataV3DTO::getLiquidityNet()
{
	return liquidity_net;
}

void
UniswapV3.TickDayDataV3DTO::setLiquidityNet(std::string  liquidity_net)
{
	this->liquidity_net = liquidity_net;
}

std::string
UniswapV3.TickDayDataV3DTO::getVolumeToken0()
{
	return volume_token_0;
}

void
UniswapV3.TickDayDataV3DTO::setVolumeToken0(std::string  volume_token_0)
{
	this->volume_token_0 = volume_token_0;
}

std::string
UniswapV3.TickDayDataV3DTO::getVolumeToken1()
{
	return volume_token_1;
}

void
UniswapV3.TickDayDataV3DTO::setVolumeToken1(std::string  volume_token_1)
{
	this->volume_token_1 = volume_token_1;
}

std::string
UniswapV3.TickDayDataV3DTO::getVolumeUsd()
{
	return volume_usd;
}

void
UniswapV3.TickDayDataV3DTO::setVolumeUsd(std::string  volume_usd)
{
	this->volume_usd = volume_usd;
}

std::string
UniswapV3.TickDayDataV3DTO::getFeesUsd()
{
	return fees_usd;
}

void
UniswapV3.TickDayDataV3DTO::setFeesUsd(std::string  fees_usd)
{
	this->fees_usd = fees_usd;
}

std::string
UniswapV3.TickDayDataV3DTO::getFeeGrowthOutside0x128()
{
	return fee_growth_outside_0x128;
}

void
UniswapV3.TickDayDataV3DTO::setFeeGrowthOutside0x128(std::string  fee_growth_outside_0x128)
{
	this->fee_growth_outside_0x128 = fee_growth_outside_0x128;
}

std::string
UniswapV3.TickDayDataV3DTO::getFeeGrowthOutside1x128()
{
	return fee_growth_outside_1x128;
}

void
UniswapV3.TickDayDataV3DTO::setFeeGrowthOutside1x128(std::string  fee_growth_outside_1x128)
{
	this->fee_growth_outside_1x128 = fee_growth_outside_1x128;
}

long long
UniswapV3.TickDayDataV3DTO::getVid()
{
	return vid;
}

void
UniswapV3.TickDayDataV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}


