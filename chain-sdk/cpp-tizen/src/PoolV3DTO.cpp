#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "PoolV3DTO.h"

using namespace std;
using namespace Tizen::ArtikCloud;

PoolV3DTO::PoolV3DTO()
{
	//__init();
}

PoolV3DTO::~PoolV3DTO()
{
	//__cleanup();
}

void
PoolV3DTO::__init()
{
	//entry_time = null;
	//recv_time = null;
	//block_number = long(0);
	//vid = long(0);
	//id = std::string();
	//created_at_timestamp = null;
	//token_0 = std::string();
	//token_1 = std::string();
	//fee_tier = new BigInteger();
	//liquidity = new BigInteger();
	//sqrt_price = new BigInteger();
	//fee_growth_global_0x128 = new BigInteger();
	//fee_growth_global_1x128 = new BigInteger();
	//token_0_price = std::string();
	//token_1_price = std::string();
	//tick = new BigInteger();
	//observation_index = new BigInteger();
	//volume_token_0 = std::string();
	//volume_token_1 = std::string();
	//volume_usd = std::string();
	//untracked_volume_usd = std::string();
	//fees_usd = std::string();
	//tx_count = new BigInteger();
	//collected_fees_token_0 = std::string();
	//collected_fees_token_1 = std::string();
	//collected_fees_usd = std::string();
	//total_value_locked_token_0 = std::string();
	//total_value_locked_token_1 = std::string();
	//total_value_locked_eth = std::string();
	//total_value_locked_usd = std::string();
	//total_value_locked_usd_untracked = std::string();
	//liquidity_provider_count = std::string();
	//evaluated_ask = double(0);
}

void
PoolV3DTO::__cleanup()
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
	//if(created_at_timestamp != NULL) {
	//
	//delete created_at_timestamp;
	//created_at_timestamp = NULL;
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
	//if(fee_tier != NULL) {
	//
	//delete fee_tier;
	//fee_tier = NULL;
	//}
	//if(liquidity != NULL) {
	//
	//delete liquidity;
	//liquidity = NULL;
	//}
	//if(sqrt_price != NULL) {
	//
	//delete sqrt_price;
	//sqrt_price = NULL;
	//}
	//if(fee_growth_global_0x128 != NULL) {
	//
	//delete fee_growth_global_0x128;
	//fee_growth_global_0x128 = NULL;
	//}
	//if(fee_growth_global_1x128 != NULL) {
	//
	//delete fee_growth_global_1x128;
	//fee_growth_global_1x128 = NULL;
	//}
	//if(token_0_price != NULL) {
	//
	//delete token_0_price;
	//token_0_price = NULL;
	//}
	//if(token_1_price != NULL) {
	//
	//delete token_1_price;
	//token_1_price = NULL;
	//}
	//if(tick != NULL) {
	//
	//delete tick;
	//tick = NULL;
	//}
	//if(observation_index != NULL) {
	//
	//delete observation_index;
	//observation_index = NULL;
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
	//if(untracked_volume_usd != NULL) {
	//
	//delete untracked_volume_usd;
	//untracked_volume_usd = NULL;
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
	//if(collected_fees_usd != NULL) {
	//
	//delete collected_fees_usd;
	//collected_fees_usd = NULL;
	//}
	//if(total_value_locked_token_0 != NULL) {
	//
	//delete total_value_locked_token_0;
	//total_value_locked_token_0 = NULL;
	//}
	//if(total_value_locked_token_1 != NULL) {
	//
	//delete total_value_locked_token_1;
	//total_value_locked_token_1 = NULL;
	//}
	//if(total_value_locked_eth != NULL) {
	//
	//delete total_value_locked_eth;
	//total_value_locked_eth = NULL;
	//}
	//if(total_value_locked_usd != NULL) {
	//
	//delete total_value_locked_usd;
	//total_value_locked_usd = NULL;
	//}
	//if(total_value_locked_usd_untracked != NULL) {
	//
	//delete total_value_locked_usd_untracked;
	//total_value_locked_usd_untracked = NULL;
	//}
	//if(liquidity_provider_count != NULL) {
	//
	//delete liquidity_provider_count;
	//liquidity_provider_count = NULL;
	//}
	//if(evaluated_ask != NULL) {
	//
	//delete evaluated_ask;
	//evaluated_ask = NULL;
	//}
	//
}

