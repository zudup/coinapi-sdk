# CoinAPI.EMS.REST.V1.Api.CurveApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DappsCurveAccountsHistoricalGet**](CurveApi.md#dappscurveaccountshistoricalget) | **GET** /dapps/curve/accounts/historical |  |
| [**DappsCurveAddLiquidityEventHistoricalGet**](CurveApi.md#dappscurveaddliquidityeventhistoricalget) | **GET** /dapps/curve/addLiquidityEvent/historical |  |
| [**DappsCurveAdminFeeChangeLogHistoricalGet**](CurveApi.md#dappscurveadminfeechangeloghistoricalget) | **GET** /dapps/curve/adminFeeChangeLog/historical |  |
| [**DappsCurveAmplificationCoeffChangeLogHistoricalGet**](CurveApi.md#dappscurveamplificationcoeffchangeloghistoricalget) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical |  |
| [**DappsCurveCoinsHistoricalGet**](CurveApi.md#dappscurvecoinshistoricalget) | **GET** /dapps/curve/coins/historical |  |
| [**DappsCurveContractsHistoricalGet**](CurveApi.md#dappscurvecontractshistoricalget) | **GET** /dapps/curve/contracts/historical |  |
| [**DappsCurveContractsVersionHistoricalGet**](CurveApi.md#dappscurvecontractsversionhistoricalget) | **GET** /dapps/curve/contractsVersion/historical |  |
| [**DappsCurveDailyVolumeHistoricalGet**](CurveApi.md#dappscurvedailyvolumehistoricalget) | **GET** /dapps/curve/dailyVolume/historical |  |
| [**DappsCurveFeeChangeLogHistoricalGet**](CurveApi.md#dappscurvefeechangeloghistoricalget) | **GET** /dapps/curve/feeChangeLog/historical |  |
| [**DappsCurveGaugeDepositHistoricalGet**](CurveApi.md#dappscurvegaugedeposithistoricalget) | **GET** /dapps/curve/gaugeDeposit/historical |  |
| [**DappsCurveGaugeHistoricalGet**](CurveApi.md#dappscurvegaugehistoricalget) | **GET** /dapps/curve/gauge/historical |  |
| [**DappsCurveGaugeLiquidityHistoricalGet**](CurveApi.md#dappscurvegaugeliquidityhistoricalget) | **GET** /dapps/curve/gaugeLiquidity/historical |  |
| [**DappsCurveGaugeTotalWeightHistoricalGet**](CurveApi.md#dappscurvegaugetotalweighthistoricalget) | **GET** /dapps/curve/gaugeTotalWeight/historical |  |
| [**DappsCurveGaugeTypeHistoricalGet**](CurveApi.md#dappscurvegaugetypehistoricalget) | **GET** /dapps/curve/gaugeType/historical |  |
| [**DappsCurveGaugeTypeWeightHistoricalGet**](CurveApi.md#dappscurvegaugetypeweighthistoricalget) | **GET** /dapps/curve/gaugeTypeWeight/historical |  |
| [**DappsCurveGaugeWeightHistoricalGet**](CurveApi.md#dappscurvegaugeweighthistoricalget) | **GET** /dapps/curve/gaugeWeight/historical |  |
| [**DappsCurveGaugeWeightVoteHistoricalGet**](CurveApi.md#dappscurvegaugeweightvotehistoricalget) | **GET** /dapps/curve/gaugeWeightVote/historical |  |
| [**DappsCurveGaugeWithdrawHistoricalGet**](CurveApi.md#dappscurvegaugewithdrawhistoricalget) | **GET** /dapps/curve/gaugeWithdraw/historical |  |
| [**DappsCurveHourlyVolumeHistoricalGet**](CurveApi.md#dappscurvehourlyvolumehistoricalget) | **GET** /dapps/curve/hourlyVolume/historical |  |
| [**DappsCurveLpTokenHistoricalGet**](CurveApi.md#dappscurvelptokenhistoricalget) | **GET** /dapps/curve/lpToken/historical |  |
| [**DappsCurvePoolsHistoricalGet**](CurveApi.md#dappscurvepoolshistoricalget) | **GET** /dapps/curve/pools/historical |  |
| [**DappsCurveProposalsHistoricalGet**](CurveApi.md#dappscurveproposalshistoricalget) | **GET** /dapps/curve/proposals/historical |  |
| [**DappsCurveProposalsVoteHistoricalGet**](CurveApi.md#dappscurveproposalsvotehistoricalget) | **GET** /dapps/curve/proposalsVote/historical |  |
| [**DappsCurveRemoveLiquidityEventHistoricalGet**](CurveApi.md#dappscurveremoveliquidityeventhistoricalget) | **GET** /dapps/curve/removeLiquidityEvent/historical |  |
| [**DappsCurveRemoveLiquidityOneEventHistoricalGet**](CurveApi.md#dappscurveremoveliquidityoneeventhistoricalget) | **GET** /dapps/curve/removeLiquidityOneEvent/historical |  |
| [**DappsCurveSwapsHistoricalGet**](CurveApi.md#dappscurveswapshistoricalget) | **GET** /dapps/curve/swaps/historical |  |
| [**DappsCurveSystemStateHistoricalGet**](CurveApi.md#dappscurvesystemstatehistoricalget) | **GET** /dapps/curve/systemState/historical |  |
| [**DappsCurveTokensHistoricalGet**](CurveApi.md#dappscurvetokenshistoricalget) | **GET** /dapps/curve/tokens/historical |  |
| [**DappsCurveTransferOwnershipEventHistoricalGet**](CurveApi.md#dappscurvetransferownershipeventhistoricalget) | **GET** /dapps/curve/transferOwnershipEvent/historical |  |
| [**DappsCurveUnderlyingCoinHistoricalGet**](CurveApi.md#dappscurveunderlyingcoinhistoricalget) | **GET** /dapps/curve/underlyingCoin/historical |  |
| [**DappsCurveVotingAppHistoricalGet**](CurveApi.md#dappscurvevotingapphistoricalget) | **GET** /dapps/curve/votingApp/historical |  |
| [**DappsCurveWeeklyVolumeHistoricalGet**](CurveApi.md#dappscurveweeklyvolumehistoricalget) | **GET** /dapps/curve/weeklyVolume/historical |  |

<a name="dappscurveaccountshistoricalget"></a>
# **DappsCurveAccountsHistoricalGet**
> void DappsCurveAccountsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveAccountsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveAccountsHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveAccountsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveAccountsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveAccountsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveAccountsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveaddliquidityeventhistoricalget"></a>
# **DappsCurveAddLiquidityEventHistoricalGet**
> void DappsCurveAddLiquidityEventHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveAddLiquidityEventHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveAddLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveAddLiquidityEventHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveAddLiquidityEventHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveAddLiquidityEventHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveAddLiquidityEventHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveadminfeechangeloghistoricalget"></a>
# **DappsCurveAdminFeeChangeLogHistoricalGet**
> void DappsCurveAdminFeeChangeLogHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveAdminFeeChangeLogHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveAdminFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveAdminFeeChangeLogHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveAdminFeeChangeLogHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveAdminFeeChangeLogHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveAdminFeeChangeLogHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveamplificationcoeffchangeloghistoricalget"></a>
# **DappsCurveAmplificationCoeffChangeLogHistoricalGet**
> void DappsCurveAmplificationCoeffChangeLogHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveAmplificationCoeffChangeLogHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveAmplificationCoeffChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveAmplificationCoeffChangeLogHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveAmplificationCoeffChangeLogHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveAmplificationCoeffChangeLogHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveAmplificationCoeffChangeLogHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvecoinshistoricalget"></a>
# **DappsCurveCoinsHistoricalGet**
> void DappsCurveCoinsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveCoinsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveCoinsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveCoinsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveCoinsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveCoinsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveCoinsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvecontractshistoricalget"></a>
# **DappsCurveContractsHistoricalGet**
> void DappsCurveContractsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveContractsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveContractsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveContractsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveContractsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveContractsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveContractsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvecontractsversionhistoricalget"></a>
# **DappsCurveContractsVersionHistoricalGet**
> void DappsCurveContractsVersionHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveContractsVersionHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveContractsVersionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveContractsVersionHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveContractsVersionHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveContractsVersionHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveContractsVersionHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvedailyvolumehistoricalget"></a>
# **DappsCurveDailyVolumeHistoricalGet**
> void DappsCurveDailyVolumeHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveDailyVolumeHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveDailyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveDailyVolumeHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveDailyVolumeHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveDailyVolumeHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveDailyVolumeHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvefeechangeloghistoricalget"></a>
# **DappsCurveFeeChangeLogHistoricalGet**
> void DappsCurveFeeChangeLogHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveFeeChangeLogHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveFeeChangeLogHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveFeeChangeLogHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveFeeChangeLogHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveFeeChangeLogHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugedeposithistoricalget"></a>
# **DappsCurveGaugeDepositHistoricalGet**
> void DappsCurveGaugeDepositHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeDepositHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeDepositHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeDepositHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeDepositHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeDepositHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeDepositHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugehistoricalget"></a>
# **DappsCurveGaugeHistoricalGet**
> void DappsCurveGaugeHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugeliquidityhistoricalget"></a>
# **DappsCurveGaugeLiquidityHistoricalGet**
> void DappsCurveGaugeLiquidityHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeLiquidityHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeLiquidityHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeLiquidityHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeLiquidityHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeLiquidityHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeLiquidityHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugetotalweighthistoricalget"></a>
# **DappsCurveGaugeTotalWeightHistoricalGet**
> void DappsCurveGaugeTotalWeightHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeTotalWeightHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeTotalWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTotalWeightHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeTotalWeightHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeTotalWeightHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTotalWeightHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugetypehistoricalget"></a>
# **DappsCurveGaugeTypeHistoricalGet**
> void DappsCurveGaugeTypeHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeTypeHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeTypeHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTypeHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeTypeHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeTypeHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTypeHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugetypeweighthistoricalget"></a>
# **DappsCurveGaugeTypeWeightHistoricalGet**
> void DappsCurveGaugeTypeWeightHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeTypeWeightHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeTypeWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTypeWeightHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeTypeWeightHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeTypeWeightHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeTypeWeightHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugeweighthistoricalget"></a>
# **DappsCurveGaugeWeightHistoricalGet**
> void DappsCurveGaugeWeightHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeWeightHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWeightHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeWeightHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeWeightHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWeightHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugeweightvotehistoricalget"></a>
# **DappsCurveGaugeWeightVoteHistoricalGet**
> void DappsCurveGaugeWeightVoteHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeWeightVoteHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeWeightVoteHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWeightVoteHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeWeightVoteHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeWeightVoteHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWeightVoteHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvegaugewithdrawhistoricalget"></a>
# **DappsCurveGaugeWithdrawHistoricalGet**
> void DappsCurveGaugeWithdrawHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveGaugeWithdrawHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveGaugeWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWithdrawHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveGaugeWithdrawHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveGaugeWithdrawHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveGaugeWithdrawHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvehourlyvolumehistoricalget"></a>
# **DappsCurveHourlyVolumeHistoricalGet**
> void DappsCurveHourlyVolumeHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveHourlyVolumeHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveHourlyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveHourlyVolumeHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveHourlyVolumeHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveHourlyVolumeHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveHourlyVolumeHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvelptokenhistoricalget"></a>
# **DappsCurveLpTokenHistoricalGet**
> void DappsCurveLpTokenHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveLpTokenHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveLpTokenHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveLpTokenHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveLpTokenHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveLpTokenHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveLpTokenHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvepoolshistoricalget"></a>
# **DappsCurvePoolsHistoricalGet**
> void DappsCurvePoolsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurvePoolsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurvePoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurvePoolsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurvePoolsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurvePoolsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurvePoolsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveproposalshistoricalget"></a>
# **DappsCurveProposalsHistoricalGet**
> void DappsCurveProposalsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveProposalsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveProposalsHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveProposalsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveProposalsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveProposalsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveProposalsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveproposalsvotehistoricalget"></a>
# **DappsCurveProposalsVoteHistoricalGet**
> void DappsCurveProposalsVoteHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveProposalsVoteHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveProposalsVoteHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveProposalsVoteHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveProposalsVoteHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveProposalsVoteHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveProposalsVoteHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveremoveliquidityeventhistoricalget"></a>
# **DappsCurveRemoveLiquidityEventHistoricalGet**
> void DappsCurveRemoveLiquidityEventHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveRemoveLiquidityEventHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveRemoveLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveRemoveLiquidityEventHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveRemoveLiquidityEventHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveRemoveLiquidityEventHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveRemoveLiquidityEventHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveremoveliquidityoneeventhistoricalget"></a>
# **DappsCurveRemoveLiquidityOneEventHistoricalGet**
> void DappsCurveRemoveLiquidityOneEventHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveRemoveLiquidityOneEventHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveRemoveLiquidityOneEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveRemoveLiquidityOneEventHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveRemoveLiquidityOneEventHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveRemoveLiquidityOneEventHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveRemoveLiquidityOneEventHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveswapshistoricalget"></a>
# **DappsCurveSwapsHistoricalGet**
> void DappsCurveSwapsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveSwapsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveSwapsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveSwapsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveSwapsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveSwapsHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvesystemstatehistoricalget"></a>
# **DappsCurveSystemStateHistoricalGet**
> void DappsCurveSystemStateHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveSystemStateHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveSystemStateHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveSystemStateHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveSystemStateHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveSystemStateHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveSystemStateHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvetokenshistoricalget"></a>
# **DappsCurveTokensHistoricalGet**
> void DappsCurveTokensHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveTokensHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveTokensHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveTokensHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveTokensHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveTokensHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **tokenId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvetransferownershipeventhistoricalget"></a>
# **DappsCurveTransferOwnershipEventHistoricalGet**
> void DappsCurveTransferOwnershipEventHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveTransferOwnershipEventHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveTransferOwnershipEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveTransferOwnershipEventHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveunderlyingcoinhistoricalget"></a>
# **DappsCurveUnderlyingCoinHistoricalGet**
> void DappsCurveUnderlyingCoinHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveUnderlyingCoinHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveUnderlyingCoinHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveUnderlyingCoinHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveUnderlyingCoinHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveUnderlyingCoinHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveUnderlyingCoinHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurvevotingapphistoricalget"></a>
# **DappsCurveVotingAppHistoricalGet**
> void DappsCurveVotingAppHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveVotingAppHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCurveVotingAppHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveVotingAppHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveVotingAppHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveVotingAppHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveVotingAppHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dappscurveweeklyvolumehistoricalget"></a>
# **DappsCurveWeeklyVolumeHistoricalGet**
> void DappsCurveWeeklyVolumeHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCurveWeeklyVolumeHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CurveApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCurveWeeklyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.DappsCurveWeeklyVolumeHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsCurveWeeklyVolumeHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsCurveWeeklyVolumeHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.DappsCurveWeeklyVolumeHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

