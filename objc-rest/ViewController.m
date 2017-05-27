//
//  CoinAPIExample.m
//  CoinAPITest
//
//  Created by MyMac on 26/05/2017.
//  Copyright © 2017 Panda Mobile. All rights reserved.
//

#import "CoinAPIExample.h"
#import "CoinAPI.h"

@interface CoinAPIExample ()

@end

@implementation CoinAPIExample

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    CoinAPI *coin = [CoinAPI alloc];
    coin = [coin initWithAPIKey:@"73034021-0EBC-493D-8A00-E0F138111F41s"];
    
    /** Metadata Functions **/
    [coin getAllMetadataExchanges];
    [coin getAllMetadataAssets];
    [coin getAllMetadataSymbols];
    
    /** Exchange Rates Functions **/
    [coin getSpecificExchangeRates:@"BTC" asset_id_quote:@"USD"];
    [coin getAllExchangeRates:@"BTC"];
    
    /** OHLCV Functions **/
    [coin getAllOHLCVPeriods];
    [coin getLatestOHLCVData:@"BITSTAMP_SPOT_BTC_USD" period_id:@"1MIN"];
    [coin getHistoricalOHLCVData:@"BITSTAMP_SPOT_BTC_USD" period_id:@"1MIN" time_start:@"2016-01-01T00:00:00"];
    
    /** Trades Functions **/
    [coin getLatestTradesData];
    [coin getHistoricalTradesData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00"];
    
    /** Quotes Functions **/
    [coin getCurrentQuotesData];
    [coin getLatestQuotesData];
    [coin getHistoricalQuotesData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00"];
    
    /** Orderbooks Functions **/
    [coin getCurrentOrderbooksData];
    [coin getLatestOrderbooksData:@"BITSTAMP_SPOT_BTC_USD"];
    [coin getHistoricalOrderbooksData:@"BITSTAMP_SPOT_BTC_USD" time_start:@"2016-01-01T00:00:00"];
    
    /** Twitter Functions **/
    [coin getLatestTwitterData];
    [coin getHistoricalTwitterData:@"2016-01-01T00:00:00"];
}


@end
