--[[
  OnChain API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- tick_v3_dto class
local tick_v3_dto = {}
local tick_v3_dto_mt = {
	__name = "tick_v3_dto";
	__index = tick_v3_dto;
}

local function cast_tick_v3_dto(t)
	return setmetatable(t, tick_v3_dto_mt)
end

local function new_tick_v3_dto(entry_time, recv_time, block_number, vid, id, pool_address, tick_idx, pool, liquidity_gross, liquidity_net, price_0, price_1, volume_token_0, volume_token_1, volume_usd, untracked_volume_usd, fees_usd, collected_fees_token_0, collected_fees_token_1, collected_fees_usd, created_at_timestamp, liquidity_provider_count, fee_growth_outside_0x128, fee_growth_outside_1x128)
	return cast_tick_v3_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["vid"] = vid;
		["id"] = id;
		["pool_address"] = pool_address;
		["tick_idx"] = tick_idx;
		["pool"] = pool;
		["liquidity_gross"] = liquidity_gross;
		["liquidity_net"] = liquidity_net;
		["price_0"] = price_0;
		["price_1"] = price_1;
		["volume_token_0"] = volume_token_0;
		["volume_token_1"] = volume_token_1;
		["volume_usd"] = volume_usd;
		["untracked_volume_usd"] = untracked_volume_usd;
		["fees_usd"] = fees_usd;
		["collected_fees_token_0"] = collected_fees_token_0;
		["collected_fees_token_1"] = collected_fees_token_1;
		["collected_fees_usd"] = collected_fees_usd;
		["created_at_timestamp"] = created_at_timestamp;
		["liquidity_provider_count"] = liquidity_provider_count;
		["fee_growth_outside_0x128"] = fee_growth_outside_0x128;
		["fee_growth_outside_1x128"] = fee_growth_outside_1x128;
	})
end

return {
	cast = cast_tick_v3_dto;
	new = new_tick_v3_dto;
}