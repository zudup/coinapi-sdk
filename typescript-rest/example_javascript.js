// this is to support both browser and node
let COIN_API_SDK = typeof window !== 'undefined' ? window.COIN_API_SDK : require("./coinapi_v1")["default"]

var sdk = new COIN_API_SDK("YOUR_API_KEY_HERE")

async function run() {
  var t = new Date(Date.parse("2016-11-01T22:08:41+00:00"))

  sdk.metadata_list_exchanges().then(function (exchanges) {
    console.log('exchanges:')
    console.log('number: ', exchanges.length)
    console.log('first item: ', exchanges[0])

  });
  sdk.metadata_list_assets().then(function (Metadata_list_assets) {
    console.log('Metadata_list_assets:')
    console.log('number: ', Metadata_list_assets.length)
    console.log('first item: ', Metadata_list_assets[0])

  });
  sdk.metadata_list_symbols().then(function (Metadata_list_symbols) {
    console.log('Metadata_list_symbols:')
    console.log('number: ', Metadata_list_symbols.length)
    console.log('first item: ', Metadata_list_symbols[0])

  });
  sdk.exchange_rates_get_specific_rate("BTC", "USD", t).then(function (Exchange_rates_get_specific_rate) {
    console.log('Exchange_rates_get_specific_rate:')
    console.log('number: ', Exchange_rates_get_specific_rate.length)
    console.log('first item: ', Exchange_rates_get_specific_rate[0])

  });
  sdk.exchange_rates_get_all_current_rates("BTC").then(function (Exchange_rates_get_all_current_rates) {
    console.log('Exchange_rates_get_all_current_rates:')
    console.log('first item: ', Exchange_rates_get_all_current_rates[0])

  });
  sdk.ohlcv_list_all_periods().then(function (Ohlcv_list_all_periods) {
    console.log('Ohlcv_list_all_periods:')
    console.log('number: ', Ohlcv_list_all_periods.length)
    console.log('first item: ', Ohlcv_list_all_periods[0])

  });
  sdk.ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN", 5).then(function (Ohlcv_latest_data) {
    console.log('Ohlcv_latest_data:')
    console.log('number: ', Ohlcv_latest_data.length)
    console.log('first item: ', Ohlcv_latest_data[0])

  });
  sdk.ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t, new Date(), 5).then(function (Ohlcv_historic_data) {
    console.log('Ohlcv_historic_data:')
    console.log('number: ', Ohlcv_historic_data.length)
    console.log('first item: ', Ohlcv_historic_data[0])

  });
  sdk.trades_latest_data_all(5).then(function (Trades_latest_data_all) {
    console.log('Trades_latest_data_all:')
    console.log('number: ', Trades_latest_data_all.length)
    console.log('first item: ', Trades_latest_data_all[0])

  });
  sdk.trades_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5).then(function (Trades_latest_data_symbol) {
    console.log('Trades_latest_data_symbol:')
    console.log('number: ', Trades_latest_data_symbol.length)
    console.log('first item: ', Trades_latest_data_symbol[0])

  });
  sdk.trades_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5).then(function (Trades_historical_data) {
    console.log('Trades_historical_data:')
    console.log('number: ', Trades_historical_data.length)
    console.log('first item: ', Trades_historical_data[0])

  });
  sdk.quotes_current_data_all().then(function (Quotes_current_data_all) {
    console.log('Quotes_current_data_all:')
    console.log('number: ', Quotes_current_data_all.length)
    console.log('first item: ', Quotes_current_data_all[0])

  });
  sdk.quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD").then(function (Quotes_current_data_symbol) {
    console.log('Quotes_current_data_symbol:')
    console.log('first item: ', Quotes_current_data_symbol[0])

  });
  sdk.quotes_latest_data_all(5).then(function (Quotes_latest_data_all) {
    console.log('Quotes_latest_data_all:')
    console.log('number: ', Quotes_latest_data_all.length)
    console.log('first item: ', Quotes_latest_data_all[0])

  });
  sdk.quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5).then(function (Quotes_latest_data_symbol) {
    console.log('Quotes_latest_data_symbol:')
    console.log('number: ', Quotes_latest_data_symbol.length)
    console.log('first item: ', Quotes_latest_data_symbol[0])

  });
  sdk.quotes_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5).then(function (Quotes_historical_data) {
    console.log('Quotes_historical_data:')
    console.log('number: ', Quotes_historical_data.length)
    console.log('first item: ', Quotes_historical_data[0])

  });
  sdk.orderbooks_current_data_all().then(function (Orderbooks_current_data_all) {
    console.log('Orderbooks_current_data_all:')
    console.log('number: ', Orderbooks_current_data_all.length)
    console.log('first item: ', Orderbooks_current_data_all[0])

  });
  sdk.orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD").then(function (Orderbooks_current_data_symbol) {
    console.log('Orderbooks_current_data_symbol:')
    console.log('first item: ', Orderbooks_current_data_symbol[0])

  });
  sdk.orderbooks_latest_data("BITSTAMP_SPOT_BTC_USD", 5).then(function (Orderbooks_latest_data) {
    console.log('Orderbooks_latest_data:')
    console.log('number: ', Orderbooks_latest_data.length)
    console.log('first item: ', Orderbooks_latest_data[0])

  });
  sdk.orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD", t, new Date(), 5).then(function (Orderbooks_historical_data) {
    console.log('Orderbooks_historical_data:')
    console.log('number: ', Orderbooks_historical_data.length)
    console.log('first item: ', Orderbooks_historical_data[0])

  });
  sdk.twitter_latest_data(5).then(function (Twitter_latest_data) {
    console.log('Twitter_latest_data:')
    console.log('number: ', Twitter_latest_data.length)
    console.log('first item: ', Twitter_latest_data[0])

  });
  sdk.twitter_historical_data(t, new Date(), 5).then(function (Twitter_historical_data) {
    console.log('Twitter_historical_data:')
    console.log('number: ', Twitter_historical_data.length)
    console.log('first item: ', Twitter_historical_data[0])
  })
}

run();