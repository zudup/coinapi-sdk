--  OnChain API
--   This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
--
--  The version of the OpenAPI document: v1
--  Contact: support@coinapi.io
--
--  NOTE: This package is auto generated by OpenAPI-Generator 6.2.1.
--  https://openapi-generator.tech
--  Do not edit the class manually.

pragma Warnings (Off, "*is not referenced");
with Swagger.Streams;
package body .Clients is
   pragma Style_Checks ("-mr");

   --  Exchanges (current) 🔥
   --  Gets exchanges.
   procedure Curve_Get_Exchanges__current
      (Client : in out Client_Type;
       Result : out .Models.CurveExchangeDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/sushiswap/exchanges/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Curve_Get_Exchanges__current;

   --  Trades (current) 🔥
   --  Gets trades.
   procedure Dex_Get_Trades__current
      (Client : in out Client_Type;
       Result : out .Models.DexTradeDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/sushiswap/trades/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Dex_Get_Trades__current;

   --  Pools (current) 🔥
   --  Gets pools.
   procedure Sushiswap_Get_Pools__current
      (Client : in out Client_Type;
       Result : out .Models.SushiswapPairDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/sushiswap/pools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Sushiswap_Get_Pools__current;

   --  Swaps (current) 🔥
   --  Gets swaps.
   procedure Sushiswap_Get_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.SushiswapSwapDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/sushiswap/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Sushiswap_Get_Swaps__current;

   --  Tokens (current) 🔥
   --  Gets tokens.
   procedure Sushiswap_Get_Tokens__current
      (Client : in out Client_Type;
       Result : out .Models.SushiswapTokenDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/sushiswap/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Sushiswap_Get_Tokens__current;

   --  Pools (current) 🔥
   --  Gets pools.
   procedure Uniswap_V2_Get_Pools__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV2PairV2DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv2/pools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V2_Get_Pools__current;

   --  Swaps (current) 🔥
   --  Gets swaps.
   procedure Uniswap_V2_Get_Swaps__current
      (Client : in out Client_Type;
       Result : out .Models.UniswapV2SwapV2DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/uniswapv2/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V2_Get_Swaps__current;

   --  Tokens (current) 🔥
   --  Gets tokens.
   procedure Uniswap_V2_Get_Tokens__current
      (Client : in out Client_Type;
       Result : out .Models.UniswapV2TokenV2DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/uniswapv2/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V2_Get_Tokens__current;

   --  Bundles (current)
   --  Gets bundles.
   procedure Uniswap_V3_Get_Bundles__current
      (Client : in out Client_Type;
       Result : out .Models.UniswapV3BundleV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/uniswapv3/bundles/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Bundles__current;

   --  Burns (current)
   --  Gets burns.
   procedure Uniswap_V3_Get_Burns__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3BurnV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/burns/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Burns__current;

   --  DayData (current)
   --  Gets uniswapv3 day data.
   procedure Uniswap_V3_Get_Day_Data__current
      (Client : in out Client_Type;
       Result : out .Models.UniswapV3UniswapDayDataV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/uniswapv3/dayData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Day_Data__current;

   --  Factory (current)
   --  Gets factory.
   procedure Uniswap_V3_Get_Factory__current
      (Client : in out Client_Type;
       Result : out .Models.UniswapV3FactoryV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Set_Path ("/dapps/uniswapv3/factory/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Factory__current;

   --  Mints (current)
   --  Gets mints.
   procedure Uniswap_V3_Get_Mints__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3MintV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/mints/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Mints__current;

   --  PoolsDayData (current)
   --  Gets pools day data.
   procedure Uniswap_V3_Get_Pools_Day_Data__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3PoolDayDataV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/poolsDayData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Pools_Day_Data__current;

   --  PoolsHourData (current)
   --  Gets pools hour data.
   procedure Uniswap_V3_Get_Pools_Hour_Data__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3PoolHourDataV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/poolsHourData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Pools_Hour_Data__current;

   --  Pools (current) 🔥
   --  Gets pools.
   procedure Uniswap_V3_Get_Pools__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3PoolV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/pools/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Pools__current;

   --  PositionsSnapshots (current)
   --  Gets positions snapshots.
   procedure Uniswap_V3_Get_Positions_Snapshots__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3PositionSnapshotV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/positionSnapshots/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Positions_Snapshots__current;

   --  Positions (current)
   --  Gets positions.
   procedure Uniswap_V3_Get_Positions__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3PositionV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/positions/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Positions__current;

   --  Swaps (current) 🔥
   --  Gets swaps.
   procedure Uniswap_V3_Get_Swaps__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3SwapV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/swaps/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Swaps__current;

   --  TicksDayData (current)
   --  Gets ticks day data.
   procedure Uniswap_V3_Get_Ticks_Day_Data__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3TickDayDataV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/ticksDayData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Ticks_Day_Data__current;

   --  Ticks (current)
   --  Gets ticks.
   procedure Uniswap_V3_Get_Ticks__current
      (Client : in out Client_Type;
       Filter_Pool_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3TickV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_pool_id", Filter_Pool_Id);
      URI.Set_Path ("/dapps/uniswapv3/ticks/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Ticks__current;

   --  TokensDayData (current)
   --  Gets tokens day data.
   procedure Uniswap_V3_Get_Tokens_Day_Data__current
      (Client : in out Client_Type;
       Filter_Token_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3TokenV3DayDataDTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_token_id", Filter_Token_Id);
      URI.Set_Path ("/dapps/uniswapv3/tokensDayData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Tokens_Day_Data__current;

   --  TokensHourData (current)
   --  Gets tokens hour data.
   procedure Uniswap_V3_Get_Tokens_Hour_Data__current
      (Client : in out Client_Type;
       Filter_Token_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3TokenHourDataV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_token_id", Filter_Token_Id);
      URI.Set_Path ("/dapps/uniswapv3/tokensHourData/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Tokens_Hour_Data__current;

   --  Tokens (current) 🔥
   --  Gets tokens.
   procedure Uniswap_V3_Get_Tokens__current
      (Client : in out Client_Type;
       Filter_Token_Id : in Swagger.Nullable_UString;
       Result : out .Models.UniswapV3TokenV3DTO_Type_Vectors.Vector) is
      URI   : Swagger.Clients.URI_Type;
      Reply : Swagger.Value_Type;
   begin
      Client.Set_Accept ((Swagger.Clients.TEXT_PLAIN,
                          Swagger.Clients.APPLICATION_JSON,
                          Swagger.Clients.TEXT_JSON));

      URI.Add_Param ("filter_token_id", Filter_Token_Id);
      URI.Set_Path ("/dapps/uniswapv3/tokens/current");
      Client.Call (Swagger.Clients.GET, URI, Reply);
      .Models.Deserialize (Reply, "", Result);
   end Uniswap_V3_Get_Tokens__current;
end .Clients;
