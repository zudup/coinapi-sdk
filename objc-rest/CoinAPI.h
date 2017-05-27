//
//  CoinAPI.h
//  CoinAPI
//
//  Created by MyMac on 26/05/2017.
//  Copyright © 2017 Panda Mobile. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoinAPI : NSObject
{
    NSString *              strAPIKey;
    NSJSONSerialization *   jsonSerialization;
}

- (id)initWithAPIKey:(NSString*)strAPI;

/*************** Rest API ***************/
/** Metadata Functions **/
- (void)getAllMetadataExchanges;
- (void)getAllMetadataAssets;
- (void)getAllMetadataSymbols;

/** Exchange Rates Functions **/
- (void)getSpecificExchangeRates:(NSString*)asset_id_base asset_id_quote:(NSString*)asset_id_quote;
- (void)getAllExchangeRates:(NSString*)asset_id_base;

/** OHLCV Functions **/
- (void)getAllOHLCVPeriods;
- (void)getLatestOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id;
- (void)getHistoricalOHLCVData:(NSString*)symbol_id period_id:(NSString*)period_id time_start:(NSString*)time_start;

/** Trades Functions **/
- (void)getLatestTradesData;
- (void)getHistoricalTradesData:(NSString*)symbol_id time_start:(NSString*)time_start;

/** Quotes Functions **/
- (void)getCurrentQuotesData;
- (void)getLatestQuotesData;
- (void)getHistoricalQuotesData:(NSString*)symbol_id time_start:(NSString*)time_start;

/** Orderbooks Functions **/
- (void)getCurrentOrderbooksData;
- (void)getLatestOrderbooksData:(NSString*)symbol_id;
- (void)getHistoricalOrderbooksData:(NSString*)symbol_id time_start:(NSString*)time_start;

/** Twitter Functions **/
- (void)getLatestTwitterData;
- (void)getHistoricalTwitterData:(NSString*)time_start;

/*************** Websocket API ***************/

@end
