package main

import (
	"fmt"
	"time"
)

import SDK "github.com/IMRaziel/coinapi-sdk/go-rest" 

var API_KEY = "73034021-0EBC-493D-8A00-E0F138111F41"
var URL = "https://rest.coinapi.io"

func main() {
	sdk := SDK.NewSDK(API_KEY, URL)

	t, _ := time.Parse(
		time.RFC3339,
		"2016-11-01T22:08:41+00:00")
	fmt.Println(t)

	rate, _ := sdk.Exchange_rates_get_specific_rate("BTC", "USD", time.Time{})
	fmt.Println(rate.Rate)
	rate2, _ := sdk.Exchange_rates_get_specific_rate("BTC", "USD", t)
	fmt.Println(rate2.Rate)

	rates, _ := sdk.Exchange_rates_get_all_current_rates("BTC")
	fmt.Println(rates[0].Asset_id_quote, rates[0].Rate)

	peiods, _ := sdk.Ohlcv_list_all_periods()
	fmt.Println(peiods[0].Period_id)

	latest_data, _ := sdk.Ohlcv_latest_data("BITSTAMP_SPOT_BTC_USD", "1MIN", 0) 
	fmt.Println("latest_data test:", latest_data[0].Time_close)

	historical_data, _ := sdk.Ohlcv_historic_data("BITSTAMP_SPOT_BTC_USD", "1MIN", t, time.Now(), 0)
	fmt.Println("historical_data test:", historical_data[0].Time_close)

}
