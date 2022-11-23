=begin comment

On Chain - REST API

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

use_ok('WWW::OpenAPIClient::DexApi');

my $api = WWW::OpenAPIClient::DexApi->new();
isa_ok($api, 'WWW::OpenAPIClient::DexApi');

#
# dex_batches__current test
#
# uncomment below and update the test
#my $dex_batches__current_result = $api->dex_batches__current();

#
# dex_deposits__current test
#
# uncomment below and update the test
#my $dex_deposits__current_result = $api->dex_deposits__current();

#
# dex_get_batches__historical test
#
# uncomment below and update the test
#my $dex_get_batches__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_batches__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_batches__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_batches__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_batches__historical_id = undef; # replace NULL with a proper value
#my $dex_get_batches__historical_result = $api->dex_get_batches__historical(start_block => $dex_get_batches__historical_start_block, end_block => $dex_get_batches__historical_end_block, start_date => $dex_get_batches__historical_start_date, end_date => $dex_get_batches__historical_end_date, id => $dex_get_batches__historical_id);

#
# dex_get_deposits__historical test
#
# uncomment below and update the test
#my $dex_get_deposits__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_id = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_user = undef; # replace NULL with a proper value
#my $dex_get_deposits__historical_result = $api->dex_get_deposits__historical(start_block => $dex_get_deposits__historical_start_block, end_block => $dex_get_deposits__historical_end_block, start_date => $dex_get_deposits__historical_start_date, end_date => $dex_get_deposits__historical_end_date, id => $dex_get_deposits__historical_id, user => $dex_get_deposits__historical_user);

#
# dex_get_orders__historical test
#
# uncomment below and update the test
#my $dex_get_orders__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_id = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_buy_token = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_sell_token = undef; # replace NULL with a proper value
#my $dex_get_orders__historical_result = $api->dex_get_orders__historical(start_block => $dex_get_orders__historical_start_block, end_block => $dex_get_orders__historical_end_block, start_date => $dex_get_orders__historical_start_date, end_date => $dex_get_orders__historical_end_date, id => $dex_get_orders__historical_id, buy_token => $dex_get_orders__historical_buy_token, sell_token => $dex_get_orders__historical_sell_token);

#
# dex_get_prices__historical test
#
# uncomment below and update the test
#my $dex_get_prices__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_prices__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_prices__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_prices__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_prices__historical_id = undef; # replace NULL with a proper value
#my $dex_get_prices__historical_result = $api->dex_get_prices__historical(start_block => $dex_get_prices__historical_start_block, end_block => $dex_get_prices__historical_end_block, start_date => $dex_get_prices__historical_start_date, end_date => $dex_get_prices__historical_end_date, id => $dex_get_prices__historical_id);

#
# dex_get_solutions__historical test
#
# uncomment below and update the test
#my $dex_get_solutions__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_solutions__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_solutions__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_solutions__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_solutions__historical_id = undef; # replace NULL with a proper value
#my $dex_get_solutions__historical_result = $api->dex_get_solutions__historical(start_block => $dex_get_solutions__historical_start_block, end_block => $dex_get_solutions__historical_end_block, start_date => $dex_get_solutions__historical_start_date, end_date => $dex_get_solutions__historical_end_date, id => $dex_get_solutions__historical_id);

#
# dex_get_stats__historical test
#
# uncomment below and update the test
#my $dex_get_stats__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_stats__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_stats__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_stats__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_stats__historical_id = undef; # replace NULL with a proper value
#my $dex_get_stats__historical_result = $api->dex_get_stats__historical(start_block => $dex_get_stats__historical_start_block, end_block => $dex_get_stats__historical_end_block, start_date => $dex_get_stats__historical_start_date, end_date => $dex_get_stats__historical_end_date, id => $dex_get_stats__historical_id);

