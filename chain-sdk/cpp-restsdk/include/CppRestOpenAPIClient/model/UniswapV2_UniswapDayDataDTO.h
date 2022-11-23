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
 * UniswapV2_UniswapDayDataDTO.h
 *
 * Tracks data across all pairs aggregated into a daily bucket.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_UniswapDayDataDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_UniswapDayDataDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// Tracks data across all pairs aggregated into a daily bucket.
/// </summary>
class  UniswapV2_UniswapDayDataDTO
    : public ModelBase
{
public:
    UniswapV2_UniswapDayDataDTO();
    virtual ~UniswapV2_UniswapDayDataDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UniswapV2_UniswapDayDataDTO members

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
    /// Unix timestamp for start of day / 86400 giving a unique day index.
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
    /// Total volume across all pairs on this day, stored as a derived amount of ETH.
    /// </summary>
    utility::string_t getDailyVolumeEth() const;
    bool dailyVolumeEthIsSet() const;
    void unsetDaily_volume_eth();

    void setDailyVolumeEth(const utility::string_t& value);

    /// <summary>
    /// Total volume across all pairs on this day, stored as a derived amount of USD.
    /// </summary>
    utility::string_t getDailyVolumeUsd() const;
    bool dailyVolumeUsdIsSet() const;
    void unsetDaily_volume_usd();

    void setDailyVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Total volume across all pairs on this day, untracked.
    /// </summary>
    utility::string_t getDailyVolumeUntracked() const;
    bool dailyVolumeUntrackedIsSet() const;
    void unsetDaily_volume_untracked();

    void setDailyVolumeUntracked(const utility::string_t& value);

    /// <summary>
    /// All time volume across all pairs in ETH up to and including this day.
    /// </summary>
    utility::string_t getTotalVolumeEth() const;
    bool totalVolumeEthIsSet() const;
    void unsetTotal_volume_eth();

    void setTotalVolumeEth(const utility::string_t& value);

    /// <summary>
    /// Total liquidity across all pairs in ETH up to and including this day.
    /// </summary>
    utility::string_t getTotalLiquidityEth() const;
    bool totalLiquidityEthIsSet() const;
    void unsetTotal_liquidity_eth();

    void setTotalLiquidityEth(const utility::string_t& value);

    /// <summary>
    /// All time volume across all pairs in USD up to and including this day.
    /// </summary>
    utility::string_t getTotalVolumeUsd() const;
    bool totalVolumeUsdIsSet() const;
    void unsetTotal_volume_usd();

    void setTotalVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Total liquidity across all pairs in USD up to and including this day.
    /// </summary>
    utility::string_t getTotalLiquidityUsd() const;
    bool totalLiquidityUsdIsSet() const;
    void unsetTotal_liquidity_usd();

    void setTotalLiquidityUsd(const utility::string_t& value);

    /// <summary>
    /// Number of transactions throughout this day.
    /// </summary>
    utility::string_t getTxCount() const;
    bool txCountIsSet() const;
    void unsetTx_count();

    void setTxCount(const utility::string_t& value);

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
    utility::string_t m_Daily_volume_eth;
    bool m_Daily_volume_ethIsSet;
    utility::string_t m_Daily_volume_usd;
    bool m_Daily_volume_usdIsSet;
    utility::string_t m_Daily_volume_untracked;
    bool m_Daily_volume_untrackedIsSet;
    utility::string_t m_Total_volume_eth;
    bool m_Total_volume_ethIsSet;
    utility::string_t m_Total_liquidity_eth;
    bool m_Total_liquidity_ethIsSet;
    utility::string_t m_Total_volume_usd;
    bool m_Total_volume_usdIsSet;
    utility::string_t m_Total_liquidity_usd;
    bool m_Total_liquidity_usdIsSet;
    utility::string_t m_Tx_count;
    bool m_Tx_countIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV2_UniswapDayDataDTO_H_ */
