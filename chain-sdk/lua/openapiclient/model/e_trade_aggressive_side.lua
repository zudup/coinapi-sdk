--[[
  OnChain API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- e_trade_aggressive_side class
local e_trade_aggressive_side = {}
local e_trade_aggressive_side_mt = {
	__name = "e_trade_aggressive_side";
	__index = e_trade_aggressive_side;
}

local function cast_e_trade_aggressive_side(t)
	return setmetatable(t, e_trade_aggressive_side_mt)
end

local function new_e_trade_aggressive_side()
	return cast_e_trade_aggressive_side({
	})
end

return {
	cast = cast_e_trade_aggressive_side;
	new = new_e_trade_aggressive_side;
}
