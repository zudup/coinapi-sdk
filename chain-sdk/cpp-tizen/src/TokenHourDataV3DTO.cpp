#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "TokenHourDataV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

TokenHourDataV3DTO::TokenHourDataV3DTO()
{
	//__init();
}

TokenHourDataV3DTO::~TokenHourDataV3DTO()
{
	//__cleanup();
}

void
TokenHourDataV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//period_start_unix = int(0);
	//token = std::string();
	//volume = std::string();
	//volume_usd = std::string();
	//untracked_volume_usd = std::string();
	//total_value_locked = std::string();
	//total_value_locked_usd = std::string();
	//price_usd = std::string();
	//fees_usd = std::string();
	//open = std::string();
	//high = std::string();
	//low = std::string();
	//close = std::string();
	//vid = long(0);
}

void
TokenHourDataV3DTO::__cleanup()
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
	//if(period_start_unix != NULL) {
	//
	//delete period_start_unix;
	//period_start_unix = NULL;
	//}
	//if(token != NULL) {
	//
	//delete token;
	//token = NULL;
	//}
	//if(volume != NULL) {
	//
	//delete volume;
	//volume = NULL;
	//}
	//if(volume_usd != NULL) {
	//
	//delete volume_usd;
	//volume_usd = NULL;
	//}
	//if(untracked_volume_usd != NULL) {
	//
	//delete untracked_volume_usd;
	//untracked_volume_usd = NULL;
	//}
	//if(total_value_locked != NULL) {
	//
	//delete total_value_locked;
	//total_value_locked = NULL;
	//}
	//if(total_value_locked_usd != NULL) {
	//
	//delete total_value_locked_usd;
	//total_value_locked_usd = NULL;
	//}
	//if(price_usd != NULL) {
	//
	//delete price_usd;
	//price_usd = NULL;
	//}
	//if(fees_usd != NULL) {
	//
	//delete fees_usd;
	//fees_usd = NULL;
	//}
	//if(open != NULL) {
	//
	//delete open;
	//open = NULL;
	//}
	//if(high != NULL) {
	//
	//delete high;
	//high = NULL;
	//}
	//if(low != NULL) {
	//
	//delete low;
	//low = NULL;
	//}
	//if(close != NULL) {
	//
	//delete close;
	//close = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//
}

