/**
 * On Chain - REST API
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
 * UniswapV2_TokenDayDataDTO.h
 *
 * Token data aggregated across all pairs that include token.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_TokenDayDataDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_TokenDayDataDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// Token data aggregated across all pairs that include token.
/// </summary>
class  UniswapV2_TokenDayDataDTO
    : public ModelBase
{
public:
    UniswapV2_TokenDayDataDTO();
    virtual ~UniswapV2_TokenDayDataDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UniswapV2_TokenDayDataDTO members

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getEntryTime() const;
    bool entryTimeIsSet() const;
    void unsetEntry_time();

    void setEntryTime(const utility::datetime& value);

    /// <summary>
    /// 
    /// </summary>
    utility::datetime getRecvTime() const;
    bool recvTimeIsSet() const;
    void unsetRecv_time();

    void setRecvTime(const utility::datetime& value);

    /// <summary>
    /// Number of block in which entity was recorded.
    /// </summary>
    int64_t getBlockNumber() const;
    bool blockNumberIsSet() const;
    void unsetBlock_number();

    void setBlockNumber(int64_t value);

    /// <summary>
    /// Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Unix timestamp for start of day.
    /// </summary>
    int32_t getDate() const;
    bool dateIsSet() const;
    void unsetdate();

    void setDate(int32_t value);

    /// <summary>
    /// Reference to token entity.
    /// </summary>
    utility::string_t getToken() const;
    bool tokenIsSet() const;
    void unsetToken();

    void setToken(const utility::string_t& value);

    /// <summary>
    /// Amount of token swapped across all pairs throughout day.
    /// </summary>
    utility::string_t getDailyVolumeToken() const;
    bool dailyVolumeTokenIsSet() const;
    void unsetDaily_volume_token();

    void setDailyVolumeToken(const utility::string_t& value);

    /// <summary>
    /// Amount of token swapped across all pairs throughout day stored as a derived amount of ETH.
    /// </summary>
    utility::string_t getDailyVolumeEth() const;
    bool dailyVolumeEthIsSet() const;
    void unsetDaily_volume_eth();

    void setDailyVolumeEth(const utility::string_t& value);

    /// <summary>
    /// Amount of token swapped across all pairs throughout day stored as a derived amount of USD.
    /// </summary>
    utility::string_t getDailyVolumeUsd() const;
    bool dailyVolumeUsdIsSet() const;
    void unsetDaily_volume_usd();

    void setDailyVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Amount of transactions with this token across all pairs.
    /// </summary>
    utility::string_t getDailyTxns() const;
    bool dailyTxnsIsSet() const;
    void unsetDaily_txns();

    void setDailyTxns(const utility::string_t& value);

    /// <summary>
    /// Token amount of token deposited across all pairs.
    /// </summary>
    utility::string_t getTotalLiquidityToken() const;
    bool totalLiquidityTokenIsSet() const;
    void unsetTotal_liquidity_token();

    void setTotalLiquidityToken(const utility::string_t& value);

    /// <summary>
    /// Token amount of token deposited across all pairs stored as amount of ETH.
    /// </summary>
    utility::string_t getTotalLiquidityEth() const;
    bool totalLiquidityEthIsSet() const;
    void unsetTotal_liquidity_eth();

    void setTotalLiquidityEth(const utility::string_t& value);

    /// <summary>
    /// Token amount of token deposited across all pairs stored as amount of USD.
    /// </summary>
    utility::string_t getTotalLiquidityUsd() const;
    bool totalLiquidityUsdIsSet() const;
    void unsetTotal_liquidity_usd();

    void setTotalLiquidityUsd(const utility::string_t& value);

    /// <summary>
    /// Price of token in derived USD.
    /// </summary>
    utility::string_t getPriceUsd() const;
    bool priceUsdIsSet() const;
    void unsetPrice_usd();

    void setPriceUsd(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int64_t getVid() const;
    bool vidIsSet() const;
    void unsetVid();

    void setVid(int64_t value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    int32_t m_date;
    bool m_dateIsSet;
    utility::string_t m_Token;
    bool m_TokenIsSet;
    utility::string_t m_Daily_volume_token;
    bool m_Daily_volume_tokenIsSet;
    utility::string_t m_Daily_volume_eth;
    bool m_Daily_volume_ethIsSet;
    utility::string_t m_Daily_volume_usd;
    bool m_Daily_volume_usdIsSet;
    utility::string_t m_Daily_txns;
    bool m_Daily_txnsIsSet;
    utility::string_t m_Total_liquidity_token;
    bool m_Total_liquidity_tokenIsSet;
    utility::string_t m_Total_liquidity_eth;
    bool m_Total_liquidity_ethIsSet;
    utility::string_t m_Total_liquidity_usd;
    bool m_Total_liquidity_usdIsSet;
    utility::string_t m_Price_usd;
    bool m_Price_usdIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_TokenDayDataDTO_H_ */
