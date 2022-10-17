package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client generated by OpenAPI Generator",
	detailed = [[
 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             ]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.pools_api"] = "openapiclient/api/pools_api.lua";
		["openapiclient.api.sushiswap_api"] = "openapiclient/api/sushiswap_api.lua";
		["openapiclient.api.swaps_api"] = "openapiclient/api/swaps_api.lua";
		["openapiclient.api.tokens_api"] = "openapiclient/api/tokens_api.lua";
		["openapiclient.api.trades_api"] = "openapiclient/api/trades_api.lua";
		["openapiclient.api.uniswap_v2_api"] = "openapiclient/api/uniswap_v2_api.lua";
		["openapiclient.api.uniswap_v3_api"] = "openapiclient/api/uniswap_v3_api.lua";
		["openapiclient.model.big_integer"] = "openapiclient/model/big_integer.lua";
		["openapiclient.model.bundle_v3_dto"] = "openapiclient/model/bundle_v3_dto.lua";
		["openapiclient.model.burn_v3_dto"] = "openapiclient/model/burn_v3_dto.lua";
		["openapiclient.model.e_trade_aggressive_side"] = "openapiclient/model/e_trade_aggressive_side.lua";
		["openapiclient.model.factory_v3_dto"] = "openapiclient/model/factory_v3_dto.lua";
		["openapiclient.model.mint_v3_dto"] = "openapiclient/model/mint_v3_dto.lua";
		["openapiclient.model.pair_dto"] = "openapiclient/model/pair_dto.lua";
		["openapiclient.model.pair_v2_dto"] = "openapiclient/model/pair_v2_dto.lua";
		["openapiclient.model.pool_day_data_v3_dto"] = "openapiclient/model/pool_day_data_v3_dto.lua";
		["openapiclient.model.pool_hour_data_v3_dto"] = "openapiclient/model/pool_hour_data_v3_dto.lua";
		["openapiclient.model.pool_v3_dto"] = "openapiclient/model/pool_v3_dto.lua";
		["openapiclient.model.position_snapshot_v3_dto"] = "openapiclient/model/position_snapshot_v3_dto.lua";
		["openapiclient.model.position_v3_dto"] = "openapiclient/model/position_v3_dto.lua";
		["openapiclient.model.swap_dto"] = "openapiclient/model/swap_dto.lua";
		["openapiclient.model.swap_v2_dto"] = "openapiclient/model/swap_v2_dto.lua";
		["openapiclient.model.swap_v3_dto"] = "openapiclient/model/swap_v3_dto.lua";
		["openapiclient.model.tick_day_data_v3_dto"] = "openapiclient/model/tick_day_data_v3_dto.lua";
		["openapiclient.model.tick_v3_dto"] = "openapiclient/model/tick_v3_dto.lua";
		["openapiclient.model.token_dto"] = "openapiclient/model/token_dto.lua";
		["openapiclient.model.token_hour_data_v3_dto"] = "openapiclient/model/token_hour_data_v3_dto.lua";
		["openapiclient.model.token_v2_dto"] = "openapiclient/model/token_v2_dto.lua";
		["openapiclient.model.token_v3_day_data_dto"] = "openapiclient/model/token_v3_day_data_dto.lua";
		["openapiclient.model.token_v3_dto"] = "openapiclient/model/token_v3_dto.lua";
		["openapiclient.model.uniswap_day_data_v3_dto"] = "openapiclient/model/uniswap_day_data_v3_dto.lua";
	}
}
