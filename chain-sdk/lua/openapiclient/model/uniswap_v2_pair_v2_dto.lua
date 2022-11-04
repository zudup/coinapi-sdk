--[[
  OnChain API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- uniswap_v2_pair_v2_dto class
local uniswap_v2_pair_v2_dto = {}
local uniswap_v2_pair_v2_dto_mt = {
	__name = "uniswap_v2_pair_v2_dto";
	__index = uniswap_v2_pair_v2_dto;
}

local function cast_uniswap_v2_pair_v2_dto(t)
	return setmetatable(t, uniswap_v2_pair_v2_dto_mt)
end

local function new_uniswap_v2_pair_v2_dto(entry_time, recv_time, block_number, vid, id, token_0, token_1, reserve_0, reserve_1, total_supply, reserve_eth, reserve_usd, tracked_reserve_eth, token_0_price, token_1_price, volume_token_0, volume_token_1, volume_usd, untracked_volume_usd, tx_count, created_at_timestamp, liquidity_provider_count, evaluated_ask)
	return cast_uniswap_v2_pair_v2_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["vid"] = vid;
		["id"] = id;
		["token_0"] = token_0;
		["token_1"] = token_1;
		["reserve_0"] = reserve_0;
		["reserve_1"] = reserve_1;
		["total_supply"] = total_supply;
		["reserve_eth"] = reserve_eth;
		["reserve_usd"] = reserve_usd;
		["tracked_reserve_eth"] = tracked_reserve_eth;
		["token_0_price"] = token_0_price;
		["token_1_price"] = token_1_price;
		["volume_token_0"] = volume_token_0;
		["volume_token_1"] = volume_token_1;
		["volume_usd"] = volume_usd;
		["untracked_volume_usd"] = untracked_volume_usd;
		["tx_count"] = tx_count;
		["created_at_timestamp"] = created_at_timestamp;
		["liquidity_provider_count"] = liquidity_provider_count;
		["evaluated_ask"] = evaluated_ask;
	})
end

return {
	cast = cast_uniswap_v2_pair_v2_dto;
	new = new_uniswap_v2_pair_v2_dto;
}