--[[
  OEML - REST API
 
  This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
 
  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

-- fills class
local fills = {}
local fills_mt = {
	__name = "fills";
	__index = fills;
}

local function cast_fills(t)
	return setmetatable(t, fills_mt)
end

local function new_fills(time, price, amount)
	return cast_fills({
		["time"] = time;
		["price"] = price;
		["amount"] = amount;
	})
end

return {
	cast = cast_fills;
	new = new_fills;
}
