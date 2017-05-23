import urllib.request
import urllib.parse
import datetime
import functools
import json
import re
import gzip

class Options(dict):
    def __init__(self, **kwargs):
        for k,v in kwargs.items():
            if v == None:
                continue
            self[k] = v

    def ensure(self, *required):
        for required_option in required:
            if required_option not in self:
                raise RequiredOptionMissing
        return self

    def validate(self, validations):
        for k,v in validations.items():
            if k in self:
                try:
                    checks = v(self[k])
                except TypeError as err:
                    raise WrongOptionValue
                except Exception as err:
                    raise WrongOptionValue
        return self

class RequiredOptionMissing(Exception):
    pass
class WrongOptionValue(Exception):
    pass
class Transformations:
    def date_to_iso8601(date_object):
        return date_object.isoformat()
class Validations:
    def is_date_object(x):
        if not (isinstance(x, datetime.datetime) or isinstance(x, datetime.date)):
            raise TypeError(str(x) + ' is not a date or datetime object')
    def is_integer(x):
        if not (isinstance(x, int) or re.match("^[0-9]+$", x)):
            raise TypeError(str(x) + ' is not an integer')

class CoinAPIv1:
    """CoinAPI Python SDK

    This class wraps all the methods available under
    https://docs.coinapi.io/#rest-api.

    Note:
    Chainable methods are cleared after making a request

    Attributes:
    api_key (str): API Key used for authentication
    base_url (str): base URL for requests
    __auth_method (int): authentication method used (header|query)
    __enchanced_objects (bool): whether to use enchanced objects
    __pre_request ([function]): list of functions to apply before a request
    __post_request ([funciton]): list of functions to apply after a request
    __headers (dict): headers and values passed to the request
    __request_hook (function): function to do further processing to request
    """
    AUTHORIZATION_HEADER = 'X-CoinAPI-Key'
    QUERY_STRING = 'apikey'
    USE_HEADER = 1
    USE_QUERY_STRING = 2
    MOCK_BASE_URL = 'https://rest-test.coinapi.io/v1/'
    PRODUCTION_BASE_URL = 'https://rest.coinapi.io/v1/'



    def __init__(self, api_key):
        """Constructs a new CoinAPIv1 object

        Sane default values are chosen, if the need to change any
        arises, they may be changed via the fluent api.

        Args:
        api_key (str): key to use for authentication
        """
        self.api_key = api_key
        self.__base_url = self.PRODUCTION_BASE_URL
        self.__auth_method = self.USE_HEADER
        self.__enchanced_objects = True
        self.__pre_request = []
        self.__post_request = []
        self.__headers = {
            'Accept': 'application/json',
            'Accept-Encoding': 'deflat, gzip'
        }
        self.__request_hook = lambda x, s: x
        self.__response_hook = lambda x, s: x

    def with_authentication_header(self):
        """Use header for authentication (chainable)"""
        return self.__with_auth_method(self.USE_HEADER)

    def with_headers(self, headers):
        """Add additional headers (chainable)

        Args:
        headers (dict): headers to add
        """
        old_headers = self.__headers
        self.__request_change('__headers', old_headers, headers)
        return self

    def with_authentication_query_string(self):
        """Use query string for authentication (chainable)"""
        return self.__with_auth_method(self.USE_QUERY_STRING)

    def with_mock_server(self):
        """Use test server (chainable)"""
        return self.with_base_url(self.MOCK_BASE_URL)

    def with_production(self):
        """Use production server (chainable)"""
        return self.with_base_url(self.PRODUCTION_BASE_URL)

    def with_base_url(self, url):
        """Use a different base URL (chainable)"""
        old_base_url = self.__base_url
        self.__request_change('__base_url', old_base_url, url)
        return self

    def with_pre_hook(self, hook):
        """Add a pre-request hook (chainable)

        Both pre and post-request hooks are given three arguments, namely
        the URL, any options (for query strings) and self

        Note:
        This method may be called several times
        """
        self.__pre_request.append(hook)
        return self

    def with_request_hook(self, hook):
        """Add a function that performs an operation on the request object"""
        self.__request_hook = hook
        return self

    def with_response_hook(self, hook):
        """Add a function that performs an operation on the response (json)"""
        self.__response_hook = hook
        return self

    def with_post_hook(self, hook):
        """Add a post-request hook (chainable)"""
        self.__post_request.append(hook)
        return self

    def with_enchanced_objects(self):
        """Use enchanced objects"""
        old_enchanced = self.enchanced_objects
        self.__request_change('__enchanced_objects', old_enchanced, True)
        return self

    def __with_auth_method(self, method):
        old_method = self.__auth_method
        self.__request_change('__auth_method', old_method, method)
        return self

    def __join_urls(self, base, *urls):
        return functools.reduce(urllib.parse.urljoin, urls, base)

    def __endpoint_path(self, path):
        return self.__join_urls(self.__base_url, *path)

    def __change_attr(self, attr, value):
        def inner_change_attr(u, o, s):
            setattr(self, attr, value)
        return inner_change_attr

    def __request_change(self, attr, old_value, value):
        self.__pre_request.append(self.__change_attr(attr, value))
        self.__post_request.append(self.__change_attr(attr, old_value))

    def __request(self, url_without_query_string, options = dict()):
        response = None

        for f in self.__pre_request:
            f(url, options, self)

        self.__pre_request = []

        if self.__auth_method == self.USE_QUERY_STRING:
            options['apikey'] = self.api_key

        query_string = urllib.parse.urlencode(options)
        url = url_without_query_string + ("?%s" % query_string)

        headers = self.__headers
        if (self.__auth_method == self.USE_HEADER):
            headers[self.AUTHORIZATION_HEADER] = self.api_key

        try:
            request_tmp = urllib.request.Request(url, headers=headers)
            request = self.__request_hook(request_tmp, self)
            raw_request = urllib.request.urlopen(request)
            raw_response = gzip.decompress(raw_request.read())
            encoding = raw_request.info() \
                                  .get_content_charset('utf-8')
            response_tmp = json.loads(raw_response.decode(encoding))
            response = self.__response_hook(response_tmp, self)
            return response
        except Exception as err:
            raise err
        finally:
            for f in self.__post_request:
                f(url, options, self)

            self.__post_request = []

        return response

    # ENDPOINTS

    ## METADATA
    def metadata_list_exchanges(self):
        """Get a detailed list of exchanges provided by the system.

        HTTP Request:
        GET /v1/exchanges

        Detailed info:
        https://docs.coinapi.io/#list-all-exchanges
        """
        endpoint = ['exchanges']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def metadata_list_assets(self):
        """Get detailed list of assets.

        HTTP Request:
        GET /v1/assets

        Detailed info:
        https://docs.coinapi.io/#list-all-assets
        """
        endpoint = ['assets']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def metadata_list_symbols(self):
        """Get detailed list of all symbols.

        HTTP Request:
        GET /v1/symbols

        Detailed info:
        https://docs.coinapi.io/#list-all-symbols
        """
        endpoint = ['symbols']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## EXCHANGE RATES
    def exchange_rates_get_specific_rate(self,
                                         asset_id_base,
                                         asset_id_quote,
                                         time = None):
        """Get exchange rate between pair of requested assets at specific or
        current time.

        HTTP Request:
        GET /v1/exchangerate/{asset_id_base}/{asset_id_quote}?time={time}

        Options:
        time (date|datetime, optional)

        Detailed info:
        https://docs.coinapi.io/#get-specific-rate
        """
        endpoint = ['exchangerate/', asset_id_base + '/', asset_id_quote]
        transformations = {
            'time': Transformations.date_to_iso8601
        }
        validations = {
            'time': Validations.is_date_object
        }
        options = Options(time = time)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def exchange_rates_get_all_current_rates(self, asset_id_base):
        """Get the current exchange rate between requested asset and all other
        assets.

        HTTP Request:
        GET /v1/exchangerate/{asset_id_base}

        Detailed info:
        https://docs.coinapi.io/#get-all-current-rates
        """
        endpoint = ['exchangerate/', asset_id_base]
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## OHLCV

    def ohlcv_list_all_periods(self):
        """Get full list of supported time periods available for requesting
        OHLCV timeseries data.

        HTTP Request:
        GET /v1/ohlcv/periods

        Detailed info:
        https://docs.coinapi.io/#current-data
        """
        endpoint = ['ohlcv/', 'periods']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def ohlcv_latest_data(self,
                          symbol_id,
                          period_id,
                          limit=None):
        """Get OHLCV latest timeseries data for requested symbol and period,
        returned in time descending order.

        HTTP Request:
        GET /v1/ohlcv/{symbol_id}/latest?period_id={period_id}&limit={limit}

        Options:
        period_id (required)
        limit (int, optional, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data
        """
        endpoint = ['ohlcv/', symbol_id + '/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }

        options = Options(limit = limit, period_id=period_id) \
                        .ensure('period_id') \
                        .validate(validations)

        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def ohlcv_historical_data(self,
                              symbol_id,
                              period_id,
                              time_start,
                              time_end=None,
                              limit=None):
        """Get OHLCV timeseries data for requested symbol and period, returned
        in time ascending order.

        HTTP Request:
        GET /v1/ohlcv/{symbol_id}/history?period_id={period_id}&time_start=
        {time_start}&time_end={time_end}&limit={limit}

        Options:
        period_id (required)
        time_start (date|datetime, required)
        time_end (date|datetime, optional)
        limit (int, optional, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#historical-data
        """
        endpoint = ['ohlcv/', symbol_id + '/', 'history']
        transformations = {
            'time_start': Transformations.date_to_iso8601,
            'time_end': Transformations.date_to_iso8601
        }
        validations = {
            'time_start': Validations.is_date_object,
            'time_end': Validations.is_date_object,
            'limit': Validations.is_integer
        }
        options = Options(period_id = period_id,
                          time_start = time_start,
                          time_end = time_end,
                          limit = limit) \
                          .ensure('period_id',
                                  'time_start') \
                          .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## TRADES
    def trades_latest_data_all(self,
                                limit=None):
        """Get latest trades from all symbols up to 1 minute ago or get
        latest trades from a specific symbol without time limitation. Latest
        data is always returned in time descending order.

        HTTP Request:
        GET /v1/trades/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data25
        """
        endpoint = ['trades/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def trades_latest_data_symbol(self,
                                   symbol_id,
                                   limit=None):
        """HTTP Request: GET /v1/trades/{symbol_id}/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data25
        """
        endpoint = ['trades/', symbol_id + '/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def trades_historical_data(self,
                               symbol_id,
                               time_start,
                               time_end=None,
                               limit=None):
        """Get history transactions from specific symbol, returned in time
        ascending order.

        HTTP Request:
        GET /v1/trades/{symbol_id}/history?time_start={time_start}&time_end=
        {time_end}&limit={limit}

        Options:
        time_start (date|datetime, required)
        time_end (date|datetime, optional)
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#historical-data26
        """
        endpoint = ['trades/', symbol_id + '/', 'history']
        transformations = {
            'time_start': Transformations.date_to_iso8601,
            'time_end': Transformations.date_to_iso8601
        }
        validations = {
            'time_start': Validations.is_date_object,
            'time_end': Validations.is_date_object,
            'limit': Validations.is_integer
        }
        options = Options(time_start = time_start,
                          time_end = time_end,
                          limit = limit) \
                        .ensure('time_start') \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## Quotes
    def quotes_current_data_all(self):
        """Get current quotes for all symbols or for a specific symbol.

        HTTP Request:
        GET /v1/quotes/current

        Detailed info:
        https://docs.coinapi.io/#historical-data26
        """
        endpoint = ['quotes/', 'current']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def quotes_current_data_symbol(self, symbol_id):
        """HTTP Request: GET /v1/quotes/{symbol_id}/current

        Detailed info:
        https://docs.coinapi.io/#historical-data26"""
        endpoint = ['quotes/', symbol_id + '/', 'current']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def quotes_latest_data_all(self, limit=None):
        """Get latest quote updates up to 1 minute ago or get updates for a
        specific symbol without time limit. Latest data is always returned in
        time descending order.

        HTTP Request:
        GET /v1/quotes/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data29
        """
        endpoint = ['quotes/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def quotes_latest_data_symbol(self, symbol_id, limit=None):
        """HTTP Request: GET /v1/quotes/{symbol_id}/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data29
        """
        endpoint = ['quotes/', symbol_id + '/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def quotes_historical_data(self,
                               symbol_id,
                               time_start,
                               time_end=None,
                               limit=None):
        """Get historical quote updates within requested time range, returned in
        time ascending order.

        HTTP Request:
        GET /v1/quotes/{symbol_id}/history?time_start={time_start}&time_end=
        {time_end}&limit={limit}

        Options:
        time_start (date|datetime, required)
        time_end (date|datetime, optional)
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#historical-data30
        """
        endpoint = ['quotes/', symbol_id + '/', 'history']
        transformations = {
            'time_start': Transformations.date_to_iso8601,
            'time_end': Transformations.date_to_iso8601
        }
        validations = {
            'time_start': Validations.is_date_object,
            'time_end': Validations.is_date_object,
            'limit': Validations.is_integer
        }
        options = Options(time_start = time_start,
                          time_end = time_end,
                          limit = limit) \
                        .ensure('time_start') \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## ORDERBOOKS
    def orderbooks_current_data_all(self):
        """Get current orderbook snapshot for all or a specific symbol.

        HTTP Request:
        GET /v1/orderbooks/current

        Detailed info:
        https://docs.coinapi.io/#current-data33
        """
        endpoint = ['orderbooks/', 'current']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def orderbooks_current_data_symbol(self,
                                       symbol_id):
        """HTTP Request: GET /v1/orderbooks/{symbol_id}/current

        Detailed info:
        https://docs.coinapi.io/#current-data33
        """
        endpoint = ['orderbooks/', symbol_id + '/', 'current']
        options = dict()
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def orderbooks_latest_data(self,
                               symbol_id,
                               limit=None):
        """Get latest orderbook snapshots for a specific symbol, returned in
        time descending order.

        HTTP Request:
        GET /v1/orderbooks/{symbol_id}/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data34
        """
        endpoint = ['orderbooks/', symbol_id + '/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def orderbooks_historical_data(self,
                                   symbol_id,
                                   time_start,
                                   time_end=None,
                                   limit=None):
        """Get historical orderbook snapshots for a specific symbol within time
        range, returned in time ascending order.

        HTTP Request:
        GET /v1/orderbooks/{symbol_id}/history?time_start={time_start}&time_end=
        {time_end}&limit={limit}

        Options:
        time_start (date|datetime, required)
        time_end (date|datetime, optional)
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#historical-data35
        """
        endpoint = ['orderbooks/', symbol_id + '/', 'history']
        transformations = {
            'time_start': Transformations.date_to_iso8601,
            'time_end': Transformations.date_to_iso8601
        }
        validations = {
            'time_start': Validations.is_date_object,
            'time_end': Validations.is_date_object,
            'limit': Validations.is_integer
        }
        options = Options(time_start = time_start,
                          time_end = time_end,
                          limit = limit) \
                        .ensure('time_start') \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    ## TWITTER
    def twitter_latest_data(self,
                            limit=None):
        """Get latest tweets related to cryptocurrency markets, returned in time
        descending order.

        HTTP Request:
        GET /v1/twitter/latest?limit={limit}

        Options:
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#latest-data37
        """
        endpoint = ['twitter/', 'latest']
        validations = {
            'limit': Validations.is_integer
        }
        options = Options(limit = limit) \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)

    def twitter_historical_data(self,
                                time_start,
                                time_end=None,
                                limit=None):
        """Get historical tweets related to cryptocurrency markets, returned in
        time ascending order.

        HTTP Request:
        GET /v1/twitter/history?time_start={time_start}&time_end={time_end}&
        limit={limit}

        Options:
        time_start (date|datetime, required)
        time_end (date|datetime, optional)
        limit (int, defaults to 100)

        Detailed info:
        https://docs.coinapi.io/#historical-data38
        """
        endpoint = ['twitter/', 'history']
        transformations = {
            'time_start': Transformations.date_to_iso8601,
            'time_end': Transformations.date_to_iso8601
        }
        validations = {
            'time_start': Validations.is_date_object,
            'time_end': Validations.is_date_object,
            'limit': Validations.is_integer
        }
        options = Options(time_start = time_start,
                          time_end = time_end,
                          limit = limit) \
                        .ensure('time_start') \
                        .validate(validations)
        url = self.__endpoint_path(endpoint)
        return self.__request(url, options)
