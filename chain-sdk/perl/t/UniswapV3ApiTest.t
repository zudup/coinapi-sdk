=begin comment

OnChain API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::UniswapV3Api');

my $api = WWW::OpenAPIClient::UniswapV3Api->new();
isa_ok($api, 'WWW::OpenAPIClient::UniswapV3Api');

#
# dapps_uniswapv3_bundle_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_bundle_current_get_result = $api->dapps_uniswapv3_bundle_current_get();

#
# dapps_uniswapv3_bundles_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_bundles_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_bundles_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_bundles_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_bundles_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_bundles_historical_get_result = $api->dapps_uniswapv3_bundles_historical_get(start_block => $dapps_uniswapv3_bundles_historical_get_start_block, end_block => $dapps_uniswapv3_bundles_historical_get_end_block, start_date => $dapps_uniswapv3_bundles_historical_get_start_date, end_date => $dapps_uniswapv3_bundles_historical_get_end_date);

#
# dapps_uniswapv3_burns_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_burns_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_current_get_result = $api->dapps_uniswapv3_burns_current_get(filter_pool_id => $dapps_uniswapv3_burns_current_get_filter_pool_id);

#
# dapps_uniswapv3_burns_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_burns_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_burns_historical_get_result = $api->dapps_uniswapv3_burns_historical_get(start_block => $dapps_uniswapv3_burns_historical_get_start_block, end_block => $dapps_uniswapv3_burns_historical_get_end_block, start_date => $dapps_uniswapv3_burns_historical_get_start_date, end_date => $dapps_uniswapv3_burns_historical_get_end_date, pool_id => $dapps_uniswapv3_burns_historical_get_pool_id);

#
# dapps_uniswapv3_day_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_day_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_day_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_day_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_day_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_day_data_historical_get_result = $api->dapps_uniswapv3_day_data_historical_get(start_block => $dapps_uniswapv3_day_data_historical_get_start_block, end_block => $dapps_uniswapv3_day_data_historical_get_end_block, start_date => $dapps_uniswapv3_day_data_historical_get_start_date, end_date => $dapps_uniswapv3_day_data_historical_get_end_date);

#
# dapps_uniswapv3_factory_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_factory_current_get_chain_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_factory_current_get_result = $api->dapps_uniswapv3_factory_current_get(chain_id => $dapps_uniswapv3_factory_current_get_chain_id);

#
# dapps_uniswapv3_factory_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_factory_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_factory_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_factory_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_factory_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_factory_historical_get_result = $api->dapps_uniswapv3_factory_historical_get(start_block => $dapps_uniswapv3_factory_historical_get_start_block, end_block => $dapps_uniswapv3_factory_historical_get_end_block, start_date => $dapps_uniswapv3_factory_historical_get_start_date, end_date => $dapps_uniswapv3_factory_historical_get_end_date);

#
# dapps_uniswapv3_mints_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_mints_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_current_get_result = $api->dapps_uniswapv3_mints_current_get(filter_pool_id => $dapps_uniswapv3_mints_current_get_filter_pool_id);

#
# dapps_uniswapv3_mints_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_mints_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_mints_historical_get_result = $api->dapps_uniswapv3_mints_historical_get(start_block => $dapps_uniswapv3_mints_historical_get_start_block, end_block => $dapps_uniswapv3_mints_historical_get_end_block, start_date => $dapps_uniswapv3_mints_historical_get_start_date, end_date => $dapps_uniswapv3_mints_historical_get_end_date, pool_id => $dapps_uniswapv3_mints_historical_get_pool_id);

#
# dapps_uniswapv3_poi_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_poi_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_poi_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_poi_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_poi_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_poi_historical_get_result = $api->dapps_uniswapv3_poi_historical_get(start_block => $dapps_uniswapv3_poi_historical_get_start_block, end_block => $dapps_uniswapv3_poi_historical_get_end_block, start_date => $dapps_uniswapv3_poi_historical_get_start_date, end_date => $dapps_uniswapv3_poi_historical_get_end_date);

#
# dapps_uniswapv3_pool_day_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pool_day_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_day_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_day_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_day_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_day_data_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_day_data_historical_get_result = $api->dapps_uniswapv3_pool_day_data_historical_get(start_block => $dapps_uniswapv3_pool_day_data_historical_get_start_block, end_block => $dapps_uniswapv3_pool_day_data_historical_get_end_block, start_date => $dapps_uniswapv3_pool_day_data_historical_get_start_date, end_date => $dapps_uniswapv3_pool_day_data_historical_get_end_date, pool_id => $dapps_uniswapv3_pool_day_data_historical_get_pool_id);

