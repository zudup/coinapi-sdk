import SDK from "./coinapi_v1"

// this is to support both browser and node
let COIN_API_SDK = typeof window !== 'undefined' ? (window as any).COIN_API_SDK : SDK

let sdk = new COIN_API_SDK("YOUR_API_KEY_HERE") as SDK

async function run(){
  let t = new Date(Date.parse("2016-11-01T22:08:41+00:00"))

  let exchanges = await sdk.metadata_list_exchanges()
  console.log('exchanges:')
  console.log('number: ', exchanges.length)
  console.log('first item: ', exchanges[0])

  let Metadata_list_assets = await sdk.metadata_list_assets()
  console.log('Metadata_list_assets:')
  console.log('number: ', Metadata_list_assets.length)
  console.log('first item: ', Metadata_list_assets[0])

  let Metadata_list_symbols = await sdk.metadata_list_symbols()
  console.log('Metadata_list_symbols:')
  console.log('number: ', Metadata_list_symbols.length)
  console.log('first item: ', Metadata_list_symbols[0])

  let Exchange_rates_get_specific_rate = await sdk.exchange_rates_get_specific_rate("BTC", "USD", t)
  console.log('Exchange_rates_get_specific_rate:')
  console.log('number: ', Exchange_rates_get_specific_rate.length)
  console.log('first item: ', Exchange_rates_get_specific_rate[0])

  let Exchange_rates_get_all_current_rates = await sdk.exchange_rates_get_all_current_rates("BTC")
  console.log('Exchange_rates_get_all_current_rates:')
  console.log('first item: ', Exchange_rates_get_all_current_rates[0])

  let Ohlcv_list_all_periods = await sdk.ohlcv_list_all_periods()
  console.log('Ohlcv_list_all_periods:')
  console.log('number: ', Ohlcv_list_all_periods.length)
  console.log('first item: ', Ohlcv_list_all_periods[0])

  let Ohlcv_latest_data = await sdk.ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN", 5)
  console.log('Ohlcv_latest_data:')
  console.log('number: ', Ohlcv_latest_data.length)
  console.log('first item: ', Ohlcv_latest_data[0])

  let Ohlcv_historic_data = await sdk.ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t, new Date(), 5)
  console.log('Ohlcv_historic_data:')
  console.log('number: ', Ohlcv_historic_data.length)
  console.log('first item: ', Ohlcv_historic_data[0])

  let Trades_latest_data_all = await sdk.trades_latest_data_all(5)
  console.log('Trades_latest_data_all:')
  console.log('number: ', Trades_latest_data_all.length)
  console.log('first item: ', Trades_latest_data_all[0])

  let Trades_latest_data_symbol = await sdk.trades_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Trades_latest_data_symbol:')
  console.log('number: ', Trades_latest_data_symbol.length)
  console.log('first item: ', Trades_latest_data_symbol[0])

  let Trades_historical_data = await sdk.trades_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Trades_historical_data:')
  console.log('number: ', Trades_historical_data.length)
  console.log('first item: ', Trades_historical_data[0])

  let Quotes_current_data_all = await sdk.quotes_current_data_all()
  console.log('Quotes_current_data_all:')
  console.log('number: ', Quotes_current_data_all.length)
  console.log('first item: ', Quotes_current_data_all[0])

  let Quotes_current_data_symbol = await sdk.quotes_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
  console.log('Quotes_current_data_symbol:')
  console.log('first item: ', Quotes_current_data_symbol[0])

  let Quotes_latest_data_all = await sdk.quotes_latest_data_all(5)
  console.log('Quotes_latest_data_all:')
  console.log('number: ', Quotes_latest_data_all.length)
  console.log('first item: ', Quotes_latest_data_all[0])

  let Quotes_latest_data_symbol = await sdk.quotes_latest_data_symbol("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Quotes_latest_data_symbol:')
  console.log('number: ', Quotes_latest_data_symbol.length)
  console.log('first item: ', Quotes_latest_data_symbol[0])

  let Quotes_historical_data = await sdk.quotes_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Quotes_historical_data:')
  console.log('number: ', Quotes_historical_data.length)
  console.log('first item: ', Quotes_historical_data[0])

  let Orderbooks_current_data_all = await sdk.orderbooks_current_data_all()
  console.log('Orderbooks_current_data_all:')
  console.log('number: ', Orderbooks_current_data_all.length)
  console.log('first item: ', Orderbooks_current_data_all[0])

  let Orderbooks_current_data_symbol = await sdk.orderbooks_current_data_symbol("BITSTAMP_SPOT_BTC_USD")
  console.log('Orderbooks_current_data_symbol:')
  console.log('first item: ', Orderbooks_current_data_symbol[0])

  let Orderbooks_latest_data = await sdk.orderbooks_latest_data("BITSTAMP_SPOT_BTC_USD", 5)
  console.log('Orderbooks_latest_data:')
  console.log('number: ', Orderbooks_latest_data.length)
  console.log('first item: ', Orderbooks_latest_data[0])

  let Orderbooks_historical_data = await sdk.orderbooks_historical_data("BITSTAMP_SPOT_BTC_USD",  t, new Date(), 5)
  console.log('Orderbooks_historical_data:')
  console.log('number: ', Orderbooks_historical_data.length)
  console.log('first item: ', Orderbooks_historical_data[0])

  let Twitter_latest_data = await sdk.twitter_latest_data(5)
  console.log('Twitter_latest_data:')
  console.log('number: ', Twitter_latest_data.length)
  console.log('first item: ', Twitter_latest_data[0])

  let Twitter_historical_data = await sdk.twitter_historical_data(t, new Date(), 5)
  console.log('Twitter_historical_data:')
  console.log('number: ', Twitter_historical_data.length)
  console.log('first item: ', Twitter_historical_data[0])
}

run();