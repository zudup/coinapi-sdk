--[[
  OnChain API

   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

  The version of the OpenAPI document: v1
  Contact: support@coinapi.io
  Generated by: https://openapi-generator.tech
]]

--package openapiclient

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import

local users_api = {}
local users_api_mt = {
	__name = "users_api";
	__index = users_api;
}

local function new_users_api(authority, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	local host, port = http_util.split_authority(authority, default_scheme)
	return setmetatable({
		host = host;
		port = port;
		basePath = basePath or "https://onchain.coinapi.io";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, users_api_mt)
end

function users_api:chains_chain_id_dapps_cow_users_historical_get(chain_id, start_block, end_block, start_date, end_date)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/chains/%s/dapps/cow/users/historical?startBlock=%s&endBlock=%s&startDate=%s&endDate=%s",
			self.basePath, chain_id, http_util.encodeURIComponent(start_block), http_util.encodeURIComponent(end_block), http_util.encodeURIComponent(start_date), http_util.encodeURIComponent(end_date));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:chains_chain_id_dapps_sushiswap_users_historical_get(chain_id, start_block, end_block, start_date, end_date)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/chains/%s/dapps/sushiswap/users/historical?startBlock=%s&endBlock=%s&startDate=%s&endDate=%s",
			self.basePath, chain_id, http_util.encodeURIComponent(start_block), http_util.encodeURIComponent(end_block), http_util.encodeURIComponent(start_date), http_util.encodeURIComponent(end_date));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function users_api:chains_chain_id_dapps_uniswapv2_users_historical_get(chain_id, start_block, end_block, start_date, end_date)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/chains/%s/dapps/uniswapv2/users/historical?startBlock=%s&endBlock=%s&startDate=%s&endDate=%s",
			self.basePath, chain_id, http_util.encodeURIComponent(start_block), http_util.encodeURIComponent(end_block), http_util.encodeURIComponent(start_date), http_util.encodeURIComponent(end_date));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		return nil, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_users_api;
}