void
TokenHourDataV3DTO::fromJson(char* jsonStr)
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
	const gchar *period_start_unixKey = "period_start_unix";
	node = json_object_get_member(pJsonObject, period_start_unixKey);
	if (node !=NULL) {
	

		if (isprimitive("int")) {
			jsonToValue(&period_start_unix, node, "int", "");
		} else {
			
		}
	}
	const gchar *tokenKey = "token";
	node = json_object_get_member(pJsonObject, tokenKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *volumeKey = "volume";
	node = json_object_get_member(pJsonObject, volumeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&volume, node, "std::string", "");
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
	const gchar *untracked_volume_usdKey = "untracked_volume_usd";
	node = json_object_get_member(pJsonObject, untracked_volume_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&untracked_volume_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_value_lockedKey = "total_value_locked";
	node = json_object_get_member(pJsonObject, total_value_lockedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_value_locked_usdKey = "total_value_locked_usd";
	node = json_object_get_member(pJsonObject, total_value_locked_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *price_usdKey = "price_usd";
	node = json_object_get_member(pJsonObject, price_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&price_usd, node, "std::string", "");
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
	const gchar *openKey = "open";
	node = json_object_get_member(pJsonObject, openKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&open, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *highKey = "high";
	node = json_object_get_member(pJsonObject, highKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&high, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *lowKey = "low";
	node = json_object_get_member(pJsonObject, lowKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&low, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *closeKey = "close";
	node = json_object_get_member(pJsonObject, closeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&close, node, "std::string", "");
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

TokenHourDataV3DTO::TokenHourDataV3DTO(char* json)
{
	this->fromJson(json);
}

char*
TokenHourDataV3DTO::toJson()
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
		int obj = getPeriodStartUnix();
		node = converttoJson(&obj, "int", "");
	}
	else {
		
	}
	const gchar *period_start_unixKey = "period_start_unix";
	json_object_set_member(pJsonObject, period_start_unixKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getToken();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tokenKey = "token";
	json_object_set_member(pJsonObject, tokenKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolume();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volumeKey = "volume";
	json_object_set_member(pJsonObject, volumeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *volume_usdKey = "volume_usd";
	json_object_set_member(pJsonObject, volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getUntrackedVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *untracked_volume_usdKey = "untracked_volume_usd";
	json_object_set_member(pJsonObject, untracked_volume_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLocked();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_lockedKey = "total_value_locked";
	json_object_set_member(pJsonObject, total_value_lockedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_usdKey = "total_value_locked_usd";
	json_object_set_member(pJsonObject, total_value_locked_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getPriceUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *price_usdKey = "price_usd";
	json_object_set_member(pJsonObject, price_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFeesUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *fees_usdKey = "fees_usd";
	json_object_set_member(pJsonObject, fees_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getOpen();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *openKey = "open";
	json_object_set_member(pJsonObject, openKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getHigh();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *highKey = "high";
	json_object_set_member(pJsonObject, highKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLow();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *lowKey = "low";
	json_object_set_member(pJsonObject, lowKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getClose();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *closeKey = "close";
	json_object_set_member(pJsonObject, closeKey, node);
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
TokenHourDataV3DTO::getEntryTime()
{
	return entry_time;
}

void
TokenHourDataV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
TokenHourDataV3DTO::getRecvTime()
{
	return recv_time;
}

void
TokenHourDataV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
TokenHourDataV3DTO::getBlockNumber()
{
	return block_number;
}

void
TokenHourDataV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
TokenHourDataV3DTO::getId()
{
	return id;
}

void
TokenHourDataV3DTO::setId(std::string  id)
{
	this->id = id;
}

int
TokenHourDataV3DTO::getPeriodStartUnix()
{
	return period_start_unix;
}

void
TokenHourDataV3DTO::setPeriodStartUnix(int  period_start_unix)
{
	this->period_start_unix = period_start_unix;
}

std::string
TokenHourDataV3DTO::getToken()
{
	return token;
}

void
TokenHourDataV3DTO::setToken(std::string  token)
{
	this->token = token;
}

std::string
TokenHourDataV3DTO::getVolume()
{
	return volume;
}

void
TokenHourDataV3DTO::setVolume(std::string  volume)
{
	this->volume = volume;
}

std::string
TokenHourDataV3DTO::getVolumeUsd()
{
	return volume_usd;
}

void
TokenHourDataV3DTO::setVolumeUsd(std::string  volume_usd)
{
	this->volume_usd = volume_usd;
}

std::string
TokenHourDataV3DTO::getUntrackedVolumeUsd()
{
	return untracked_volume_usd;
}

void
TokenHourDataV3DTO::setUntrackedVolumeUsd(std::string  untracked_volume_usd)
{
	this->untracked_volume_usd = untracked_volume_usd;
}

std::string
TokenHourDataV3DTO::getTotalValueLocked()
{
	return total_value_locked;
}

void
TokenHourDataV3DTO::setTotalValueLocked(std::string  total_value_locked)
{
	this->total_value_locked = total_value_locked;
}

std::string
TokenHourDataV3DTO::getTotalValueLockedUsd()
{
	return total_value_locked_usd;
}

void
TokenHourDataV3DTO::setTotalValueLockedUsd(std::string  total_value_locked_usd)
{
	this->total_value_locked_usd = total_value_locked_usd;
}

std::string
TokenHourDataV3DTO::getPriceUsd()
{
	return price_usd;
}

void
TokenHourDataV3DTO::setPriceUsd(std::string  price_usd)
{
	this->price_usd = price_usd;
}

std::string
TokenHourDataV3DTO::getFeesUsd()
{
	return fees_usd;
}

void
TokenHourDataV3DTO::setFeesUsd(std::string  fees_usd)
{
	this->fees_usd = fees_usd;
}

std::string
TokenHourDataV3DTO::getOpen()
{
	return open;
}

void
TokenHourDataV3DTO::setOpen(std::string  open)
{
	this->open = open;
}

std::string
TokenHourDataV3DTO::getHigh()
{
	return high;
}

void
TokenHourDataV3DTO::setHigh(std::string  high)
{
	this->high = high;
}

std::string
TokenHourDataV3DTO::getLow()
{
	return low;
}

void
TokenHourDataV3DTO::setLow(std::string  low)
{
	this->low = low;
}

std::string
TokenHourDataV3DTO::getClose()
{
	return close;
}

void
TokenHourDataV3DTO::setClose(std::string  close)
{
	this->close = close;
}

long long
TokenHourDataV3DTO::getVid()
{
	return vid;
}

void
TokenHourDataV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}


