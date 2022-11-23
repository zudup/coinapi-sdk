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
 * UniswapV3_FactoryDTO.h
 *
 * The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_FactoryDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_FactoryDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// The Uniswap Factory entity is responsible for storing aggregate information across all Uniswap pairs. It can be used to view stats about total liquidity, volume, amount of pairs and more.
/// </summary>
class  UniswapV3_FactoryDTO
    : public ModelBase
{
public:
    UniswapV3_FactoryDTO();
    virtual ~UniswapV3_FactoryDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// UniswapV3_FactoryDTO members

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
    /// Factory address.
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// Amount of pools created.
    /// </summary>
    utility::string_t getPoolCount() const;
    bool poolCountIsSet() const;
    void unsetPool_count();

    void setPoolCount(const utility::string_t& value);

    /// <summary>
    /// Amount of transactions all time.
    /// </summary>
    utility::string_t getTxCount() const;
    bool txCountIsSet() const;
    void unsetTx_count();

    void setTxCount(const utility::string_t& value);

    /// <summary>
    /// Total volume all time in derived USD.
    /// </summary>
    utility::string_t getTotalVolumeUsd() const;
    bool totalVolumeUsdIsSet() const;
    void unsetTotal_volume_usd();

    void setTotalVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Total volume all time in derived ETH.
    /// </summary>
    utility::string_t getTotalVolumeEth() const;
    bool totalVolumeEthIsSet() const;
    void unsetTotal_volume_eth();

    void setTotalVolumeEth(const utility::string_t& value);

    /// <summary>
    /// Total swap fees all time in USD.
    /// </summary>
    utility::string_t getTotalFeesUsd() const;
    bool totalFeesUsdIsSet() const;
    void unsetTotal_fees_usd();

    void setTotalFeesUsd(const utility::string_t& value);

    /// <summary>
    /// All volume even through less reliable USD values.
    /// </summary>
    utility::string_t getTotalFeesEth() const;
    bool totalFeesEthIsSet() const;
    void unsetTotal_fees_eth();

    void setTotalFeesEth(const utility::string_t& value);

    /// <summary>
    /// All volume even through less reliable USD values.
    /// </summary>
    utility::string_t getUntrackedVolumeUsd() const;
    bool untrackedVolumeUsdIsSet() const;
    void unsetUntracked_volume_usd();

    void setUntrackedVolumeUsd(const utility::string_t& value);

    /// <summary>
    /// Total value locked derived in USD.
    /// </summary>
    utility::string_t getTotalValueLockedUsd() const;
    bool totalValueLockedUsdIsSet() const;
    void unsetTotal_value_locked_usd();

    void setTotalValueLockedUsd(const utility::string_t& value);

    /// <summary>
    /// Total value locked derived in ETH.
    /// </summary>
    utility::string_t getTotalValueLockedEth() const;
    bool totalValueLockedEthIsSet() const;
    void unsetTotal_value_locked_eth();

    void setTotalValueLockedEth(const utility::string_t& value);

    /// <summary>
    /// Total value locked derived in USD untracked.
    /// </summary>
    utility::string_t getTotalValueLockedUsdUntracked() const;
    bool totalValueLockedUsdUntrackedIsSet() const;
    void unsetTotal_value_locked_usd_untracked();

    void setTotalValueLockedUsdUntracked(const utility::string_t& value);

    /// <summary>
    /// Total value locked derived in ETH untracked.
    /// </summary>
    utility::string_t getTotalValueLockedEthUntracked() const;
    bool totalValueLockedEthUntrackedIsSet() const;
    void unsetTotal_value_locked_eth_untracked();

    void setTotalValueLockedEthUntracked(const utility::string_t& value);

    /// <summary>
    /// Current owner of the factory.
    /// </summary>
    utility::string_t getOwner() const;
    bool ownerIsSet() const;
    void unsetOwner();

    void setOwner(const utility::string_t& value);

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
    utility::string_t m_Pool_count;
    bool m_Pool_countIsSet;
    utility::string_t m_Tx_count;
    bool m_Tx_countIsSet;
    utility::string_t m_Total_volume_usd;
    bool m_Total_volume_usdIsSet;
    utility::string_t m_Total_volume_eth;
    bool m_Total_volume_ethIsSet;
    utility::string_t m_Total_fees_usd;
    bool m_Total_fees_usdIsSet;
    utility::string_t m_Total_fees_eth;
    bool m_Total_fees_ethIsSet;
    utility::string_t m_Untracked_volume_usd;
    bool m_Untracked_volume_usdIsSet;
    utility::string_t m_Total_value_locked_usd;
    bool m_Total_value_locked_usdIsSet;
    utility::string_t m_Total_value_locked_eth;
    bool m_Total_value_locked_ethIsSet;
    utility::string_t m_Total_value_locked_usd_untracked;
    bool m_Total_value_locked_usd_untrackedIsSet;
    utility::string_t m_Total_value_locked_eth_untracked;
    bool m_Total_value_locked_eth_untrackedIsSet;
    utility::string_t m_Owner;
    bool m_OwnerIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_UniswapV3_FactoryDTO_H_ */
