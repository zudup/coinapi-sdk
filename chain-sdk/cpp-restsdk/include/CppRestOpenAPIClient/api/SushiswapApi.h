/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.2.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * SushiswapApi.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_API_SushiswapApi_H_
#define ORG_OPENAPITOOLS_CLIENT_API_SushiswapApi_H_



#include "CppRestOpenAPIClient/ApiClient.h"

#include "CppRestOpenAPIClient/model/PairDTO.h"
#include "CppRestOpenAPIClient/model/SwapDTO.h"
#include "CppRestOpenAPIClient/model/TokenDTO.h"
#include <cpprest/details/basic_types.h>
#include <boost/optional.hpp>

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;



class  SushiswapApi 
{
public:

    explicit SushiswapApi( std::shared_ptr<const ApiClient> apiClient );

    virtual ~SushiswapApi();

    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapBundlesHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapBurnsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapDayDataHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapFactoryHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapHourDataHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapLiquidityPositionHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapMintsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapPoolDayDataHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapPoolHourDataHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// GetPools
    /// </summary>
    /// <remarks>
    /// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<PairDTO>>> dappsSushiswapPoolsCurrentGet(
    ) const;
    /// <summary>
    /// GetPools (historical)
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<PairDTO>>> dappsSushiswapPoolsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// GetSwaps
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<SwapDTO>>> dappsSushiswapSwapsCurrentGet(
    ) const;
    /// <summary>
    /// GetSwaps (historical)
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="poolId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<SwapDTO>>> dappsSushiswapSwapsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> poolId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="tokenId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<void> dappsSushiswapTokenDayDataHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> tokenId
    ) const;
    /// <summary>
    /// GetTokens
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    pplx::task<std::vector<std::shared_ptr<TokenDTO>>> dappsSushiswapTokensCurrentGet(
    ) const;
    /// <summary>
    /// GetTokens (historical)
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    /// <param name="tokenId"> (optional, default to utility::conversions::to_string_t(&quot;&quot;))</param>
    pplx::task<std::vector<std::shared_ptr<TokenDTO>>> dappsSushiswapTokensHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate,
        boost::optional<utility::string_t> tokenId
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapTransactionsHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;
    /// <summary>
    /// 
    /// </summary>
    /// <remarks>
    /// 
    /// </remarks>
    /// <param name="startBlock"> (optional, default to 0L)</param>
    /// <param name="endBlock"> (optional, default to 0L)</param>
    /// <param name="startDate"> (optional, default to utility::datetime())</param>
    /// <param name="endDate"> (optional, default to utility::datetime())</param>
    pplx::task<void> dappsSushiswapUsersHistoricalGet(
        boost::optional<int64_t> startBlock,
        boost::optional<int64_t> endBlock,
        boost::optional<utility::datetime> startDate,
        boost::optional<utility::datetime> endDate
    ) const;

protected:
    std::shared_ptr<const ApiClient> m_ApiClient;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_API_SushiswapApi_H_ */