void
PoolV3DTO::fromJson(char* jsonStr)
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
	const gchar *created_at_timestampKey = "created_at_timestamp";
	node = json_object_get_member(pJsonObject, created_at_timestampKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&created_at_timestamp, node, "std::string", "");
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
	const gchar *fee_tierKey = "fee_tier";
	node = json_object_get_member(pJsonObject, fee_tierKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&fee_tier, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&fee_tier);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *liquidityKey = "liquidity";
	node = json_object_get_member(pJsonObject, liquidityKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&liquidity, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&liquidity);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sqrt_priceKey = "sqrt_price";
	node = json_object_get_member(pJsonObject, sqrt_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&sqrt_price, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&sqrt_price);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fee_growth_global_0x128Key = "fee_growth_global_0x128";
	node = json_object_get_member(pJsonObject, fee_growth_global_0x128Key);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&fee_growth_global_0x128, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&fee_growth_global_0x128);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *fee_growth_global_1x128Key = "fee_growth_global_1x128";
	node = json_object_get_member(pJsonObject, fee_growth_global_1x128Key);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&fee_growth_global_1x128, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&fee_growth_global_1x128);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *token_0_priceKey = "token_0_price";
	node = json_object_get_member(pJsonObject, token_0_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_0_price, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *token_1_priceKey = "token_1_price";
	node = json_object_get_member(pJsonObject, token_1_priceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&token_1_price, node, "std::string", "");
		} else {
			
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
	const gchar *observation_indexKey = "observation_index";
	node = json_object_get_member(pJsonObject, observation_indexKey);
	if (node !=NULL) {
	

		if (isprimitive("BigInteger")) {
			jsonToValue(&observation_index, node, "BigInteger", "BigInteger");
		} else {
			
			BigInteger* obj = static_cast<BigInteger*> (&observation_index);
			obj->fromJson(json_to_string(node, false));
			
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
	const gchar *untracked_volume_usdKey = "untracked_volume_usd";
	node = json_object_get_member(pJsonObject, untracked_volume_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&untracked_volume_usd, node, "std::string", "");
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
	const gchar *collected_fees_usdKey = "collected_fees_usd";
	node = json_object_get_member(pJsonObject, collected_fees_usdKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&collected_fees_usd, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_value_locked_token_0Key = "total_value_locked_token_0";
	node = json_object_get_member(pJsonObject, total_value_locked_token_0Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked_token_0, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_value_locked_token_1Key = "total_value_locked_token_1";
	node = json_object_get_member(pJsonObject, total_value_locked_token_1Key);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked_token_1, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *total_value_locked_ethKey = "total_value_locked_eth";
	node = json_object_get_member(pJsonObject, total_value_locked_ethKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked_eth, node, "std::string", "");
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
	const gchar *total_value_locked_usd_untrackedKey = "total_value_locked_usd_untracked";
	node = json_object_get_member(pJsonObject, total_value_locked_usd_untrackedKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&total_value_locked_usd_untracked, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *liquidity_provider_countKey = "liquidity_provider_count";
	node = json_object_get_member(pJsonObject, liquidity_provider_countKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&liquidity_provider_count, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *evaluated_askKey = "evaluated_ask";
	node = json_object_get_member(pJsonObject, evaluated_askKey);
	if (node !=NULL) {
	

		if (isprimitive("double")) {
			jsonToValue(&evaluated_ask, node, "double", "");
		} else {
			
		}
	}
}

PoolV3DTO::PoolV3DTO(char* json)
{
	this->fromJson(json);
}

char*
PoolV3DTO::toJson()
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
		std::string obj = getCreatedAtTimestamp();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *created_at_timestampKey = "created_at_timestamp";
	json_object_set_member(pJsonObject, created_at_timestampKey, node);
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
	if (isprimitive("BigInteger")) {
		BigInteger obj = getFeeTier();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getFeeTier());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fee_tierKey = "fee_tier";
	json_object_set_member(pJsonObject, fee_tierKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getLiquidity();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getLiquidity());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *liquidityKey = "liquidity";
	json_object_set_member(pJsonObject, liquidityKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getSqrtPrice();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getSqrtPrice());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *sqrt_priceKey = "sqrt_price";
	json_object_set_member(pJsonObject, sqrt_priceKey, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getFeeGrowthGlobal0x128();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getFeeGrowthGlobal0x128());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fee_growth_global_0x128Key = "fee_growth_global_0x128";
	json_object_set_member(pJsonObject, fee_growth_global_0x128Key, node);
	if (isprimitive("BigInteger")) {
		BigInteger obj = getFeeGrowthGlobal1x128();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getFeeGrowthGlobal1x128());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *fee_growth_global_1x128Key = "fee_growth_global_1x128";
	json_object_set_member(pJsonObject, fee_growth_global_1x128Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getToken0Price();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_0_priceKey = "token_0_price";
	json_object_set_member(pJsonObject, token_0_priceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getToken1Price();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *token_1_priceKey = "token_1_price";
	json_object_set_member(pJsonObject, token_1_priceKey, node);
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
		BigInteger obj = getObservationIndex();
		node = converttoJson(&obj, "BigInteger", "");
	}
	else {
		
		BigInteger obj = static_cast<BigInteger> (getObservationIndex());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *observation_indexKey = "observation_index";
	json_object_set_member(pJsonObject, observation_indexKey, node);
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
		std::string obj = getUntrackedVolumeUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *untracked_volume_usdKey = "untracked_volume_usd";
	json_object_set_member(pJsonObject, untracked_volume_usdKey, node);
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
		std::string obj = getCollectedFeesUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *collected_fees_usdKey = "collected_fees_usd";
	json_object_set_member(pJsonObject, collected_fees_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedToken0();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_token_0Key = "total_value_locked_token_0";
	json_object_set_member(pJsonObject, total_value_locked_token_0Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedToken1();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_token_1Key = "total_value_locked_token_1";
	json_object_set_member(pJsonObject, total_value_locked_token_1Key, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedEth();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_ethKey = "total_value_locked_eth";
	json_object_set_member(pJsonObject, total_value_locked_ethKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedUsd();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_usdKey = "total_value_locked_usd";
	json_object_set_member(pJsonObject, total_value_locked_usdKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTotalValueLockedUsdUntracked();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *total_value_locked_usd_untrackedKey = "total_value_locked_usd_untracked";
	json_object_set_member(pJsonObject, total_value_locked_usd_untrackedKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getLiquidityProviderCount();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *liquidity_provider_countKey = "liquidity_provider_count";
	json_object_set_member(pJsonObject, liquidity_provider_countKey, node);
	if (isprimitive("double")) {
		double obj = getEvaluatedAsk();
		node = converttoJson(&obj, "double", "");
	}
	else {
		
	}
	const gchar *evaluated_askKey = "evaluated_ask";
	json_object_set_member(pJsonObject, evaluated_askKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
PoolV3DTO::getEntryTime()
{
	return entry_time;
}

void
PoolV3DTO::setEntryTime(std::string  entry_time)
{
	this->entry_time = entry_time;
}

std::string
PoolV3DTO::getRecvTime()
{
	return recv_time;
}

void
PoolV3DTO::setRecvTime(std::string  recv_time)
{
	this->recv_time = recv_time;
}

long long
PoolV3DTO::getBlockNumber()
{
	return block_number;
}

void
PoolV3DTO::setBlockNumber(long long  block_number)
{
	this->block_number = block_number;
}

long long
PoolV3DTO::getVid()
{
	return vid;
}

void
PoolV3DTO::setVid(long long  vid)
{
	this->vid = vid;
}

std::string
PoolV3DTO::getId()
{
	return id;
}

void
PoolV3DTO::setId(std::string  id)
{
	this->id = id;
}

std::string
PoolV3DTO::getCreatedAtTimestamp()
{
	return created_at_timestamp;
}

void
PoolV3DTO::setCreatedAtTimestamp(std::string  created_at_timestamp)
{
	this->created_at_timestamp = created_at_timestamp;
}

std::string
PoolV3DTO::getToken0()
{
	return token_0;
}

void
PoolV3DTO::setToken0(std::string  token_0)
{
	this->token_0 = token_0;
}

std::string
PoolV3DTO::getToken1()
{
	return token_1;
}

void
PoolV3DTO::setToken1(std::string  token_1)
{
	this->token_1 = token_1;
}

BigInteger
PoolV3DTO::getFeeTier()
{
	return fee_tier;
}

void
PoolV3DTO::setFeeTier(BigInteger  fee_tier)
{
	this->fee_tier = fee_tier;
}

BigInteger
PoolV3DTO::getLiquidity()
{
	return liquidity;
}

void
PoolV3DTO::setLiquidity(BigInteger  liquidity)
{
	this->liquidity = liquidity;
}

BigInteger
PoolV3DTO::getSqrtPrice()
{
	return sqrt_price;
}

void
PoolV3DTO::setSqrtPrice(BigInteger  sqrt_price)
{
	this->sqrt_price = sqrt_price;
}

BigInteger
PoolV3DTO::getFeeGrowthGlobal0x128()
{
	return fee_growth_global_0x128;
}

void
PoolV3DTO::setFeeGrowthGlobal0x128(BigInteger  fee_growth_global_0x128)
{
	this->fee_growth_global_0x128 = fee_growth_global_0x128;
}

BigInteger
PoolV3DTO::getFeeGrowthGlobal1x128()
{
	return fee_growth_global_1x128;
}

void
PoolV3DTO::setFeeGrowthGlobal1x128(BigInteger  fee_growth_global_1x128)
{
	this->fee_growth_global_1x128 = fee_growth_global_1x128;
}

std::string
PoolV3DTO::getToken0Price()
{
	return token_0_price;
}

void
PoolV3DTO::setToken0Price(std::string  token_0_price)
{
	this->token_0_price = token_0_price;
}

std::string
PoolV3DTO::getToken1Price()
{
	return token_1_price;
}

void
PoolV3DTO::setToken1Price(std::string  token_1_price)
{
	this->token_1_price = token_1_price;
}

BigInteger
PoolV3DTO::getTick()
{
	return tick;
}

void
PoolV3DTO::setTick(BigInteger  tick)
{
	this->tick = tick;
}

BigInteger
PoolV3DTO::getObservationIndex()
{
	return observation_index;
}

void
PoolV3DTO::setObservationIndex(BigInteger  observation_index)
{
	this->observation_index = observation_index;
}

std::string
PoolV3DTO::getVolumeToken0()
{
	return volume_token_0;
}

void
PoolV3DTO::setVolumeToken0(std::string  volume_token_0)
{
	this->volume_token_0 = volume_token_0;
}

std::string
PoolV3DTO::getVolumeToken1()
{
	return volume_token_1;
}

void
PoolV3DTO::setVolumeToken1(std::string  volume_token_1)
{
	this->volume_token_1 = volume_token_1;
}

std::string
PoolV3DTO::getVolumeUsd()
{
	return volume_usd;
}

void
PoolV3DTO::setVolumeUsd(std::string  volume_usd)
{
	this->volume_usd = volume_usd;
}

std::string
PoolV3DTO::getUntrackedVolumeUsd()
{
	return untracked_volume_usd;
}

void
PoolV3DTO::setUntrackedVolumeUsd(std::string  untracked_volume_usd)
{
	this->untracked_volume_usd = untracked_volume_usd;
}

std::string
PoolV3DTO::getFeesUsd()
{
	return fees_usd;
}

void
PoolV3DTO::setFeesUsd(std::string  fees_usd)
{
	this->fees_usd = fees_usd;
}

BigInteger
PoolV3DTO::getTxCount()
{
	return tx_count;
}

void
PoolV3DTO::setTxCount(BigInteger  tx_count)
{
	this->tx_count = tx_count;
}

std::string
PoolV3DTO::getCollectedFeesToken0()
{
	return collected_fees_token_0;
}

void
PoolV3DTO::setCollectedFeesToken0(std::string  collected_fees_token_0)
{
	this->collected_fees_token_0 = collected_fees_token_0;
}

std::string
PoolV3DTO::getCollectedFeesToken1()
{
	return collected_fees_token_1;
}

void
PoolV3DTO::setCollectedFeesToken1(std::string  collected_fees_token_1)
{
	this->collected_fees_token_1 = collected_fees_token_1;
}

std::string
PoolV3DTO::getCollectedFeesUsd()
{
	return collected_fees_usd;
}

void
PoolV3DTO::setCollectedFeesUsd(std::string  collected_fees_usd)
{
	this->collected_fees_usd = collected_fees_usd;
}

std::string
PoolV3DTO::getTotalValueLockedToken0()
{
	return total_value_locked_token_0;
}

void
PoolV3DTO::setTotalValueLockedToken0(std::string  total_value_locked_token_0)
{
	this->total_value_locked_token_0 = total_value_locked_token_0;
}

std::string
PoolV3DTO::getTotalValueLockedToken1()
{
	return total_value_locked_token_1;
}

void
PoolV3DTO::setTotalValueLockedToken1(std::string  total_value_locked_token_1)
{
	this->total_value_locked_token_1 = total_value_locked_token_1;
}

std::string
PoolV3DTO::getTotalValueLockedEth()
{
	return total_value_locked_eth;
}

void
PoolV3DTO::setTotalValueLockedEth(std::string  total_value_locked_eth)
{
	this->total_value_locked_eth = total_value_locked_eth;
}

std::string
PoolV3DTO::getTotalValueLockedUsd()
{
	return total_value_locked_usd;
}

void
PoolV3DTO::setTotalValueLockedUsd(std::string  total_value_locked_usd)
{
	this->total_value_locked_usd = total_value_locked_usd;
}

std::string
PoolV3DTO::getTotalValueLockedUsdUntracked()
{
	return total_value_locked_usd_untracked;
}

void
PoolV3DTO::setTotalValueLockedUsdUntracked(std::string  total_value_locked_usd_untracked)
{
	this->total_value_locked_usd_untracked = total_value_locked_usd_untracked;
}

std::string
PoolV3DTO::getLiquidityProviderCount()
{
	return liquidity_provider_count;
}

void
PoolV3DTO::setLiquidityProviderCount(std::string  liquidity_provider_count)
{
	this->liquidity_provider_count = liquidity_provider_count;
}

double
PoolV3DTO::getEvaluatedAsk()
{
	return evaluated_ask;
}

void
PoolV3DTO::setEvaluatedAsk(double  evaluated_ask)
{
	this->evaluated_ask = evaluated_ask;
}


