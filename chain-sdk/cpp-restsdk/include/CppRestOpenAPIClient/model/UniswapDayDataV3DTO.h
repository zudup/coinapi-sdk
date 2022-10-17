/**
 * OnChain API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.2.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * UniswapDayDataV3DTO.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapDayDataV3DTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapDayDataV3DTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include "CppRestOpenAPIClient/model/BigInteger.h"
#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {

class BigInteger;

/// <summary>
/// 
/// </summary>
class  UniswapDayDataV3DTO
    : public ModelBase
{
public:
    UniswapDayDataV3DTO();
    virtual ~UniswapDayDataV3DTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UniswapDayDataV3DTO members

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
    /// 
    /// </summary>
    int64_t getBlockNumber() const;
    bool blockNumberIsSet() const;
    void unsetBlock_number();

    void setBlockNumber(int64_t value);

    /// <summary>
    /// 
    /// </summary>
    int64_t getVid() const;
    bool vidIsSet() const;
    void unsetVid();

    void setVid(int64_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    int32_t getDate() const;
    bool dateIsSet() const;
    void unsetdate();

    void setDate(int32_t value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getVolumeEth() const;
    bool volumeEthIsSet() const;
    void unsetVolume_eth();

    void setVolumeEth(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getVolumeUsd() const;
    bool volumeUsdIsSet() const;
    void unsetVolume_usd();

    void setVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getVolumeUsdUntracked() const;
    bool volumeUsdUntrackedIsSet() const;
    void unsetVolume_usd_untracked();

    void setVolumeUsdUntracked(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getFeesUsd() const;
    bool feesUsdIsSet() const;
    void unsetFees_usd();

    void setFeesUsd(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    std::shared_ptr<BigInteger> getTxCount() const;
    bool txCountIsSet() const;
    void unsetTx_count();

    void setTxCount(const std::shared_ptr<BigInteger>& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getTvlUsd() const;
    bool tvlUsdIsSet() const;
    void unsetTvl_usd();

    void setTvlUsd(const utility::string_t& value);


protected:
    utility::datetime m_Entry_time;
    bool m_Entry_timeIsSet;
    utility::datetime m_Recv_time;
    bool m_Recv_timeIsSet;
    int64_t m_Block_number;
    bool m_Block_numberIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
    utility::string_t m_Id;
    bool m_IdIsSet;
    int32_t m_date;
    bool m_dateIsSet;
    utility::string_t m_Volume_eth;
    bool m_Volume_ethIsSet;
    utility::string_t m_Volume_usd;
    bool m_Volume_usdIsSet;
    utility::string_t m_Volume_usd_untracked;
    bool m_Volume_usd_untrackedIsSet;
    utility::string_t m_Fees_usd;
    bool m_Fees_usdIsSet;
    std::shared_ptr<BigInteger> m_Tx_count;
    bool m_Tx_countIsSet;
    utility::string_t m_Tvl_usd;
    bool m_Tvl_usdIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapDayDataV3DTO_H_ */
