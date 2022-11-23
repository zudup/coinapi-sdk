--[[
  On Chain - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- dex_order_dto class
local dex_order_dto = {}
local dex_order_dto_mt = {
	__name = "dex_order_dto";
	__index = dex_order_dto;
}

local function cast_dex_order_dto(t)
	return setmetatable(t, dex_order_dto_mt)
end

local function new_dex_order_dto(entry_time, recv_time, block_number, id, owner, order_id, from_batch_id, from_epoch, until_batch_id, until_epoch, buy_token, sell_token, price_numerator, price_denominator, max_sell_amount, min_receive_amount, sold_volume, bought_volume, create_epoch, cancel_epoch, delete_epoch, tx_hash, tx_log_index, vid)
	return cast_dex_order_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["owner"] = owner;
		["order_id"] = order_id;
		["from_batch_id"] = from_batch_id;
		["from_epoch"] = from_epoch;
		["until_batch_id"] = until_batch_id;
		["until_epoch"] = until_epoch;
		["buy_token"] = buy_token;
		["sell_token"] = sell_token;
		["price_numerator"] = price_numerator;
		["price_denominator"] = price_denominator;
		["max_sell_amount"] = max_sell_amount;
		["min_receive_amount"] = min_receive_amount;
		["sold_volume"] = sold_volume;
		["bought_volume"] = bought_volume;
		["create_epoch"] = create_epoch;
		["cancel_epoch"] = cancel_epoch;
		["delete_epoch"] = delete_epoch;
		["tx_hash"] = tx_hash;
		["tx_log_index"] = tx_log_index;
		["vid"] = vid;
	})
end

return {
	cast = cast_dex_order_dto;
	new = new_dex_order_dto;
}
