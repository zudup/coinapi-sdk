--[[
  On Chain - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- sushiswap_token_day_data_dto class
local sushiswap_token_day_data_dto = {}
local sushiswap_token_day_data_dto_mt = {
	__name = "sushiswap_token_day_data_dto";
	__index = sushiswap_token_day_data_dto;
}

local function cast_sushiswap_token_day_data_dto(t)
	return setmetatable(t, sushiswap_token_day_data_dto_mt)
end

local function new_sushiswap_token_day_data_dto(entry_time, recv_time, block_number, id, date, token, volume, volume_eth, volume_usd, tx_count, liquidity, liquidity_eth, liquidity_usd, price_usd, vid)
	return cast_sushiswap_token_day_data_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["date"] = date;
		["token"] = token;
		["volume"] = volume;
		["volume_eth"] = volume_eth;
		["volume_usd"] = volume_usd;
		["tx_count"] = tx_count;
		["liquidity"] = liquidity;
		["liquidity_eth"] = liquidity_eth;
		["liquidity_usd"] = liquidity_usd;
		["price_usd"] = price_usd;
		["vid"] = vid;
	})
end

return {
	cast = cast_sushiswap_token_day_data_dto;
	new = new_sushiswap_token_day_data_dto;
}
