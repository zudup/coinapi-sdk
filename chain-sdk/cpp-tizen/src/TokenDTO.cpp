#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "TokenDTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

TokenDTO::TokenDTO()
{
	//__init();
}

TokenDTO::~TokenDTO()
{
	//__cleanup();
}

void
TokenDTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//id = std::string();
	//factory = std::string();
	//symbol = std::string();
	//name = std::string();
	//decimals = std::string();
	//total_supply = std::string();
	//volume = std::string();
	//volume_usd = std::string();
	//untracked_volume_usd = std::string();
	//tx_count = std::string();
	//liquidity = std::string();
	//derived_eth = std::string();
	//new std::list()std::list> whitelist_pairs;
	//vid = long(0);
	//token_symbol = std::string();
}

void
TokenDTO::__cleanup()
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
	//if(factory != NULL) {
	//
	//delete factory;
	//factory = NULL;
	//}
	//if(symbol != NULL) {
	//
	//delete symbol;
	//symbol = NULL;
	//}
	//if(name != NULL) {
	//
	//delete name;
	//name = NULL;
	//}
	//if(decimals != NULL) {
	//
	//delete decimals;
	//decimals = NULL;
	//}
	//if(total_supply != NULL) {
	//
	//delete total_supply;
	//total_supply = NULL;
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
	//if(tx_count != NULL) {
	//
	//delete tx_count;
	//tx_count = NULL;
	//}
	//if(liquidity != NULL) {
	//
	//delete liquidity;
	//liquidity = NULL;
	//}
	//if(derived_eth != NULL) {
	//
	//delete derived_eth;
	//derived_eth = NULL;
	//}
	//if(whitelist_pairs != NULL) {
	//whitelist_pairs.RemoveAll(true);
	//delete whitelist_pairs;
	//whitelist_pairs = NULL;
	//}
	//if(vid != NULL) {
	//
	//delete vid;
	//vid = NULL;
	//}
	//if(token_symbol != NULL) {
	//
	//delete token_symbol;
	//token_symbol = NULL;
	//}
	//
}