#
# dapps_uniswapv3_pool_hour_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pool_hour_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_hour_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_hour_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_hour_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_hour_data_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pool_hour_data_historical_get_result = $api->dapps_uniswapv3_pool_hour_data_historical_get(start_block => $dapps_uniswapv3_pool_hour_data_historical_get_start_block, end_block => $dapps_uniswapv3_pool_hour_data_historical_get_end_block, start_date => $dapps_uniswapv3_pool_hour_data_historical_get_start_date, end_date => $dapps_uniswapv3_pool_hour_data_historical_get_end_date, pool_id => $dapps_uniswapv3_pool_hour_data_historical_get_pool_id);

#
# dapps_uniswapv3_pools_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pools_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_current_get_result = $api->dapps_uniswapv3_pools_current_get(filter_pool_id => $dapps_uniswapv3_pools_current_get_filter_pool_id);

#
# dapps_uniswapv3_pools_day_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pools_day_data_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_day_data_current_get_result = $api->dapps_uniswapv3_pools_day_data_current_get(filter_pool_id => $dapps_uniswapv3_pools_day_data_current_get_filter_pool_id);

#
# dapps_uniswapv3_pools_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pools_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_historical_get_result = $api->dapps_uniswapv3_pools_historical_get(start_block => $dapps_uniswapv3_pools_historical_get_start_block, end_block => $dapps_uniswapv3_pools_historical_get_end_block, start_date => $dapps_uniswapv3_pools_historical_get_start_date, end_date => $dapps_uniswapv3_pools_historical_get_end_date, pool_id => $dapps_uniswapv3_pools_historical_get_pool_id);

#
# dapps_uniswapv3_pools_hour_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_pools_hour_data_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_pools_hour_data_current_get_result = $api->dapps_uniswapv3_pools_hour_data_current_get(filter_pool_id => $dapps_uniswapv3_pools_hour_data_current_get_filter_pool_id);

#
# dapps_uniswapv3_position_snapshot_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_position_snapshot_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshot_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshot_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshot_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshot_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshot_historical_get_result = $api->dapps_uniswapv3_position_snapshot_historical_get(start_block => $dapps_uniswapv3_position_snapshot_historical_get_start_block, end_block => $dapps_uniswapv3_position_snapshot_historical_get_end_block, start_date => $dapps_uniswapv3_position_snapshot_historical_get_start_date, end_date => $dapps_uniswapv3_position_snapshot_historical_get_end_date, pool_id => $dapps_uniswapv3_position_snapshot_historical_get_pool_id);

#
# dapps_uniswapv3_position_snapshots_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_position_snapshots_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_position_snapshots_current_get_result = $api->dapps_uniswapv3_position_snapshots_current_get(filter_pool_id => $dapps_uniswapv3_position_snapshots_current_get_filter_pool_id);

#
# dapps_uniswapv3_positions_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_positions_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_current_get_result = $api->dapps_uniswapv3_positions_current_get(filter_pool_id => $dapps_uniswapv3_positions_current_get_filter_pool_id);

#
# dapps_uniswapv3_positions_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_positions_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_positions_historical_get_result = $api->dapps_uniswapv3_positions_historical_get(start_block => $dapps_uniswapv3_positions_historical_get_start_block, end_block => $dapps_uniswapv3_positions_historical_get_end_block, start_date => $dapps_uniswapv3_positions_historical_get_start_date, end_date => $dapps_uniswapv3_positions_historical_get_end_date, pool_id => $dapps_uniswapv3_positions_historical_get_pool_id);

#
# dapps_uniswapv3_swaps_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_swaps_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_current_get_result = $api->dapps_uniswapv3_swaps_current_get(filter_pool_id => $dapps_uniswapv3_swaps_current_get_filter_pool_id);

#
# dapps_uniswapv3_swaps_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_swaps_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_swaps_historical_get_result = $api->dapps_uniswapv3_swaps_historical_get(start_block => $dapps_uniswapv3_swaps_historical_get_start_block, end_block => $dapps_uniswapv3_swaps_historical_get_end_block, start_date => $dapps_uniswapv3_swaps_historical_get_start_date, end_date => $dapps_uniswapv3_swaps_historical_get_end_date, pool_id => $dapps_uniswapv3_swaps_historical_get_pool_id);

#
# dapps_uniswapv3_tick_day_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_tick_day_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tick_day_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tick_day_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tick_day_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tick_day_data_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tick_day_data_historical_get_result = $api->dapps_uniswapv3_tick_day_data_historical_get(start_block => $dapps_uniswapv3_tick_day_data_historical_get_start_block, end_block => $dapps_uniswapv3_tick_day_data_historical_get_end_block, start_date => $dapps_uniswapv3_tick_day_data_historical_get_start_date, end_date => $dapps_uniswapv3_tick_day_data_historical_get_end_date, pool_id => $dapps_uniswapv3_tick_day_data_historical_get_pool_id);

