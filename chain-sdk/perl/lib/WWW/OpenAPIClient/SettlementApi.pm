=begin comment

OnChain API

 This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::SettlementApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# chains_chain_id_dapps_cow_settlement_historical_get
#
# 
#
# @param string $chain_id  (required)
# @param int $start_block  (optional)
# @param int $end_block  (optional)
# @param DATE_TIME $start_date  (optional)
# @param DATE_TIME $end_date  (optional)
{
    my $params = {
    'chain_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'start_block' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'end_block' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'start_date' => {
        data_type => 'DATE_TIME',
        description => '',
        required => '0',
    },
    'end_date' => {
        data_type => 'DATE_TIME',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'chains_chain_id_dapps_cow_settlement_historical_get' } = {
        summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub chains_chain_id_dapps_cow_settlement_historical_get {
    my ($self, %args) = @_;

    # verify the required parameter 'chain_id' is set
    unless (exists $args{'chain_id'}) {
      croak("Missing the required parameter 'chain_id' when calling chains_chain_id_dapps_cow_settlement_historical_get");
    }

    # parse inputs
    my $_resource_path = '/chains/{chain_id}/dapps/cow/settlement/historical';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'start_block'}) {
        $query_params->{'startBlock'} = $self->{api_client}->to_query_value($args{'start_block'});
    }

    # query params
    if ( exists $args{'end_block'}) {
        $query_params->{'endBlock'} = $self->{api_client}->to_query_value($args{'end_block'});
    }

    # query params
    if ( exists $args{'start_date'}) {
        $query_params->{'startDate'} = $self->{api_client}->to_query_value($args{'start_date'});
    }

    # query params
    if ( exists $args{'end_date'}) {
        $query_params->{'endDate'} = $self->{api_client}->to_query_value($args{'end_date'});
    }

    # path params
    if ( exists $args{'chain_id'}) {
        my $_base_variable = "{" . "chain_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'chain_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
