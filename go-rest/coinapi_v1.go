package coinapi_v1

import (
	"encoding/json"
	"errors"
	"fmt"
	"io/ioutil"
	"net/http"
	"time"

	"github.com/shopspring/decimal"
)

// Exchange info
type Exchange struct {
	Exchange_id string `json:"exchange_id"`
	Website     string `json:"website"`
	Name        string `json:"name"`
}

type Asset struct {
	Asset_id       string `json:"asset_id"`
	Name           string `json:"name"`
	Type_is_crypto bool   `json:"type_is_crypto"`
}

type SymbolBase struct {
	Symbol_type string `json:"symbol_type"`
}

type Symbol struct {
	SymbolBase
	Symbol_id      string `json:"symbol_id"`
	Exchange_id    string `json:"exchange_id"`
	Asset_id_base  string `json:"asset_id_base"`
	Asset_id_quote string `json:"asset_id_quote"`
}

type Spot struct {
	Symbol
}

type Future struct {
	Symbol
	Future_delivery_time time.Time `json:"future_delivery_time"`
}

type Option struct {
	Option_type_is_call    bool            `json:"option_type_is_call"`
	Option_strike_price    decimal.Decimal `json:"option_strike_price"`
	Option_contract_unit   uint32          `json:"option_contract_unit"`
	Option_exercise_style  string          `json:"option_exercise_style"`
	Option_expiration_time time.Time       `json:"option_excercise_style"`
}

type Exchange_rate struct {
	Time           time.Time       `json:"time"`
	Asset_id_base  string          `json:"asset_id_base"`
	Asset_id_quote string          `json:"asset_id_quote"`
	Rate           decimal.Decimal `json:"rate"`
}

type Ohlcv_period struct {
	Period_id      string `json:"period_id"`
	Length_seconds uint64 `json:"length_seconds"`
	Length_months  uint32 `json:"length_months"`
	Unit_count     uint32 `json:"unit_count"`
	Unit_name      string `json:"unit_name"`
	Display_name   string `json:"display_name"`
}

type Ohlcv_data struct {
	Time_period_start time.Time       `json:"time_period_start"`
	Time_period_end   time.Time       `json:"time_period_end"`
	Time_open         time.Time       `json:"time_open"`
	Time_close        time.Time       `json:"time_close"`
	Price_open        decimal.Decimal `json:"price_open"`
	Price_high        decimal.Decimal `json:"price_high"`
	Price_low         decimal.Decimal `json:"price_low"`
	Price_close       decimal.Decimal `json:"price_close"`
	Volume_traded     decimal.Decimal `json:"volume_traded"`
	Trades_count      uint32          `json:"trades_count"`
}

