import abc
import urllib.request
import urllib.parse
import gzip
import json

PRODUCTION_URL = 'https://rest.coinapi.io/'
MOCK_URL = 'https://rest-test.coinapi.io/'
VERSION = 'v1'

class AbstractRequest(abc.ABC):
    @abc.abstractmethod
    def endpoint(self):
        pass

class HTTPClient:
    def __init__(self, endpoint, headers = dict(), params = dict()):
        self.url = 'https://rest.coinapi.io/v1%s' % endpoint
        self.params = params
        self.headers = headers

    def perform(self):
        resource = self.url

        if self.params:
            query_string = urllib.parse.urlencode(self.params)
            resource = '%s?%s' % (self.url, query_string)

        request = urllib.request.Request(resource, headers=self.headers)
        handler = urllib.request.urlopen(request)
        raw_response = handler.read()

        if 'Accept-Encoding' in self.headers:
            if self.headers['Accept-Encoding'] == 'deflat, gzip':
                raw_response = gzip.decompress(raw_response)

        encoding = handler.info().get_content_charset('utf-8')
        response = json.loads(raw_response.decode(encoding))
        return response


class AbstractRequestWithQueryString(AbstractRequest):
    def __with_parameter(self, param, value):
        old = self.query_paramteres
        new = {param: value}
        return {**old, **new}

class MetadataListExchangesRequest(AbstractRequest):
    def endpoint(self):
        return '/exchanges'

class MetadataListAssetsRequest(AbstractRequest):
    def endpoint(self):
        return '/assets'

class MetadataListSymbolsRequest(AbstractRequest):
    def endpoint(self):
        return '/symbols'

class ExchangeRatesGetSpecificRateRequest(AbstractRequestWithQueryString):
    def __init__(self,
                 asset_id_base,
                 asset_id_quote,
                 query_parameters = dict()):
        self.asset_id_base = asset_id_base
        self.asset_id_quote = asset_id_quote
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/exchangerate/%s/%s' % (
            self.asset_id_base,
            self.asset_id_quote)

    def time(self, date):
        params = self.__with_paramter('time', date)
        return ExchangeRatesGetSpecificRateRequest(self.asset_id_base,
                                                   self.asset_id_quote,
                                                   params)
    at = time

class ExchangeRatesGetAllCurrentRates(AbstractRequest):
    def __init__(self, asset_id_base):
        self.asset_id_base = asset_id_base

    def endpoint(self):
        return '/exchangerate/%s' % self.asset_id_base

class OHLCVListAllPeriodsRequest(AbstractRequest):
    def endpoint(self):
        return '/ohlcv/periods'

class OHLCVLatestDataRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/ohlcv/%s/latest' % self.symbol_id

    def period(self, period_id):
        params = self.__with_parameter('period_id', period_id)
        return OHLCVLatestDataRequest(self.symbol_id, params)

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return OHLCVLatestDataRequest(self.symbol_id, params)

    only = limit

class OHLCVHistoricalDataRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/ohlcv/%s/history' % self.symbol_id

    def period(self, period_id):
        params = self.__with_parameter('period_id', period_id)
        return OHLCVHistoricalDataRequest(symbol_id, params)

    def time_start(self, date):
        params = self.__with_parameter('time_start', date)
        return OHLCVHistoricalDataRequest(self.symbol_id, params)

    since = time_start

    def time_end(self, date):
        params = self.__with_parameter('time_end', date)
        return OHLCVHistoricalDataRequest(self.symbol_id, params)

    until = time_end

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return OHLCVHistoricalDataRequest(self.symbol_id, params)

    only = limit

class TradesLatestDataAllRequest(AbstractRequestWithQueryString):
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/latest'

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return OHLCVHistoricalDataRequest(self.symbol_id, params)

    only = limit

class TradesLatestDataSymbolRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/%s/latest' % self.symbol_id

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return TradesLatestDataSymbolRequest(self.symbol_id, params)

    only = limit

class TradesHistoricalDataRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/trades/%s/history' % self.symbol_id

    def time_start(self, date):
        params = self.__with_parameter('time_start', date)
        return TradesHistoricalDataRequest(self.symbol_id, params)
    since = time_start

    def time_end(self, date):
        params = self.__with_parameter('time_end', date)
        return TradesHistoricalDataRequest(self.symbol_id, params)
    until = time_end

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return TradesHistoricalDataRequest(self.symbol_id, params)

    only = limit

class QuotesCurrentDataAllRequest(AbstractRequest):
    def endpoint(self):
        return '/quotes/current'

class QuotesCurrentDataSymbolRequest(AbstractRequest):
    def __init__(self, symbol_id):
        self.symbol_id = symbol_id

    def endpoint(self):
        return '/quotes/%s/current' % self.symbol_id

class QuotesLatestDataAllRequest(AbstractRequestWithQueryString):
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/latest'

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return QuotesLatestDataAllRequest(params)

    only = limit

class QuotesLatestDataSymbolRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/%s/latest' % self.symbol_id

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return QuotesLatestDataSymbolRequest(self.symbol_id, params)
    only = limit

class QuotesHistoricalData(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/quotes/%s/history' % self.symbol_id

    def time_start(self, date):
        params = self.__with_parameter('time_start', date)
        return QuotesHistoricalData(self.symbol_id, params)

    since = time_start

    def time_end(self, date):
        params = self.__with_parameter('time_end', date)
        return QuotesHistoricalData(self.symbol_id, params)

    until = time_end

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return QuotesHistoricalData(self.symbol_id, params)

    only = limit

class OrderbooksCurrentDataAllRequest(AbstractRequest):
    def endpoint(self):
        return '/orderbooks/current'

class OrderbooksCurrentDataSymbolRequest(AbstractRequest):
    def __init__(self, symbol_id):
        self.symbol_id = symbol_id

    def endpoint(self):
        return '/orderbooks/%s/current' % self.symbol_id

class OrderbooksLatestDataRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/orderbooks/%s/latest' % self.symbol_id

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return OrderbooksLatestDataRequest(self.symbol_id, params)

class OrderbooksHistoricalDataRequest(AbstractRequestWithQueryString):
    def __init__(self, symbol_id, query_parameters = dict()):
        self.symbol_id = symbol_id
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/orderbooks/%s/history' % self.symbol_id

    def time_start(self, date):
        params = self.__with_parameter('time_start', date)
        return OrderbooksHistoricalDataRequest(self.symbol_id, params)
    since = time_start

    def time_end(self, date):
        params = self.__with_parameter('time_end', date)
        return OrderbooksHistoricalDataRequest(self.symbol_id, params)
    until = time_end

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return OrderbooksHistoricalDataRequest(self.symbol_id, params)

    only = limit

class TwitterLatestDataRequest(AbstractRequestWithQueryString):
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/twitter/latest'

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return TwitterLatestDataRequest(params)

    only = limit

class TwitterHistoricalDataRequest(AbstractRequestWithQueryString):
    def __init__(self, query_parameters = dict()):
        self.query_parameters = query_parameters

    def endpoint(self):
        return '/twitter/history'

    def time_start(self, date):
        params = self.__with_parameter('time_start', date)
        return TwitterHistoricalDataRequest(params)

    since = time_start

    def time_end(self, date):
        params = self.__with_parameter('time_end', date)
        return TwitterHistoricalDataRequest(params)

    until = time_end

    def limit(self, lim):
        params = self.__with_parameter('limit', lim)
        return TwitterHistoricalDataRequest(params)

    only = limit

class CoinAPIv1:
    DEFAULT_HEADERS = {
        'Accept': 'application/json',
        'Accept-Encoding': 'deflat, gzip'
    }
    def __init__(self, api_key, headers = dict(), client_class=HTTPClient):
        self.api_key = api_key
        self.headers = {**self.DEFAULT_HEADERS, **headers}
        self.client_class = client_class

    def with_header(self, header, value):
        old_headers = self.headers
        new_header = {header: value}
        return CoinAPIv1(api_key, {**old_headers, **new_header})

    def with_headers(self, additional_headers):
        old_headers = self.headers
        return CoinAPIv1(api_key, {**old_headers, **additional_headers})

    def metadata_list_exchanges(self, request_block = lambda x: x):
        request = request_block(MetadataListExchangesRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def metadata_list_assets(self, request_block = lambda x: x):
        request = request_block(MetadataListAssetsRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def metadata_list_symbols(self, request_block = lambda x: x):
        request = request_block(MetadataListSymbolsRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def exchange_rates_get_specific_rate(self,
                                         asset_id_base,
                                         asset_id_quote,
                                         query_parameters = dict(),
                                         request_block = lambda x: x):
        request = request_block(
            ExchangeRatesGetSpecificRateRequest(asset_id_base,
                                                asset_id_quote,
                                                query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def exchange_rates_get_all_current_rates(self,
                                             asset_id_base,
                                             request_block = lambda x: x):
        request = request_block(
            ExchangeRatesGetAllCurrentRates(asset_id_base))
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def ohlcv_list_all_periods(self, request_block = lambda x: x):
        request = request_block(OHLCVListAllPeriodsRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def ohlcv_latest_data(self,
                          symbol_id,
                          query_parameters = dict(),
                          request_block = lambda x: x):
        request = request_block(
            OHLCVLatestDataRequest(symbol_id,
                                   query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def ohlcv_historical_data(self,
                              symbol_id,
                              query_parameters,
                              request_block = lambda x: x):
        request = request_block(
            OHLCVHistoricalDataRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_latest_data_all(self,
                               query_parameters = dict(),
                               request_block = lambda x: x):
        request = request_block(TradesLatestDataAllRequest(query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_latest_data_symbol(self,
                                  symbol_id,
                                  query_parameters = dict(),
                                  request_block = lambda x: x):
        request = request_block(
            TradesLatestDataSymbolRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def trades_historical_data(self,
                               symbol_id,
                               query_parameters = dict(),
                               request_block = lambda x: x):
        request = request_block(
            TradesHistoricalDataRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_current_data_all(self, request_block = lambda x: x):
        request = request_block(QuotesCurrentDataAllRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def quotes_current_data_symbol(self,
                                   symbol_id,
                                   request_block = lambda x: x):
        request = request_block(QuotesCurrentDataSymbolRequest(symbol_id))
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def quotes_latest_data_all(self,
                               query_parameters = dict(),
                               request_block = lambda x: x):
        request = request_block(
            QuotesLatestDataAllRequest(query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_latest_data_symbol(self,
                                  symbol_id,
                                  query_parameters = dict(),
                                  request_block = lambda x: x):
        request = request_block(
            QuotesLatestDataSymbolRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def quotes_historical_data(self,
                               symbol_id,
                               query_parameters = dict(),
                               request_block = lambda x: x):
        request = request_block(
            QuotesHistoricalData(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def orderbooks_current_data_all(self, request_block = lambda x: x):
        request = request_block(
            OrderbooksCurrentDataAllRequest())
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def orderbooks_current_data_symbol(self,
                                       symbol_id,
                                       request_block = lambda x: x):
        request = request_block(
            OrderbooksCurrentDataSymbolRequest(symbol_id))
        client = self.client_class(request.endpoint(), self.headers)
        return client.perform()

    def orderbooks_latest_data(self,
                               symbol_id,
                               query_parameters = dict(),
                               request_block = lambda x: x):
        request = request_block(
            OrderbooksLatestDataRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def orderbooks_historical_data(self,
                                   symbol_id,
                                   query_parameters = dict(),
                                   request_block = lambda x: x):
        request = request_block(
            OrderbooksHistoricalDataRequest(symbol_id, query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def twitter_latest_data(self,
                            query_parameters = dict(),
                            request_block = lambda x: x):
        request = request_block(
            TwitterLatestDataRequest(query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()

    def twitter_historical_data(self,
                                query_parameters = dict(),
                                request_block = lambda x: x):
        request = request_block(
            TwitterHistoricalDataRequest(query_parameters))
        client = self.client_class(request.endpoint(),
                                   self.headers,
                                   request.query_parameters)
        return client.perform()