#
# dapps_uniswapv3_ticks_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_ticks_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_current_get_result = $api->dapps_uniswapv3_ticks_current_get(filter_pool_id => $dapps_uniswapv3_ticks_current_get_filter_pool_id);

#
# dapps_uniswapv3_ticks_day_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_ticks_day_data_current_get_filter_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_day_data_current_get_result = $api->dapps_uniswapv3_ticks_day_data_current_get(filter_pool_id => $dapps_uniswapv3_ticks_day_data_current_get_filter_pool_id);

#
# dapps_uniswapv3_ticks_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_ticks_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_historical_get_pool_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_ticks_historical_get_result = $api->dapps_uniswapv3_ticks_historical_get(start_block => $dapps_uniswapv3_ticks_historical_get_start_block, end_block => $dapps_uniswapv3_ticks_historical_get_end_block, start_date => $dapps_uniswapv3_ticks_historical_get_start_date, end_date => $dapps_uniswapv3_ticks_historical_get_end_date, pool_id => $dapps_uniswapv3_ticks_historical_get_pool_id);

#
# dapps_uniswapv3_token_day_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_token_day_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_day_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_day_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_day_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_day_data_historical_get_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_day_data_historical_get_result = $api->dapps_uniswapv3_token_day_data_historical_get(start_block => $dapps_uniswapv3_token_day_data_historical_get_start_block, end_block => $dapps_uniswapv3_token_day_data_historical_get_end_block, start_date => $dapps_uniswapv3_token_day_data_historical_get_start_date, end_date => $dapps_uniswapv3_token_day_data_historical_get_end_date, token_id => $dapps_uniswapv3_token_day_data_historical_get_token_id);

#
# dapps_uniswapv3_token_hour_data_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_token_hour_data_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_hour_data_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_hour_data_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_hour_data_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_hour_data_historical_get_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_token_hour_data_historical_get_result = $api->dapps_uniswapv3_token_hour_data_historical_get(start_block => $dapps_uniswapv3_token_hour_data_historical_get_start_block, end_block => $dapps_uniswapv3_token_hour_data_historical_get_end_block, start_date => $dapps_uniswapv3_token_hour_data_historical_get_start_date, end_date => $dapps_uniswapv3_token_hour_data_historical_get_end_date, token_id => $dapps_uniswapv3_token_hour_data_historical_get_token_id);

#
# dapps_uniswapv3_tokens_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_tokens_current_get_filter_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_current_get_result = $api->dapps_uniswapv3_tokens_current_get(filter_token_id => $dapps_uniswapv3_tokens_current_get_filter_token_id);

#
# dapps_uniswapv3_tokens_day_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_tokens_day_data_current_get_filter_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_day_data_current_get_result = $api->dapps_uniswapv3_tokens_day_data_current_get(filter_token_id => $dapps_uniswapv3_tokens_day_data_current_get_filter_token_id);

#
# dapps_uniswapv3_tokens_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_tokens_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_historical_get_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_historical_get_result = $api->dapps_uniswapv3_tokens_historical_get(start_block => $dapps_uniswapv3_tokens_historical_get_start_block, end_block => $dapps_uniswapv3_tokens_historical_get_end_block, start_date => $dapps_uniswapv3_tokens_historical_get_start_date, end_date => $dapps_uniswapv3_tokens_historical_get_end_date, token_id => $dapps_uniswapv3_tokens_historical_get_token_id);

#
# dapps_uniswapv3_tokens_hour_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_tokens_hour_data_current_get_filter_token_id = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_tokens_hour_data_current_get_result = $api->dapps_uniswapv3_tokens_hour_data_current_get(filter_token_id => $dapps_uniswapv3_tokens_hour_data_current_get_filter_token_id);

#
# dapps_uniswapv3_transactions_historical_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_transactions_historical_get_start_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_transactions_historical_get_end_block = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_transactions_historical_get_start_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_transactions_historical_get_end_date = undef; # replace NULL with a proper value
#my $dapps_uniswapv3_transactions_historical_get_result = $api->dapps_uniswapv3_transactions_historical_get(start_block => $dapps_uniswapv3_transactions_historical_get_start_block, end_block => $dapps_uniswapv3_transactions_historical_get_end_block, start_date => $dapps_uniswapv3_transactions_historical_get_start_date, end_date => $dapps_uniswapv3_transactions_historical_get_end_date);

#
# dapps_uniswapv3_uniswap_day_data_current_get test
#
# uncomment below and update the test
#my $dapps_uniswapv3_uniswap_day_data_current_get_result = $api->dapps_uniswapv3_uniswap_day_data_current_get();

