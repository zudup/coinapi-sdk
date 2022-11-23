--[[
  On Chain - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- uniswap_v3_token_hour_data_dto class
local uniswap_v3_token_hour_data_dto = {}
local uniswap_v3_token_hour_data_dto_mt = {
	__name = "uniswap_v3_token_hour_data_dto";
	__index = uniswap_v3_token_hour_data_dto;
}

local function cast_uniswap_v3_token_hour_data_dto(t)
	return setmetatable(t, uniswap_v3_token_hour_data_dto_mt)
end

local function new_uniswap_v3_token_hour_data_dto(entry_time, recv_time, block_number, id, period_start_unix, token, volume, volume_usd, untracked_volume_usd, total_value_locked, total_value_locked_usd, price_usd, fees_usd, open, high, low, close, vid)
	return cast_uniswap_v3_token_hour_data_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["period_start_unix"] = period_start_unix;
		["token"] = token;
		["volume"] = volume;
		["volume_usd"] = volume_usd;
		["untracked_volume_usd"] = untracked_volume_usd;
		["total_value_locked"] = total_value_locked;
		["total_value_locked_usd"] = total_value_locked_usd;
		["price_usd"] = price_usd;
		["fees_usd"] = fees_usd;
		["open"] = open;
		["high"] = high;
		["low"] = low;
		["close"] = close;
		["vid"] = vid;
	})
end

return {
	cast = cast_uniswap_v3_token_hour_data_dto;
	new = new_uniswap_v3_token_hour_data_dto;
}