void
TokenDTO::fromJson(char* jsonStr)
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
	const gchar *factoryKey = "factory";
	node = json_object_get_member(pJsonObject, factoryKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&factory, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *symbolKey = "symbol";
	node = json_object_get_member(pJsonObject, symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&symbol, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *nameKey = "name";
	node = json_object_get_member(pJsonObject, nameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&name, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *decimalsKey = "decimals";
	node = json_object_get_member(pJsonObject, decimalsKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&decimals, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_supplyKey = "total_supply";
	node = json_object_get_member(pJsonObject, total_supplyKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_supply, node, "std::string", "");
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
	const gchar *tx_countKey = "tx_count";
	node = json_object_get_member(pJsonObject, tx_countKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&tx_count, node, "std::string", "");
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
	const gchar *derived_ethKey = "derived_eth";
	node = json_object_get_member(pJsonObject, derived_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&derived_eth, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *whitelist_pairsKey = "whitelist_pairs";
	node = json_object_get_member(pJsonObject, whitelist_pairsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<std::string> new_list;
			std::string inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("std::string")) {
					jsonToValue(&inst, temp_json, "std::string", "");
				} else {
					
				}
				new_list.push_back(inst);
			}
			whitelist_pairs = new_list;
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
	const gchar *token_symbolKey = "token_symbol";
	node = json_object_get_member(pJsonObject, token_symbolKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_symbol, node, "std::string", "");
		} else {
			
		}
	}
}

TokenDTO::TokenDTO(char* json)
{
	this->fromJson(json);
}

char*
TokenDTO::toJson()
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
		std::string obj = getFactory();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *factoryKey = "factory";
	json_object_set_member(pJsonObject, factoryKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *symbolKey = "symbol";
	json_object_set_member(pJsonObject, symbolKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *nameKey = "name";
	json_object_set_member(pJsonObject, nameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDecimals();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *decimalsKey = "decimals";
	json_object_set_member(pJsonObject, decimalsKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalSupply();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_supplyKey = "total_supply";
	json_object_set_member(pJsonObject, total_supplyKey, node);
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
		std::string obj = getTxCount();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *tx_countKey = "tx_count";
	json_object_set_member(pJsonObject, tx_countKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLiquidity();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *liquidityKey = "liquidity";
	json_object_set_member(pJsonObject, liquidityKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDerivedEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *derived_ethKey = "derived_eth";
	json_object_set_member(pJsonObject, derived_ethKey, node);
	if (isprimitive("std::string")) {
		list<std::string> new_list = static_cast<list <std::string> > (getWhitelistPairs());
		node = converttoJson(&new_list, "std::string", "array");
	} else {
		node = json_node_alloc();
		list<std::string> new_list = static_cast<list <std::string> > (getWhitelistPairs());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
	}


	
	const gchar *whitelist_pairsKey = "whitelist_pairs";
	json_object_set_member(pJsonObject, whitelist_pairsKey, node);
	if (isprimitive("long long")) {
		long long obj = getVid();
		node = converttoJson(&obj, "long long", "");
	}
	else {
		
	}
	const gchar *vidKey = "vid";
	json_object_set_member(pJsonObject, vidKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTokenSymbol();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_symbolKey = "token_symbol";
	json_object_set_member(pJsonObject, token_symbolKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
TokenDTO::getEntryTime()
{
	return entry_time;
}

void
TokenDTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
TokenDTO::getRecvTime()
{
	return recv_time;
}

void
TokenDTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
TokenDTO::getBlockNumber()
{
	return block_number;
}

void
TokenDTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

std::string
TokenDTO::getId()
{
	return id;
}

void
TokenDTO::setId(std::string  id)
{
	this->id = id;
}

std::string
TokenDTO::getFactory()
{
	return factory;
}

void
TokenDTO::setFactory(std::string  factory)
{
	this->factory = factory;
}

std::string
TokenDTO::getSymbol()
{
	return symbol;
}

void
TokenDTO::setSymbol(std::string  symbol)
{
	this->symbol = symbol;
}

std::string
TokenDTO::getName()
{
	return name;
}

void
TokenDTO::setName(std::string  name)
{
	this->name = name;
}

std::string
TokenDTO::getDecimals()
{
	return decimals;
}

void
TokenDTO::setDecimals(std::string  decimals)
{
	this->decimals = decimals;
}

std::string
TokenDTO::getTotalSupply()
{
	return total_supply;
}

void
TokenDTO::setTotalSupply(std::string  total_supply)
{
	this->total_supply = total_supply;
}

std::string
TokenDTO::getVolume()
{
	return volume;
}

void
TokenDTO::setVolume(std::string  volume)
{
	this->volume = volume;
}

std::string
TokenDTO::getVolumeUsd()
{
	return volume_usd;
}

void
TokenDTO::setVolumeUsd(std::string  volume_usd)
{
	this->volume_usd = volume_usd;
}

std::string
TokenDTO::getUntrackedVolumeUsd()
{
	return untracked_volume_usd;
}

void
TokenDTO::setUntrackedVolumeUsd(std::string  untracked_volume_usd)
{
	this->untracked_volume_usd = untracked_volume_usd;
}

std::string
TokenDTO::getTxCount()
{
	return tx_count;
}

void
TokenDTO::setTxCount(std::string  tx_count)
{
	this->tx_count = tx_count;
}

std::string
TokenDTO::getLiquidity()
{
	return liquidity;
}

void
TokenDTO::setLiquidity(std::string  liquidity)
{
	this->liquidity = liquidity;
}

std::string
TokenDTO::getDerivedEth()
{
	return derived_eth;
}

void
TokenDTO::setDerivedEth(std::string  derived_eth)
{
	this->derived_eth = derived_eth;
}

std::list<std::string>
TokenDTO::getWhitelistPairs()
{
	return whitelist_pairs;
}

void
TokenDTO::setWhitelistPairs(std::list <std::string> whitelist_pairs)
{
	this->whitelist_pairs = whitelist_pairs;
}

long long
TokenDTO::getVid()
{
	return vid;
}

void
TokenDTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
TokenDTO::getTokenSymbol()
{
	return token_symbol;
}

void
TokenDTO::setTokenSymbol(std::string  token_symbol)
{
	this->token_symbol = token_symbol;
}


