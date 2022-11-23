--[[
  On Chain - REST API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- uniswap_v3_position_snapshot_dto class
local uniswap_v3_position_snapshot_dto = {}
local uniswap_v3_position_snapshot_dto_mt = {
	__name = "uniswap_v3_position_snapshot_dto";
	__index = uniswap_v3_position_snapshot_dto;
}

local function cast_uniswap_v3_position_snapshot_dto(t)
	return setmetatable(t, uniswap_v3_position_snapshot_dto_mt)
end

local function new_uniswap_v3_position_snapshot_dto(entry_time, recv_time, block_number, id, owner, pool, position, timestamp, liquidity, deposited_token_0, deposited_token_1, withdrawn_token_0, withdrawn_token_1, collected_fees_token_0, collected_fees_token_1, transaction, fee_growth_inside_0_last_x128, fee_growth_inside_1_last_x128, vid)
	return cast_uniswap_v3_position_snapshot_dto({
		["entry_time"] = entry_time;
		["recv_time"] = recv_time;
		["block_number"] = block_number;
		["id"] = id;
		["owner"] = owner;
		["pool"] = pool;
		["position"] = position;
		["timestamp"] = timestamp;
		["liquidity"] = liquidity;
		["deposited_token_0"] = deposited_token_0;
		["deposited_token_1"] = deposited_token_1;
		["withdrawn_token_0"] = withdrawn_token_0;
		["withdrawn_token_1"] = withdrawn_token_1;
		["collected_fees_token_0"] = collected_fees_token_0;
		["collected_fees_token_1"] = collected_fees_token_1;
		["transaction"] = transaction;
		["fee_growth_inside_0_last_x128"] = fee_growth_inside_0_last_x128;
		["fee_growth_inside_1_last_x128"] = fee_growth_inside_1_last_x128;
		["vid"] = vid;
	})
end

return {
	cast = cast_uniswap_v3_position_snapshot_dto;
	new = new_uniswap_v3_position_snapshot_dto;
}