#
# dex_get_tokens__historical test
#
# uncomment below and update the test
#my $dex_get_tokens__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_id = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_address = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_symbol = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_name = undef; # replace NULL with a proper value
#my $dex_get_tokens__historical_result = $api->dex_get_tokens__historical(start_block => $dex_get_tokens__historical_start_block, end_block => $dex_get_tokens__historical_end_block, start_date => $dex_get_tokens__historical_start_date, end_date => $dex_get_tokens__historical_end_date, id => $dex_get_tokens__historical_id, address => $dex_get_tokens__historical_address, symbol => $dex_get_tokens__historical_symbol, name => $dex_get_tokens__historical_name);

#
# dex_get_trades__historical test
#
# uncomment below and update the test
#my $dex_get_trades__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_id = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_buy_token = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_sell_token = undef; # replace NULL with a proper value
#my $dex_get_trades__historical_result = $api->dex_get_trades__historical(start_block => $dex_get_trades__historical_start_block, end_block => $dex_get_trades__historical_end_block, start_date => $dex_get_trades__historical_start_date, end_date => $dex_get_trades__historical_end_date, id => $dex_get_trades__historical_id, buy_token => $dex_get_trades__historical_buy_token, sell_token => $dex_get_trades__historical_sell_token);

#
# dex_get_users__historical test
#
# uncomment below and update the test
#my $dex_get_users__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_users__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_users__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_users__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_users__historical_id = undef; # replace NULL with a proper value
#my $dex_get_users__historical_result = $api->dex_get_users__historical(start_block => $dex_get_users__historical_start_block, end_block => $dex_get_users__historical_end_block, start_date => $dex_get_users__historical_start_date, end_date => $dex_get_users__historical_end_date, id => $dex_get_users__historical_id);

#
# dex_get_withdraw_requests__historical test
#
# uncomment below and update the test
#my $dex_get_withdraw_requests__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_id = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_user = undef; # replace NULL with a proper value
#my $dex_get_withdraw_requests__historical_result = $api->dex_get_withdraw_requests__historical(start_block => $dex_get_withdraw_requests__historical_start_block, end_block => $dex_get_withdraw_requests__historical_end_block, start_date => $dex_get_withdraw_requests__historical_start_date, end_date => $dex_get_withdraw_requests__historical_end_date, id => $dex_get_withdraw_requests__historical_id, user => $dex_get_withdraw_requests__historical_user);

#
# dex_get_withdraws__historical test
#
# uncomment below and update the test
#my $dex_get_withdraws__historical_start_block = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_end_block = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_start_date = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_end_date = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_id = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_user = undef; # replace NULL with a proper value
#my $dex_get_withdraws__historical_result = $api->dex_get_withdraws__historical(start_block => $dex_get_withdraws__historical_start_block, end_block => $dex_get_withdraws__historical_end_block, start_date => $dex_get_withdraws__historical_start_date, end_date => $dex_get_withdraws__historical_end_date, id => $dex_get_withdraws__historical_id, user => $dex_get_withdraws__historical_user);

#
# dex_orders__current test
#
# uncomment below and update the test
#my $dex_orders__current_result = $api->dex_orders__current();

#
# dex_prices__current test
#
# uncomment below and update the test
#my $dex_prices__current_result = $api->dex_prices__current();

#
# dex_solutions__current test
#
# uncomment below and update the test
#my $dex_solutions__current_result = $api->dex_solutions__current();

#
# dex_stats__current test
#
# uncomment below and update the test
#my $dex_stats__current_result = $api->dex_stats__current();

#
# dex_tokens__current test
#
# uncomment below and update the test
#my $dex_tokens__current_result = $api->dex_tokens__current();

#
# dex_trades__current test
#
# uncomment below and update the test
#my $dex_trades__current_result = $api->dex_trades__current();

#
# dex_users__current test
#
# uncomment below and update the test
#my $dex_users__current_result = $api->dex_users__current();

#
# dex_withdraw_requests__current test
#
# uncomment below and update the test
#my $dex_withdraw_requests__current_result = $api->dex_withdraw_requests__current();

#
# dex_withdraws__current test
#
# uncomment below and update the test
#my $dex_withdraws__current_result = $api->dex_withdraws__current();