type Trade struct {
	Symbol_id     string          `json:"symbol_id"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Uuid          string          `json:"uuid"`
	Price         decimal.Decimal `json:"price"`
	Size          decimal.Decimal `json:"size"`
	taker_side    string          `json:"taker_side"`
}

type Quote struct {
	Symbol_id     string          `json:"symbol_id"`
	Time_exchange time.Time       `json:"time_exchange"`
	Time_coinapi  time.Time       `json:"time_coinapi"`
	Ask_price     decimal.Decimal `json:"ask_price"`
	Ask_size      decimal.Decimal `json:"ask_size"`
	Bid_price     decimal.Decimal `json:"bid_price"`
	Bid_size      decimal.Decimal `json:"bid_size"`
	Last_trade    Trade           `json:"last_trade"`
}

type Bid struct {
	Price decimal.Decimal `json:"price"`
	Size  decimal.Decimal `json:"price"`
}

type Orderbook struct {
	Symbol_id     string    `json:"symbol_id"`
	Time_exchange time.Time `json:"time_exchange"`
	Time_coinapi  time.Time `json:"time_coinapi"`
	Asks          []Bid     `json:"asks"`
	Bids          []Bid     `json:"bids"`
}

type Tweet struct {
	CreatedAt            string                 `json:"created_at"`
	FavoriteCount        int                    `json:"favorite_count"`
	Favorited            bool                   `json:"favorited"`
	FilterLevel          string                 `json:"filter_level"`
	ID                   int64                  `json:"id"`
	IDStr                string                 `json:"id_str"`
	InReplyToScreenName  string                 `json:"in_reply_to_screen_name"`
	InReplyToStatusID    int64                  `json:"in_reply_to_status_id"`
	InReplyToStatusIDStr string                 `json:"in_reply_to_status_id_str"`
	InReplyToUserID      int64                  `json:"in_reply_to_user_id"`
	InReplyToUserIDStr   string                 `json:"in_reply_to_user_id_str"`
	Lang                 string                 `json:"lang"`
	PossiblySensitive    bool                   `json:"possibly_sensitive"`
	RetweetCount         int                    `json:"retweet_count"`
	Retweeted            bool                   `json:"retweeted"`
	Source               string                 `json:"source"`
	Scopes               map[string]interface{} `json:"scopes"`
	Text                 string                 `json:"text"`
	FullText             string                 `json:"full_text"`
	Truncated            bool                   `json:"truncated"`
	WithheldCopyright    bool                   `json:"withheld_copyright"`
	WithheldInCountries  []string               `json:"withheld_in_countries"`
	WithheldScope        string                 `json:"withheld_scope"`
	QuotedStatusID       int64                  `json:"quoted_status_id"`
	QuotedStatusIDStr    string                 `json:"quoted_status_id_str"`
}

type SDK struct {
	api_key string
	url     string
}

type ErrorMessage struct {
	Message string `json:"message"`
}

func NewSDK(api_key string, url string) *SDK {
	sdk := new(SDK)
	sdk.api_key = api_key
	sdk.url = url
	return sdk
}

func (sdk SDK) metadata_list_exchanges() (exchanges []Exchange, err error) {
	path := "/v1/exchanges"
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &exchanges)
	err = nil
	return
}

func (sdk SDK) metadata_list_assets() (assets []Asset, err error) {
	path := "/v1/assets"
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &assets)
	err = nil
	return
}

func (sdk SDK) metadata_list_symbols() (spots []Spot, futures []Future, options []Option, err error) {
	path := "/v1/symbols"

	spots = []Spot{}
	futures = []Future{}
	options = []Option{}

	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, nil, nil, req_err
	}
	var data []json.RawMessage
	parse_err := json.Unmarshal([]byte(text), &data)
	if parse_err != nil {
		return nil, nil, nil, errors.New("Failed to parse response")
	}
	for _, symbol := range data {
		base := SymbolBase{}
		json.Unmarshal(symbol, &base)
		switch symbol_type := base.Symbol_type; symbol_type {
		case "SPOT":
			spot := Spot{}
			json.Unmarshal(symbol, &spot)
			spots = append(spots, spot)
		case "FUTURE":
			future := Future{}
			json.Unmarshal(symbol, &future)
			futures = append(futures, future)
		case "OPTION":
			option := Option{}
			json.Unmarshal(symbol, &option)
			options = append(options, option)
		}
	}
	return
}

func (sdk SDK) exchange_rates_get_specific_rate(asset_id_base string, asset_id_quote string, _time time.Time) (rate Exchange_rate, err error) {
	path := fmt.Sprintf("/v1/exchangerate/%s/%s", asset_id_base, asset_id_quote)
	if !_time.IsZero() {
		path = path + "?time=" + _time.Format(time.RFC3339)
		fmt.Println("time:", path)
	}
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return Exchange_rate{}, req_err
	}
	json.Unmarshal([]byte(text), &rate)
	return
}

func (sdk SDK) exchange_rates_get_all_current_rates(asset_id_base string) (rates []Exchange_rate, err error) {
	path := fmt.Sprintf("/v1/exchangerate/%s", asset_id_base)
	rates = []Exchange_rate{}

	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}

	type Tmp struct {
		Asset_id_base string          `json:"asset_id_base"`
		Rates         []Exchange_rate `json:"rates"`
	}

	tmp := Tmp{}

	json.Unmarshal([]byte(text), &tmp)
	for _, rate := range tmp.Rates {
		rate.Asset_id_base = tmp.Asset_id_base
		rates = append(rates, rate)
	}
	return
}

func (sdk SDK) ohlcv_list_all_periods() (periods []Ohlcv_period, err error) {
	path := "/v1/ohlcv/periods"
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &periods)
	err = nil
	return
}

func (sdk SDK) ohlcv_latest_data(symbol_id string, period_id string, limit uint32) (data []Ohlcv_data, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/ohlcv/%s/latest?period_id=%s&limit=%d", symbol_id, period_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &data)
	err = nil
	return
}

func (sdk SDK) ohlcv_historic_data(symbol_id string, period_id string, time_start time.Time, time_end time.Time, limit uint32) (data []Ohlcv_data, err error) {
	if limit == 0 {
		limit = 100
	}
	if time_end.IsZero() {
		time_end = time.Now()
	}
	path := fmt.Sprintf("/v1/ohlcv/%s/history?period_id=%s&time_start=%s&time_end=%s&limit=%d",
		symbol_id, period_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &data)
	err = nil
	return
}

func (sdk SDK) trades_latest_data_all(limit uint32) (trades []Trade, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/trades/latest?limit=%d", limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &trades)
	err = nil
	return
}

func (sdk SDK) trades_latest_data_symbol(symbol_id string, limit uint32) (trades []Trade, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/trades/%s/latest?limit=%d", symbol_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &trades)
	err = nil
	return
}

func (sdk SDK) trades_historical_data(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (trades []Trade, err error) {
	if limit == 0 {
		limit = 100
	}
	if time_end.IsZero() {
		time_end = time.Now()
	}

	path := fmt.Sprintf("/v1/trades/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &trades)
	err = nil
	return
}

// quotes

func (sdk SDK) quotes_current_data_all(limit uint32) (quotes []Quote, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/quotes/current?limit=%d", limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &quotes)
	err = nil
	return
}

func (sdk SDK) quotes_current_data_symbol(symbol_id string, limit uint32) (quote Quote, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/quotes/%s/current?limit=%d", symbol_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return Quote{}, req_err
	}
	json.Unmarshal([]byte(text), &quote)
	err = nil
	return
}

func (sdk SDK) quotes_latest_data_all(limit uint32) (quotes []Quote, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/quotes/latest?limit=%d", limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &quotes)
	err = nil
	return
}

func (sdk SDK) quotes_latest_data_symbol(symbol_id string, limit uint32) (quotes []Quote, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/quotes/%s/latest?limit=%d", symbol_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &quotes)
	err = nil
	return
}

func (sdk SDK) quotes_historical_data(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (quotes []Quote, err error) {
	if limit == 0 {
		limit = 100
	}
	if time_end.IsZero() {
		time_end = time.Now()
	}

	path := fmt.Sprintf("/v1/quotes/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &quotes)
	err = nil
	return
}

// quotes end

// orderbooks

func (sdk SDK) orderbooks_current_data_all(limit uint32) (orderbooks []Orderbook, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/orderbooks/current?limit=%d", limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &orderbooks)
	err = nil
	return
}

func (sdk SDK) orderbooks_current_data_symbol(symbol_id string, limit uint32) (orderbook Orderbook, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/orderbooks/%s/current?limit=%d", symbol_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return Orderbook{}, req_err
	}
	json.Unmarshal([]byte(text), &orderbook)
	err = nil
	return
}

func (sdk SDK) orderbooks_latest_data(symbol_id string, limit uint32) (orderbooks []Orderbook, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/orderbooks/%s/latest?limit=%d", symbol_id, limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &orderbooks)
	err = nil
	return
}

func (sdk SDK) orderbooks_historical_data(symbol_id string, time_start time.Time, time_end time.Time, limit uint32) (orderbooks []Orderbook, err error) {
	if limit == 0 {
		limit = 100
	}
	if time_end.IsZero() {
		time_end = time.Now()
	}

	path := fmt.Sprintf("/v1/orderbooks/%s/history?time_start=%s&time_end=%s&limit=%d", symbol_id, time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &orderbooks)
	err = nil
	return
}

// orderbooks end

// twitter
func (sdk SDK) twitter_latest_data(limit uint32) (tweets []Tweet, err error) {
	if limit == 0 {
		limit = 100
	}
	path := fmt.Sprintf("/v1/twitter/latest?limit=%d", limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &tweets)
	err = nil
	return
}

func (sdk SDK) twitter_historical_data(time_start time.Time, time_end time.Time, limit uint32) (tweets []Tweet, err error) {
	if limit == 0 {
		limit = 100
	}
	if time_end.IsZero() {
		time_end = time.Now()
	}

	path := fmt.Sprintf("/v1/twitter/history?time_start=%s&time_end=%s&limit=%d", time_start.Format(time.RFC3339), time_end.Format(time.RFC3339), limit)
	text, req_err := sdk.get_response_text(path)
	if req_err != nil {
		return nil, req_err
	}
	json.Unmarshal([]byte(text), &tweets)
	err = nil
	return
}

// twitter end

func (sdk SDK) get_response_text(path string) (responseBody string, err error) {
	url := sdk.url + path
	req, req_err := http.NewRequest("GET", url, nil)
	if req_err != nil {
		return "", req_err
	}
	req.Header.Set("X-CoinAPI-Key", API_KEY)

	client := &http.Client{}

	resp, resp_err := client.Do(req)
	if resp_err != nil {
		return "", resp_err
	}

	defer resp.Body.Close()
	body, read_err := ioutil.ReadAll(resp.Body)
	if read_err != nil {
		return "", read_err
	}

	if resp.StatusCode != http.StatusOK {
		error_message := ErrorMessage{}
		err := json.Unmarshal(body, &error_message)
		fmt.Println(error_message.Message)
		if err != nil && error_message.Message != "" {
			return "", errors.New(error_message.Message)
		}
		return "", fmt.Errorf("Server responded with status code: %d", resp.StatusCode)
	}

	fmt.Println(string(body))

	return string(body), nil
}
