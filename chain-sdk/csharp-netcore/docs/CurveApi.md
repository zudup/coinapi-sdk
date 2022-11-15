# CoinAPI.EMS.REST.V1.Api.CurveApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**CurveGetAccountDTOsHistorical**](CurveApi.md#curvegetaccountdtoshistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥 |
| [**CurveGetAccountsHistorical**](CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) |
| [**CurveGetAddLiquidityEventDTOsHistorical**](CurveApi.md#curvegetaddliquidityeventdtoshistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥 |
| [**CurveGetAddLiquidityEventsHistorical**](CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical) |
| [**CurveGetAdminFeeChangeLogDTOsHistorical**](CurveApi.md#curvegetadminfeechangelogdtoshistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥 |
| [**CurveGetAdminFeeChangeLogsHistorical**](CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical) |
| [**CurveGetAmplificationCoeffChangeLogDTOsHistorical**](CurveApi.md#curvegetamplificationcoeffchangelogdtoshistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥 |
| [**CurveGetAmplificationCoeffChangeLogsHistorical**](CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical) |
| [**CurveGetCoinDTOsHistorical**](CurveApi.md#curvegetcoindtoshistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥 |
| [**CurveGetCoinsHistorical**](CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) |
| [**CurveGetContractDTOsHistorical**](CurveApi.md#curvegetcontractdtoshistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥 |
| [**CurveGetContractVersionDTOsHistorical**](CurveApi.md#curvegetcontractversiondtoshistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥 |
| [**CurveGetContractsHistorical**](CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) |
| [**CurveGetContractsVersionsHistorical**](CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical) |
| [**CurveGetDailyVolumeDTOsHistorical**](CurveApi.md#curvegetdailyvolumedtoshistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥 |
| [**CurveGetDailyVolumesHistorical**](CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical) |
| [**CurveGetExchangeDTOsHistorical**](CurveApi.md#curvegetexchangedtoshistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥 |
| [**CurveGetExchangesHistorical**](CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥 |
| [**CurveGetFeeChangeLogDTOsHistorical**](CurveApi.md#curvegetfeechangelogdtoshistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥 |
| [**CurveGetFeeChangeLogsHistorical**](CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical) |
| [**CurveGetGaugeDTOsHistorical**](CurveApi.md#curvegetgaugedtoshistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥 |
| [**CurveGetGaugeDepositDTOsHistorical**](CurveApi.md#curvegetgaugedepositdtoshistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥 |
| [**CurveGetGaugeLiquidityDTOsHistorical**](CurveApi.md#curvegetgaugeliquiditydtoshistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥 |
| [**CurveGetGaugeTotalWeightDTOsHistorical**](CurveApi.md#curvegetgaugetotalweightdtoshistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥 |
| [**CurveGetGaugeTypeDTOsHistorical**](CurveApi.md#curvegetgaugetypedtoshistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥 |
| [**CurveGetGaugeTypeWeightDTOsHistorical**](CurveApi.md#curvegetgaugetypeweightdtoshistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥 |
| [**CurveGetGaugeWeightDTOsHistorical**](CurveApi.md#curvegetgaugeweightdtoshistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥 |
| [**CurveGetGaugeWeightVoteDTOsHistorical**](CurveApi.md#curvegetgaugeweightvotedtoshistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥 |
| [**CurveGetGaugeWithdrawDTOsHistorical**](CurveApi.md#curvegetgaugewithdrawdtoshistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥 |
| [**CurveGetGaugesDepositsHistorical**](CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical) |
| [**CurveGetGaugesHistorical**](CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) |
| [**CurveGetGaugesLiquidityHistorical**](CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical) |
| [**CurveGetGaugesTotalWeightsHistorical**](CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical) |
| [**CurveGetGaugesTypesHistorical**](CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical) |
| [**CurveGetGaugesTypesWeightsHistorical**](CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical) |
| [**CurveGetGaugesWeightsHistorical**](CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical) |
| [**CurveGetGaugesWeightsVotesHistorical**](CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical) |
| [**CurveGetGaugesWithdrawHistorical**](CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical) |
| [**CurveGetHourlyVolumeDTOsHistorical**](CurveApi.md#curvegethourlyvolumedtoshistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥 |
| [**CurveGetHourlyVolumesHistorical**](CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical) |
| [**CurveGetLpTokenDTOsHistorical**](CurveApi.md#curvegetlptokendtoshistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥 |
| [**CurveGetLpTokensHistorical**](CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical) |
| [**CurveGetPoolDTOsHistorical**](CurveApi.md#curvegetpooldtoshistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥 |
| [**CurveGetPoolsHistorical**](CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥 |
| [**CurveGetProposalDTOsHistorical**](CurveApi.md#curvegetproposaldtoshistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥 |
| [**CurveGetProposalVoteDTOsHistorical**](CurveApi.md#curvegetproposalvotedtoshistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥 |
| [**CurveGetProposalsHistorical**](CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) |
| [**CurveGetProposalsVotesHistorical**](CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical) |
| [**CurveGetRemoveLiquidityEventDTOsHistorical**](CurveApi.md#curvegetremoveliquidityeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥 |
| [**CurveGetRemoveLiquidityEventsHistorical**](CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical) |
| [**CurveGetRemoveLiquidityOneEventDTOsHistorical**](CurveApi.md#curvegetremoveliquidityoneeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥 |
| [**CurveGetRemoveLiquidityOneEventsHistorical**](CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical) |
| [**CurveGetSystemStateDTOsHistorical**](CurveApi.md#curvegetsystemstatedtoshistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥 |
| [**CurveGetSystemStatesHistorical**](CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical) |
| [**CurveGetTokenDTOsHistorical**](CurveApi.md#curvegettokendtoshistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**CurveGetTokensHistorical**](CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥 |
| [**CurveGetTransferOwnershipEventDTOsHistorical**](CurveApi.md#curvegettransferownershipeventdtoshistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥 |
| [**CurveGetTransferOwnershipEventsHistorical**](CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical) |
| [**CurveGetUnderlyingCoinDTOsHistorical**](CurveApi.md#curvegetunderlyingcoindtoshistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥 |
| [**CurveGetUnderlyingCoinsHistorical**](CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical) |
| [**CurveGetVotingAppDTOsHistorical**](CurveApi.md#curvegetvotingappdtoshistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥 |
| [**CurveGetVotingAppsHistorical**](CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical) |
| [**CurveGetWeeklyVolumeDTOsHistorical**](CurveApi.md#curvegetweeklyvolumedtoshistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥 |
| [**CurveGetWeeklyVolumesHistorical**](CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical) |

<a name="curvegetaccountdtoshistorical"></a>
# **CurveGetAccountDTOsHistorical**
> List&lt;CurveAccountDTO&gt; CurveGetAccountDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AccountDTOs (historical) 🔥

Gets AccountDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAccountDTOsHistoricalExample
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
                // AccountDTOs (historical) 🔥
                List<CurveAccountDTO> result = apiInstance.CurveGetAccountDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAccountDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAccountDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AccountDTOs (historical) 🔥
    ApiResponse<List<CurveAccountDTO>> response = apiInstance.CurveGetAccountDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAccountDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetaccountshistorical"></a>
# **CurveGetAccountsHistorical**
> List&lt;CurveAccountDTO&gt; CurveGetAccountsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Accounts (historical)

Gets accounts.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAccountsHistoricalExample
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
                // Accounts (historical)
                List<CurveAccountDTO> result = apiInstance.CurveGetAccountsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAccountsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAccountsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Accounts (historical)
    ApiResponse<List<CurveAccountDTO>> response = apiInstance.CurveGetAccountsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAccountsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAccountDTO&gt;**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetaddliquidityeventdtoshistorical"></a>
# **CurveGetAddLiquidityEventDTOsHistorical**
> List&lt;CurveAddLiquidityEventDTO&gt; CurveGetAddLiquidityEventDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AddLiquidityEventDTOs (historical) 🔥

Gets AddLiquidityEventDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAddLiquidityEventDTOsHistoricalExample
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
                // AddLiquidityEventDTOs (historical) 🔥
                List<CurveAddLiquidityEventDTO> result = apiInstance.CurveGetAddLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAddLiquidityEventDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAddLiquidityEventDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AddLiquidityEventDTOs (historical) 🔥
    ApiResponse<List<CurveAddLiquidityEventDTO>> response = apiInstance.CurveGetAddLiquidityEventDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAddLiquidityEventDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetaddliquidityeventshistorical"></a>
# **CurveGetAddLiquidityEventsHistorical**
> List&lt;CurveAddLiquidityEventDTO&gt; CurveGetAddLiquidityEventsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AddLiquidityEvents (historical)

Gets add liquidity events.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAddLiquidityEventsHistoricalExample
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
                // AddLiquidityEvents (historical)
                List<CurveAddLiquidityEventDTO> result = apiInstance.CurveGetAddLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAddLiquidityEventsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAddLiquidityEventsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AddLiquidityEvents (historical)
    ApiResponse<List<CurveAddLiquidityEventDTO>> response = apiInstance.CurveGetAddLiquidityEventsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAddLiquidityEventsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAddLiquidityEventDTO&gt;**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetadminfeechangelogdtoshistorical"></a>
# **CurveGetAdminFeeChangeLogDTOsHistorical**
> List&lt;CurveAdminFeeChangeLogDTO&gt; CurveGetAdminFeeChangeLogDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AdminFeeChangeLogDTOs (historical) 🔥

Gets AdminFeeChangeLogDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAdminFeeChangeLogDTOsHistoricalExample
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
                // AdminFeeChangeLogDTOs (historical) 🔥
                List<CurveAdminFeeChangeLogDTO> result = apiInstance.CurveGetAdminFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAdminFeeChangeLogDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAdminFeeChangeLogDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AdminFeeChangeLogDTOs (historical) 🔥
    ApiResponse<List<CurveAdminFeeChangeLogDTO>> response = apiInstance.CurveGetAdminFeeChangeLogDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAdminFeeChangeLogDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetadminfeechangelogshistorical"></a>
# **CurveGetAdminFeeChangeLogsHistorical**
> List&lt;CurveAdminFeeChangeLogDTO&gt; CurveGetAdminFeeChangeLogsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AdminFeeChangeLogs (historical)

Gets admin fee change logs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAdminFeeChangeLogsHistoricalExample
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
                // AdminFeeChangeLogs (historical)
                List<CurveAdminFeeChangeLogDTO> result = apiInstance.CurveGetAdminFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAdminFeeChangeLogsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAdminFeeChangeLogsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AdminFeeChangeLogs (historical)
    ApiResponse<List<CurveAdminFeeChangeLogDTO>> response = apiInstance.CurveGetAdminFeeChangeLogsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAdminFeeChangeLogsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAdminFeeChangeLogDTO&gt;**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetamplificationcoeffchangelogdtoshistorical"></a>
# **CurveGetAmplificationCoeffChangeLogDTOsHistorical**
> List&lt;CurveAmplificationCoeffChangeLogDTO&gt; CurveGetAmplificationCoeffChangeLogDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AmplificationCoeffChangeLogDTOs (historical) 🔥

Gets AmplificationCoeffChangeLogDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAmplificationCoeffChangeLogDTOsHistoricalExample
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
                // AmplificationCoeffChangeLogDTOs (historical) 🔥
                List<CurveAmplificationCoeffChangeLogDTO> result = apiInstance.CurveGetAmplificationCoeffChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAmplificationCoeffChangeLogDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAmplificationCoeffChangeLogDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AmplificationCoeffChangeLogDTOs (historical) 🔥
    ApiResponse<List<CurveAmplificationCoeffChangeLogDTO>> response = apiInstance.CurveGetAmplificationCoeffChangeLogDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAmplificationCoeffChangeLogDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetamplificationcoeffchangelogshistorical"></a>
# **CurveGetAmplificationCoeffChangeLogsHistorical**
> List&lt;CurveAmplificationCoeffChangeLogDTO&gt; CurveGetAmplificationCoeffChangeLogsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

AmplificationCoeffChangeLogs (historical)

Gets amplification coeff change logs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetAmplificationCoeffChangeLogsHistoricalExample
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
                // AmplificationCoeffChangeLogs (historical)
                List<CurveAmplificationCoeffChangeLogDTO> result = apiInstance.CurveGetAmplificationCoeffChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetAmplificationCoeffChangeLogsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetAmplificationCoeffChangeLogsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // AmplificationCoeffChangeLogs (historical)
    ApiResponse<List<CurveAmplificationCoeffChangeLogDTO>> response = apiInstance.CurveGetAmplificationCoeffChangeLogsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetAmplificationCoeffChangeLogsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveAmplificationCoeffChangeLogDTO&gt;**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcoindtoshistorical"></a>
# **CurveGetCoinDTOsHistorical**
> List&lt;CurveCoinDTO&gt; CurveGetCoinDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

CoinDTOs (historical) 🔥

Gets CoinDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetCoinDTOsHistoricalExample
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
                // CoinDTOs (historical) 🔥
                List<CurveCoinDTO> result = apiInstance.CurveGetCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetCoinDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetCoinDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // CoinDTOs (historical) 🔥
    ApiResponse<List<CurveCoinDTO>> response = apiInstance.CurveGetCoinDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetCoinDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcoinshistorical"></a>
# **CurveGetCoinsHistorical**
> List&lt;CurveCoinDTO&gt; CurveGetCoinsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

Coins (historical)

Gets coins.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetCoinsHistoricalExample
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
                // Coins (historical)
                List<CurveCoinDTO> result = apiInstance.CurveGetCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetCoinsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetCoinsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Coins (historical)
    ApiResponse<List<CurveCoinDTO>> response = apiInstance.CurveGetCoinsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetCoinsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveCoinDTO&gt;**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcontractdtoshistorical"></a>
# **CurveGetContractDTOsHistorical**
> List&lt;CurveContractDTO&gt; CurveGetContractDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ContractDTOs (historical) 🔥

Gets ContractDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetContractDTOsHistoricalExample
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
                // ContractDTOs (historical) 🔥
                List<CurveContractDTO> result = apiInstance.CurveGetContractDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetContractDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetContractDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ContractDTOs (historical) 🔥
    ApiResponse<List<CurveContractDTO>> response = apiInstance.CurveGetContractDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetContractDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcontractversiondtoshistorical"></a>
# **CurveGetContractVersionDTOsHistorical**
> List&lt;CurveContractVersionDTO&gt; CurveGetContractVersionDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ContractVersionDTOs (historical) 🔥

Gets ContractVersionDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetContractVersionDTOsHistoricalExample
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
                // ContractVersionDTOs (historical) 🔥
                List<CurveContractVersionDTO> result = apiInstance.CurveGetContractVersionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetContractVersionDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetContractVersionDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ContractVersionDTOs (historical) 🔥
    ApiResponse<List<CurveContractVersionDTO>> response = apiInstance.CurveGetContractVersionDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetContractVersionDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcontractshistorical"></a>
# **CurveGetContractsHistorical**
> List&lt;CurveContractDTO&gt; CurveGetContractsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

Contracts (historical)

Gets contracts.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetContractsHistoricalExample
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
                // Contracts (historical)
                List<CurveContractDTO> result = apiInstance.CurveGetContractsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetContractsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetContractsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Contracts (historical)
    ApiResponse<List<CurveContractDTO>> response = apiInstance.CurveGetContractsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetContractsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveContractDTO&gt;**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetcontractsversionshistorical"></a>
# **CurveGetContractsVersionsHistorical**
> List&lt;CurveContractVersionDTO&gt; CurveGetContractsVersionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ContractsVersions (historical)

Gets contracts versions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetContractsVersionsHistoricalExample
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
                // ContractsVersions (historical)
                List<CurveContractVersionDTO> result = apiInstance.CurveGetContractsVersionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetContractsVersionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetContractsVersionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ContractsVersions (historical)
    ApiResponse<List<CurveContractVersionDTO>> response = apiInstance.CurveGetContractsVersionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetContractsVersionsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveContractVersionDTO&gt;**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetdailyvolumedtoshistorical"></a>
# **CurveGetDailyVolumeDTOsHistorical**
> List&lt;CurveDailyVolumeDTO&gt; CurveGetDailyVolumeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

DailyVolumeDTOs (historical) 🔥

Gets DailyVolumeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetDailyVolumeDTOsHistoricalExample
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
                // DailyVolumeDTOs (historical) 🔥
                List<CurveDailyVolumeDTO> result = apiInstance.CurveGetDailyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetDailyVolumeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetDailyVolumeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // DailyVolumeDTOs (historical) 🔥
    ApiResponse<List<CurveDailyVolumeDTO>> response = apiInstance.CurveGetDailyVolumeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetDailyVolumeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetdailyvolumeshistorical"></a>
# **CurveGetDailyVolumesHistorical**
> List&lt;CurveDailyVolumeDTO&gt; CurveGetDailyVolumesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

DailyVolumes (historical)

Gets daily volumes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetDailyVolumesHistoricalExample
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
                // DailyVolumes (historical)
                List<CurveDailyVolumeDTO> result = apiInstance.CurveGetDailyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetDailyVolumesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetDailyVolumesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // DailyVolumes (historical)
    ApiResponse<List<CurveDailyVolumeDTO>> response = apiInstance.CurveGetDailyVolumesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetDailyVolumesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveDailyVolumeDTO&gt;**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetexchangedtoshistorical"></a>
# **CurveGetExchangeDTOsHistorical**
> List&lt;CurveExchangeDTO&gt; CurveGetExchangeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ExchangeDTOs (historical) 🔥

Gets ExchangeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetExchangeDTOsHistoricalExample
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
                // ExchangeDTOs (historical) 🔥
                List<CurveExchangeDTO> result = apiInstance.CurveGetExchangeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetExchangeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetExchangeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ExchangeDTOs (historical) 🔥
    ApiResponse<List<CurveExchangeDTO>> response = apiInstance.CurveGetExchangeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetExchangeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetexchangeshistorical"></a>
# **CurveGetExchangesHistorical**
> List&lt;CurveExchangeDTO&gt; CurveGetExchangesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

Exchanges (historical) 🔥

Gets exchanges.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetExchangesHistoricalExample
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
                // Exchanges (historical) 🔥
                List<CurveExchangeDTO> result = apiInstance.CurveGetExchangesHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetExchangesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetExchangesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Exchanges (historical) 🔥
    ApiResponse<List<CurveExchangeDTO>> response = apiInstance.CurveGetExchangesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetExchangesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetfeechangelogdtoshistorical"></a>
# **CurveGetFeeChangeLogDTOsHistorical**
> List&lt;CurveFeeChangeLogDTO&gt; CurveGetFeeChangeLogDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

FeeChangeLogDTOs (historical) 🔥

Gets FeeChangeLogDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetFeeChangeLogDTOsHistoricalExample
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
                // FeeChangeLogDTOs (historical) 🔥
                List<CurveFeeChangeLogDTO> result = apiInstance.CurveGetFeeChangeLogDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetFeeChangeLogDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetFeeChangeLogDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // FeeChangeLogDTOs (historical) 🔥
    ApiResponse<List<CurveFeeChangeLogDTO>> response = apiInstance.CurveGetFeeChangeLogDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetFeeChangeLogDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetfeechangelogshistorical"></a>
# **CurveGetFeeChangeLogsHistorical**
> List&lt;CurveFeeChangeLogDTO&gt; CurveGetFeeChangeLogsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

FeeChangeLogs (historical)

Gets fee change logs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetFeeChangeLogsHistoricalExample
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
                // FeeChangeLogs (historical)
                List<CurveFeeChangeLogDTO> result = apiInstance.CurveGetFeeChangeLogsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetFeeChangeLogsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetFeeChangeLogsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // FeeChangeLogs (historical)
    ApiResponse<List<CurveFeeChangeLogDTO>> response = apiInstance.CurveGetFeeChangeLogsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetFeeChangeLogsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveFeeChangeLogDTO&gt;**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugedtoshistorical"></a>
# **CurveGetGaugeDTOsHistorical**
> List&lt;CurveGaugeDTO&gt; CurveGetGaugeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeDTOs (historical) 🔥

Gets GaugeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeDTOsHistoricalExample
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
                // GaugeDTOs (historical) 🔥
                List<CurveGaugeDTO> result = apiInstance.CurveGetGaugeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeDTO>> response = apiInstance.CurveGetGaugeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugedepositdtoshistorical"></a>
# **CurveGetGaugeDepositDTOsHistorical**
> List&lt;CurveGaugeDepositDTO&gt; CurveGetGaugeDepositDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeDepositDTOs (historical) 🔥

Gets GaugeDepositDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeDepositDTOsHistoricalExample
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
                // GaugeDepositDTOs (historical) 🔥
                List<CurveGaugeDepositDTO> result = apiInstance.CurveGetGaugeDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeDepositDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeDepositDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeDepositDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeDepositDTO>> response = apiInstance.CurveGetGaugeDepositDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeDepositDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugeliquiditydtoshistorical"></a>
# **CurveGetGaugeLiquidityDTOsHistorical**
> List&lt;CurveGaugeLiquidityDTO&gt; CurveGetGaugeLiquidityDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeLiquidityDTOs (historical) 🔥

Gets GaugeLiquidityDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeLiquidityDTOsHistoricalExample
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
                // GaugeLiquidityDTOs (historical) 🔥
                List<CurveGaugeLiquidityDTO> result = apiInstance.CurveGetGaugeLiquidityDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeLiquidityDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeLiquidityDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeLiquidityDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeLiquidityDTO>> response = apiInstance.CurveGetGaugeLiquidityDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeLiquidityDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugetotalweightdtoshistorical"></a>
# **CurveGetGaugeTotalWeightDTOsHistorical**
> List&lt;CurveGaugeTotalWeightDTO&gt; CurveGetGaugeTotalWeightDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeTotalWeightDTOs (historical) 🔥

Gets GaugeTotalWeightDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeTotalWeightDTOsHistoricalExample
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
                // GaugeTotalWeightDTOs (historical) 🔥
                List<CurveGaugeTotalWeightDTO> result = apiInstance.CurveGetGaugeTotalWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeTotalWeightDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeTotalWeightDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeTotalWeightDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeTotalWeightDTO>> response = apiInstance.CurveGetGaugeTotalWeightDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeTotalWeightDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugetypedtoshistorical"></a>
# **CurveGetGaugeTypeDTOsHistorical**
> List&lt;CurveGaugeTypeDTO&gt; CurveGetGaugeTypeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeTypeDTOs (historical) 🔥

Gets GaugeTypeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeTypeDTOsHistoricalExample
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
                // GaugeTypeDTOs (historical) 🔥
                List<CurveGaugeTypeDTO> result = apiInstance.CurveGetGaugeTypeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeTypeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeTypeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeTypeDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeTypeDTO>> response = apiInstance.CurveGetGaugeTypeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeTypeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugetypeweightdtoshistorical"></a>
# **CurveGetGaugeTypeWeightDTOsHistorical**
> List&lt;CurveGaugeTypeWeightDTO&gt; CurveGetGaugeTypeWeightDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeTypeWeightDTOs (historical) 🔥

Gets GaugeTypeWeightDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeTypeWeightDTOsHistoricalExample
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
                // GaugeTypeWeightDTOs (historical) 🔥
                List<CurveGaugeTypeWeightDTO> result = apiInstance.CurveGetGaugeTypeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeTypeWeightDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeTypeWeightDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeTypeWeightDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeTypeWeightDTO>> response = apiInstance.CurveGetGaugeTypeWeightDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeTypeWeightDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugeweightdtoshistorical"></a>
# **CurveGetGaugeWeightDTOsHistorical**
> List&lt;CurveGaugeWeightDTO&gt; CurveGetGaugeWeightDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeWeightDTOs (historical) 🔥

Gets GaugeWeightDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeWeightDTOsHistoricalExample
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
                // GaugeWeightDTOs (historical) 🔥
                List<CurveGaugeWeightDTO> result = apiInstance.CurveGetGaugeWeightDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeWeightDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeWeightDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeWeightDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeWeightDTO>> response = apiInstance.CurveGetGaugeWeightDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeWeightDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugeweightvotedtoshistorical"></a>
# **CurveGetGaugeWeightVoteDTOsHistorical**
> List&lt;CurveGaugeWeightVoteDTO&gt; CurveGetGaugeWeightVoteDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeWeightVoteDTOs (historical) 🔥

Gets GaugeWeightVoteDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeWeightVoteDTOsHistoricalExample
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
                // GaugeWeightVoteDTOs (historical) 🔥
                List<CurveGaugeWeightVoteDTO> result = apiInstance.CurveGetGaugeWeightVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeWeightVoteDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeWeightVoteDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeWeightVoteDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeWeightVoteDTO>> response = apiInstance.CurveGetGaugeWeightVoteDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeWeightVoteDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugewithdrawdtoshistorical"></a>
# **CurveGetGaugeWithdrawDTOsHistorical**
> List&lt;CurveGaugeWithdrawDTO&gt; CurveGetGaugeWithdrawDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GaugeWithdrawDTOs (historical) 🔥

Gets GaugeWithdrawDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugeWithdrawDTOsHistoricalExample
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
                // GaugeWithdrawDTOs (historical) 🔥
                List<CurveGaugeWithdrawDTO> result = apiInstance.CurveGetGaugeWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugeWithdrawDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugeWithdrawDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugeWithdrawDTOs (historical) 🔥
    ApiResponse<List<CurveGaugeWithdrawDTO>> response = apiInstance.CurveGetGaugeWithdrawDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugeWithdrawDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugesdepositshistorical"></a>
# **CurveGetGaugesDepositsHistorical**
> List&lt;CurveGaugeDepositDTO&gt; CurveGetGaugesDepositsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesDeposits (historical)

Gets gauges deposits.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesDepositsHistoricalExample
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
                // GaugesDeposits (historical)
                List<CurveGaugeDepositDTO> result = apiInstance.CurveGetGaugesDepositsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesDepositsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesDepositsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesDeposits (historical)
    ApiResponse<List<CurveGaugeDepositDTO>> response = apiInstance.CurveGetGaugesDepositsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesDepositsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeDepositDTO&gt;**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugeshistorical"></a>
# **CurveGetGaugesHistorical**
> List&lt;CurveGaugeDTO&gt; CurveGetGaugesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

Gauges (historical)

Gets gauges.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesHistoricalExample
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
                // Gauges (historical)
                List<CurveGaugeDTO> result = apiInstance.CurveGetGaugesHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Gauges (historical)
    ApiResponse<List<CurveGaugeDTO>> response = apiInstance.CurveGetGaugesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeDTO&gt;**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugesliquidityhistorical"></a>
# **CurveGetGaugesLiquidityHistorical**
> List&lt;CurveGaugeLiquidityDTO&gt; CurveGetGaugesLiquidityHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesLiquidity (historical)

Gets gauges liquidity.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesLiquidityHistoricalExample
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
                // GaugesLiquidity (historical)
                List<CurveGaugeLiquidityDTO> result = apiInstance.CurveGetGaugesLiquidityHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesLiquidityHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesLiquidityHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesLiquidity (historical)
    ApiResponse<List<CurveGaugeLiquidityDTO>> response = apiInstance.CurveGetGaugesLiquidityHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesLiquidityHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeLiquidityDTO&gt;**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugestotalweightshistorical"></a>
# **CurveGetGaugesTotalWeightsHistorical**
> List&lt;CurveGaugeTotalWeightDTO&gt; CurveGetGaugesTotalWeightsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesTotalWeights (historical)

Gets gauges total weights.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesTotalWeightsHistoricalExample
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
                // GaugesTotalWeights (historical)
                List<CurveGaugeTotalWeightDTO> result = apiInstance.CurveGetGaugesTotalWeightsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesTotalWeightsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesTotalWeightsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesTotalWeights (historical)
    ApiResponse<List<CurveGaugeTotalWeightDTO>> response = apiInstance.CurveGetGaugesTotalWeightsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesTotalWeightsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTotalWeightDTO&gt;**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugestypeshistorical"></a>
# **CurveGetGaugesTypesHistorical**
> List&lt;CurveGaugeTypeDTO&gt; CurveGetGaugesTypesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesTypes (historical)

Gets gauges types.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesTypesHistoricalExample
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
                // GaugesTypes (historical)
                List<CurveGaugeTypeDTO> result = apiInstance.CurveGetGaugesTypesHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesTypesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesTypesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesTypes (historical)
    ApiResponse<List<CurveGaugeTypeDTO>> response = apiInstance.CurveGetGaugesTypesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesTypesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTypeDTO&gt;**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugestypesweightshistorical"></a>
# **CurveGetGaugesTypesWeightsHistorical**
> List&lt;CurveGaugeTypeWeightDTO&gt; CurveGetGaugesTypesWeightsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesTypesWeights (historical)

Gets gauges types weights.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesTypesWeightsHistoricalExample
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
                // GaugesTypesWeights (historical)
                List<CurveGaugeTypeWeightDTO> result = apiInstance.CurveGetGaugesTypesWeightsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesTypesWeightsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesTypesWeightsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesTypesWeights (historical)
    ApiResponse<List<CurveGaugeTypeWeightDTO>> response = apiInstance.CurveGetGaugesTypesWeightsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesTypesWeightsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeTypeWeightDTO&gt;**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugesweightshistorical"></a>
# **CurveGetGaugesWeightsHistorical**
> List&lt;CurveGaugeWeightDTO&gt; CurveGetGaugesWeightsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesWeights (historical)

Gets gauges weights.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesWeightsHistoricalExample
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
                // GaugesWeights (historical)
                List<CurveGaugeWeightDTO> result = apiInstance.CurveGetGaugesWeightsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesWeightsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesWeightsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesWeights (historical)
    ApiResponse<List<CurveGaugeWeightDTO>> response = apiInstance.CurveGetGaugesWeightsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesWeightsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWeightDTO&gt;**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugesweightsvoteshistorical"></a>
# **CurveGetGaugesWeightsVotesHistorical**
> List&lt;CurveGaugeWeightVoteDTO&gt; CurveGetGaugesWeightsVotesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesWeightsVotes (historical)

Gets gauges weights votes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesWeightsVotesHistoricalExample
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
                // GaugesWeightsVotes (historical)
                List<CurveGaugeWeightVoteDTO> result = apiInstance.CurveGetGaugesWeightsVotesHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesWeightsVotesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesWeightsVotesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesWeightsVotes (historical)
    ApiResponse<List<CurveGaugeWeightVoteDTO>> response = apiInstance.CurveGetGaugesWeightsVotesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesWeightsVotesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWeightVoteDTO&gt;**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetgaugeswithdrawhistorical"></a>
# **CurveGetGaugesWithdrawHistorical**
> List&lt;CurveGaugeWithdrawDTO&gt; CurveGetGaugesWithdrawHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

GaugesWithdraw (historical)

Gets gauges withdraws.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetGaugesWithdrawHistoricalExample
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
                // GaugesWithdraw (historical)
                List<CurveGaugeWithdrawDTO> result = apiInstance.CurveGetGaugesWithdrawHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetGaugesWithdrawHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetGaugesWithdrawHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GaugesWithdraw (historical)
    ApiResponse<List<CurveGaugeWithdrawDTO>> response = apiInstance.CurveGetGaugesWithdrawHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetGaugesWithdrawHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveGaugeWithdrawDTO&gt;**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegethourlyvolumedtoshistorical"></a>
# **CurveGetHourlyVolumeDTOsHistorical**
> List&lt;CurveHourlyVolumeDTO&gt; CurveGetHourlyVolumeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

HourlyVolumeDTOs (historical) 🔥

Gets HourlyVolumeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetHourlyVolumeDTOsHistoricalExample
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
                // HourlyVolumeDTOs (historical) 🔥
                List<CurveHourlyVolumeDTO> result = apiInstance.CurveGetHourlyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetHourlyVolumeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetHourlyVolumeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HourlyVolumeDTOs (historical) 🔥
    ApiResponse<List<CurveHourlyVolumeDTO>> response = apiInstance.CurveGetHourlyVolumeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetHourlyVolumeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegethourlyvolumeshistorical"></a>
# **CurveGetHourlyVolumesHistorical**
> List&lt;CurveHourlyVolumeDTO&gt; CurveGetHourlyVolumesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

HourlyVolumes (historical)

Gets hourly volumes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetHourlyVolumesHistoricalExample
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
                // HourlyVolumes (historical)
                List<CurveHourlyVolumeDTO> result = apiInstance.CurveGetHourlyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetHourlyVolumesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetHourlyVolumesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HourlyVolumes (historical)
    ApiResponse<List<CurveHourlyVolumeDTO>> response = apiInstance.CurveGetHourlyVolumesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetHourlyVolumesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveHourlyVolumeDTO&gt;**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetlptokendtoshistorical"></a>
# **CurveGetLpTokenDTOsHistorical**
> List&lt;CurveLpTokenDTO&gt; CurveGetLpTokenDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

LpTokenDTOs (historical) 🔥

Gets LpTokenDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetLpTokenDTOsHistoricalExample
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
                // LpTokenDTOs (historical) 🔥
                List<CurveLpTokenDTO> result = apiInstance.CurveGetLpTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetLpTokenDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetLpTokenDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LpTokenDTOs (historical) 🔥
    ApiResponse<List<CurveLpTokenDTO>> response = apiInstance.CurveGetLpTokenDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetLpTokenDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetlptokenshistorical"></a>
# **CurveGetLpTokensHistorical**
> List&lt;CurveLpTokenDTO&gt; CurveGetLpTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

LpTokens (historical)

Gets lp tokens.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetLpTokensHistoricalExample
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
                // LpTokens (historical)
                List<CurveLpTokenDTO> result = apiInstance.CurveGetLpTokensHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetLpTokensHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetLpTokensHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LpTokens (historical)
    ApiResponse<List<CurveLpTokenDTO>> response = apiInstance.CurveGetLpTokensHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetLpTokensHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveLpTokenDTO&gt;**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetpooldtoshistorical"></a>
# **CurveGetPoolDTOsHistorical**
> List&lt;CurvePoolDTO&gt; CurveGetPoolDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

PoolDTOs (historical) 🔥

Gets PoolDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetPoolDTOsHistoricalExample
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
                // PoolDTOs (historical) 🔥
                List<CurvePoolDTO> result = apiInstance.CurveGetPoolDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetPoolDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetPoolDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PoolDTOs (historical) 🔥
    ApiResponse<List<CurvePoolDTO>> response = apiInstance.CurveGetPoolDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetPoolDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetpoolshistorical"></a>
# **CurveGetPoolsHistorical**
> List&lt;CurvePoolDTO&gt; CurveGetPoolsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

Pools (historical) 🔥

Gets pools.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetPoolsHistoricalExample
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
                // Pools (historical) 🔥
                List<CurvePoolDTO> result = apiInstance.CurveGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetPoolsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetPoolsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Pools (historical) 🔥
    ApiResponse<List<CurvePoolDTO>> response = apiInstance.CurveGetPoolsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetPoolsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurvePoolDTO&gt;**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetproposaldtoshistorical"></a>
# **CurveGetProposalDTOsHistorical**
> List&lt;CurveProposalDTO&gt; CurveGetProposalDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ProposalDTOs (historical) 🔥

Gets ProposalDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetProposalDTOsHistoricalExample
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
                // ProposalDTOs (historical) 🔥
                List<CurveProposalDTO> result = apiInstance.CurveGetProposalDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetProposalDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetProposalDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ProposalDTOs (historical) 🔥
    ApiResponse<List<CurveProposalDTO>> response = apiInstance.CurveGetProposalDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetProposalDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetproposalvotedtoshistorical"></a>
# **CurveGetProposalVoteDTOsHistorical**
> List&lt;CurveProposalVoteDTO&gt; CurveGetProposalVoteDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

ProposalVoteDTOs (historical) 🔥

Gets ProposalVoteDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetProposalVoteDTOsHistoricalExample
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
                // ProposalVoteDTOs (historical) 🔥
                List<CurveProposalVoteDTO> result = apiInstance.CurveGetProposalVoteDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetProposalVoteDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetProposalVoteDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ProposalVoteDTOs (historical) 🔥
    ApiResponse<List<CurveProposalVoteDTO>> response = apiInstance.CurveGetProposalVoteDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetProposalVoteDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetproposalshistorical"></a>
# **CurveGetProposalsHistorical**
> List&lt;CurveProposalDTO&gt; CurveGetProposalsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Proposals (historical)

Gets proposals.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetProposalsHistoricalExample
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
                // Proposals (historical)
                List<CurveProposalDTO> result = apiInstance.CurveGetProposalsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetProposalsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetProposalsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Proposals (historical)
    ApiResponse<List<CurveProposalDTO>> response = apiInstance.CurveGetProposalsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetProposalsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveProposalDTO&gt;**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetproposalsvoteshistorical"></a>
# **CurveGetProposalsVotesHistorical**
> List&lt;CurveProposalVoteDTO&gt; CurveGetProposalsVotesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

ProposalsVotes (historical)

Gets proposals votes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetProposalsVotesHistoricalExample
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
                // ProposalsVotes (historical)
                List<CurveProposalVoteDTO> result = apiInstance.CurveGetProposalsVotesHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetProposalsVotesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetProposalsVotesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // ProposalsVotes (historical)
    ApiResponse<List<CurveProposalVoteDTO>> response = apiInstance.CurveGetProposalsVotesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetProposalsVotesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveProposalVoteDTO&gt;**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetremoveliquidityeventdtoshistorical"></a>
# **CurveGetRemoveLiquidityEventDTOsHistorical**
> List&lt;CurveRemoveLiquidityEventDTO&gt; CurveGetRemoveLiquidityEventDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

RemoveLiquidityEventDTOs (historical) 🔥

Gets RemoveLiquidityEventDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetRemoveLiquidityEventDTOsHistoricalExample
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
                // RemoveLiquidityEventDTOs (historical) 🔥
                List<CurveRemoveLiquidityEventDTO> result = apiInstance.CurveGetRemoveLiquidityEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityEventDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetRemoveLiquidityEventDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RemoveLiquidityEventDTOs (historical) 🔥
    ApiResponse<List<CurveRemoveLiquidityEventDTO>> response = apiInstance.CurveGetRemoveLiquidityEventDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityEventDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetremoveliquidityeventshistorical"></a>
# **CurveGetRemoveLiquidityEventsHistorical**
> List&lt;CurveRemoveLiquidityEventDTO&gt; CurveGetRemoveLiquidityEventsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

RemoveLiquidityEvents (historical)

Gets remove liquidity events.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetRemoveLiquidityEventsHistoricalExample
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
                // RemoveLiquidityEvents (historical)
                List<CurveRemoveLiquidityEventDTO> result = apiInstance.CurveGetRemoveLiquidityEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityEventsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetRemoveLiquidityEventsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RemoveLiquidityEvents (historical)
    ApiResponse<List<CurveRemoveLiquidityEventDTO>> response = apiInstance.CurveGetRemoveLiquidityEventsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityEventsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveRemoveLiquidityEventDTO&gt;**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetremoveliquidityoneeventdtoshistorical"></a>
# **CurveGetRemoveLiquidityOneEventDTOsHistorical**
> List&lt;CurveRemoveLiquidityOneEventDTO&gt; CurveGetRemoveLiquidityOneEventDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

RemoveLiquidityOneEventDTOs (historical) 🔥

Gets RemoveLiquidityOneEventDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetRemoveLiquidityOneEventDTOsHistoricalExample
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
                // RemoveLiquidityOneEventDTOs (historical) 🔥
                List<CurveRemoveLiquidityOneEventDTO> result = apiInstance.CurveGetRemoveLiquidityOneEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityOneEventDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetRemoveLiquidityOneEventDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RemoveLiquidityOneEventDTOs (historical) 🔥
    ApiResponse<List<CurveRemoveLiquidityOneEventDTO>> response = apiInstance.CurveGetRemoveLiquidityOneEventDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityOneEventDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetremoveliquidityoneeventshistorical"></a>
# **CurveGetRemoveLiquidityOneEventsHistorical**
> List&lt;CurveRemoveLiquidityOneEventDTO&gt; CurveGetRemoveLiquidityOneEventsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

RemoveLiquidityOneEvents (historical)

Gets remove liquidity one events.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetRemoveLiquidityOneEventsHistoricalExample
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
                // RemoveLiquidityOneEvents (historical)
                List<CurveRemoveLiquidityOneEventDTO> result = apiInstance.CurveGetRemoveLiquidityOneEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityOneEventsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetRemoveLiquidityOneEventsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // RemoveLiquidityOneEvents (historical)
    ApiResponse<List<CurveRemoveLiquidityOneEventDTO>> response = apiInstance.CurveGetRemoveLiquidityOneEventsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetRemoveLiquidityOneEventsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveRemoveLiquidityOneEventDTO&gt;**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetsystemstatedtoshistorical"></a>
# **CurveGetSystemStateDTOsHistorical**
> List&lt;CurveSystemStateDTO&gt; CurveGetSystemStateDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

SystemStateDTOs (historical) 🔥

Gets SystemStateDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetSystemStateDTOsHistoricalExample
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
                // SystemStateDTOs (historical) 🔥
                List<CurveSystemStateDTO> result = apiInstance.CurveGetSystemStateDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetSystemStateDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetSystemStateDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // SystemStateDTOs (historical) 🔥
    ApiResponse<List<CurveSystemStateDTO>> response = apiInstance.CurveGetSystemStateDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetSystemStateDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetsystemstateshistorical"></a>
# **CurveGetSystemStatesHistorical**
> List&lt;CurveSystemStateDTO&gt; CurveGetSystemStatesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

SystemStates (historical)

Gets system states.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetSystemStatesHistoricalExample
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
                // SystemStates (historical)
                List<CurveSystemStateDTO> result = apiInstance.CurveGetSystemStatesHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetSystemStatesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetSystemStatesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // SystemStates (historical)
    ApiResponse<List<CurveSystemStateDTO>> response = apiInstance.CurveGetSystemStatesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetSystemStatesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveSystemStateDTO&gt;**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegettokendtoshistorical"></a>
# **CurveGetTokenDTOsHistorical**
> List&lt;CurveTokenDTO&gt; CurveGetTokenDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetTokenDTOsHistoricalExample
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
                // TokenDTOs (historical) 🔥
                List<CurveTokenDTO> result = apiInstance.CurveGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetTokenDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetTokenDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TokenDTOs (historical) 🔥
    ApiResponse<List<CurveTokenDTO>> response = apiInstance.CurveGetTokenDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetTokenDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegettokenshistorical"></a>
# **CurveGetTokensHistorical**
> List&lt;CurveTokenDTO&gt; CurveGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)

Tokens (historical) 🔥

Gets tokens.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetTokensHistoricalExample
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
                // Tokens (historical) 🔥
                List<CurveTokenDTO> result = apiInstance.CurveGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetTokensHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetTokensHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (historical) 🔥
    ApiResponse<List<CurveTokenDTO>> response = apiInstance.CurveGetTokensHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetTokensHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveTokenDTO&gt;**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegettransferownershipeventdtoshistorical"></a>
# **CurveGetTransferOwnershipEventDTOsHistorical**
> List&lt;CurveTransferOwnershipEventDTO&gt; CurveGetTransferOwnershipEventDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

TransferOwnershipEventDTOs (historical) 🔥

Gets TransferOwnershipEventDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetTransferOwnershipEventDTOsHistoricalExample
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
                // TransferOwnershipEventDTOs (historical) 🔥
                List<CurveTransferOwnershipEventDTO> result = apiInstance.CurveGetTransferOwnershipEventDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetTransferOwnershipEventDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetTransferOwnershipEventDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TransferOwnershipEventDTOs (historical) 🔥
    ApiResponse<List<CurveTransferOwnershipEventDTO>> response = apiInstance.CurveGetTransferOwnershipEventDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetTransferOwnershipEventDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegettransferownershipeventshistorical"></a>
# **CurveGetTransferOwnershipEventsHistorical**
> List&lt;CurveTransferOwnershipEventDTO&gt; CurveGetTransferOwnershipEventsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

TransferOwnershipEvents (historical)

Gets transfer ownership events.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetTransferOwnershipEventsHistoricalExample
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
                // TransferOwnershipEvents (historical)
                List<CurveTransferOwnershipEventDTO> result = apiInstance.CurveGetTransferOwnershipEventsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetTransferOwnershipEventsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetTransferOwnershipEventsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TransferOwnershipEvents (historical)
    ApiResponse<List<CurveTransferOwnershipEventDTO>> response = apiInstance.CurveGetTransferOwnershipEventsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetTransferOwnershipEventsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveTransferOwnershipEventDTO&gt;**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetunderlyingcoindtoshistorical"></a>
# **CurveGetUnderlyingCoinDTOsHistorical**
> List&lt;CurveUnderlyingCoinDTO&gt; CurveGetUnderlyingCoinDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

UnderlyingCoinDTOs (historical) 🔥

Gets UnderlyingCoinDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetUnderlyingCoinDTOsHistoricalExample
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
                // UnderlyingCoinDTOs (historical) 🔥
                List<CurveUnderlyingCoinDTO> result = apiInstance.CurveGetUnderlyingCoinDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetUnderlyingCoinDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetUnderlyingCoinDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // UnderlyingCoinDTOs (historical) 🔥
    ApiResponse<List<CurveUnderlyingCoinDTO>> response = apiInstance.CurveGetUnderlyingCoinDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetUnderlyingCoinDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetunderlyingcoinshistorical"></a>
# **CurveGetUnderlyingCoinsHistorical**
> List&lt;CurveUnderlyingCoinDTO&gt; CurveGetUnderlyingCoinsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

UnderlyingCoins (historical)

Gets underlying coins.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetUnderlyingCoinsHistoricalExample
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
                // UnderlyingCoins (historical)
                List<CurveUnderlyingCoinDTO> result = apiInstance.CurveGetUnderlyingCoinsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetUnderlyingCoinsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetUnderlyingCoinsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // UnderlyingCoins (historical)
    ApiResponse<List<CurveUnderlyingCoinDTO>> response = apiInstance.CurveGetUnderlyingCoinsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetUnderlyingCoinsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveUnderlyingCoinDTO&gt;**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetvotingappdtoshistorical"></a>
# **CurveGetVotingAppDTOsHistorical**
> List&lt;CurveVotingAppDTO&gt; CurveGetVotingAppDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

VotingAppDTOs (historical) 🔥

Gets VotingAppDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetVotingAppDTOsHistoricalExample
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
                // VotingAppDTOs (historical) 🔥
                List<CurveVotingAppDTO> result = apiInstance.CurveGetVotingAppDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetVotingAppDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetVotingAppDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // VotingAppDTOs (historical) 🔥
    ApiResponse<List<CurveVotingAppDTO>> response = apiInstance.CurveGetVotingAppDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetVotingAppDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetvotingappshistorical"></a>
# **CurveGetVotingAppsHistorical**
> List&lt;CurveVotingAppDTO&gt; CurveGetVotingAppsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

VotingApps (historical)

Gets voting apps.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetVotingAppsHistoricalExample
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
                // VotingApps (historical)
                List<CurveVotingAppDTO> result = apiInstance.CurveGetVotingAppsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetVotingAppsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetVotingAppsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // VotingApps (historical)
    ApiResponse<List<CurveVotingAppDTO>> response = apiInstance.CurveGetVotingAppsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetVotingAppsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveVotingAppDTO&gt;**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetweeklyvolumedtoshistorical"></a>
# **CurveGetWeeklyVolumeDTOsHistorical**
> List&lt;CurveWeeklyVolumeDTO&gt; CurveGetWeeklyVolumeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

WeeklyVolumeDTOs (historical) 🔥

Gets WeeklyVolumeDTOs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetWeeklyVolumeDTOsHistoricalExample
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
                // WeeklyVolumeDTOs (historical) 🔥
                List<CurveWeeklyVolumeDTO> result = apiInstance.CurveGetWeeklyVolumeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetWeeklyVolumeDTOsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetWeeklyVolumeDTOsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // WeeklyVolumeDTOs (historical) 🔥
    ApiResponse<List<CurveWeeklyVolumeDTO>> response = apiInstance.CurveGetWeeklyVolumeDTOsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetWeeklyVolumeDTOsHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="curvegetweeklyvolumeshistorical"></a>
# **CurveGetWeeklyVolumesHistorical**
> List&lt;CurveWeeklyVolumeDTO&gt; CurveGetWeeklyVolumesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

WeeklyVolumes (historical)

Gets weekly volumes.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CurveGetWeeklyVolumesHistoricalExample
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
                // WeeklyVolumes (historical)
                List<CurveWeeklyVolumeDTO> result = apiInstance.CurveGetWeeklyVolumesHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling CurveApi.CurveGetWeeklyVolumesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the CurveGetWeeklyVolumesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // WeeklyVolumes (historical)
    ApiResponse<List<CurveWeeklyVolumeDTO>> response = apiInstance.CurveGetWeeklyVolumesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling CurveApi.CurveGetWeeklyVolumesHistoricalWithHttpInfo: " + e.Message);
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

[**List&lt;CurveWeeklyVolumeDTO&gt;**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

