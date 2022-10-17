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



#include "CppRestOpenAPIClient/model/UniswapDayDataV3DTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UniswapDayDataV3DTO::UniswapDayDataV3DTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_date = 0;
    m_dateIsSet = false;
    m_Volume_eth = utility::conversions::to_string_t("");
    m_Volume_ethIsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Volume_usd_untracked = utility::conversions::to_string_t("");
    m_Volume_usd_untrackedIsSet = false;
    m_Fees_usd = utility::conversions::to_string_t("");
    m_Fees_usdIsSet = false;
    m_Tx_countIsSet = false;
    m_Tvl_usd = utility::conversions::to_string_t("");
    m_Tvl_usdIsSet = false;
}

UniswapDayDataV3DTO::~UniswapDayDataV3DTO()
{
}

void UniswapDayDataV3DTO::validate()
{
    // TODO: implement validation
}

web::json::value UniswapDayDataV3DTO::toJson() const
{

    web::json::value val = web::json::value::object();
    
    if(m_Entry_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("entry_time"))] = ModelBase::toJson(m_Entry_time);
    }
    if(m_Recv_timeIsSet)
    {
        val[utility::conversions::to_string_t(U("recv_time"))] = ModelBase::toJson(m_Recv_time);
    }
    if(m_Block_numberIsSet)
    {
        val[utility::conversions::to_string_t(U("block_number"))] = ModelBase::toJson(m_Block_number);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_dateIsSet)
    {
        val[utility::conversions::to_string_t(U("date"))] = ModelBase::toJson(m_date);
    }
    if(m_Volume_ethIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_eth"))] = ModelBase::toJson(m_Volume_eth);
    }
    if(m_Volume_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_usd"))] = ModelBase::toJson(m_Volume_usd);
    }
    if(m_Volume_usd_untrackedIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_usd_untracked"))] = ModelBase::toJson(m_Volume_usd_untracked);
    }
    if(m_Fees_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("fees_usd"))] = ModelBase::toJson(m_Fees_usd);
    }
    if(m_Tx_countIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_count"))] = ModelBase::toJson(m_Tx_count);
    }
    if(m_Tvl_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("tvl_usd"))] = ModelBase::toJson(m_Tvl_usd);
    }

    return val;
}

bool UniswapDayDataV3DTO::fromJson(const web::json::value& val)
{
    bool ok = true;
    
    if(val.has_field(utility::conversions::to_string_t(U("entry_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("entry_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setEntryTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setEntryTime);
            setEntryTime(refVal_setEntryTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("recv_time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("recv_time")));
        if(!fieldValue.is_null())
        {
            utility::datetime refVal_setRecvTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setRecvTime);
            setRecvTime(refVal_setRecvTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("block_number"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("block_number")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setBlockNumber;
            ok &= ModelBase::fromJson(fieldValue, refVal_setBlockNumber);
            setBlockNumber(refVal_setBlockNumber);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("vid"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("vid")));
        if(!fieldValue.is_null())
        {
            int64_t refVal_setVid;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVid);
            setVid(refVal_setVid);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setId);
            setId(refVal_setId);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("date"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("date")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setDate;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDate);
            setDate(refVal_setDate);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume_eth"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume_eth")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolumeEth;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolumeEth);
            setVolumeEth(refVal_setVolumeEth);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolumeUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolumeUsd);
            setVolumeUsd(refVal_setVolumeUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume_usd_untracked"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume_usd_untracked")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolumeUsdUntracked;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolumeUsdUntracked);
            setVolumeUsdUntracked(refVal_setVolumeUsdUntracked);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("fees_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fees_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFeesUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFeesUsd);
            setFeesUsd(refVal_setFeesUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tx_count"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tx_count")));
        if(!fieldValue.is_null())
        {
            std::shared_ptr<BigInteger> refVal_setTxCount;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTxCount);
            setTxCount(refVal_setTxCount);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tvl_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tvl_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTvlUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTvlUsd);
            setTvlUsd(refVal_setTvlUsd);
        }
    }
    return ok;
}

void UniswapDayDataV3DTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
{
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }
    if(m_Entry_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("entry_time")), m_Entry_time));
    }
    if(m_Recv_timeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("recv_time")), m_Recv_time));
    }
    if(m_Block_numberIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("block_number")), m_Block_number));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_dateIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("date")), m_date));
    }
    if(m_Volume_ethIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_eth")), m_Volume_eth));
    }
    if(m_Volume_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_usd")), m_Volume_usd));
    }
    if(m_Volume_usd_untrackedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_usd_untracked")), m_Volume_usd_untracked));
    }
    if(m_Fees_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fees_usd")), m_Fees_usd));
    }
    if(m_Tx_countIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_count")), m_Tx_count));
    }
    if(m_Tvl_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tvl_usd")), m_Tvl_usd));
    }
}

bool UniswapDayDataV3DTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
{
    bool ok = true;
    utility::string_t namePrefix = prefix;
    if(namePrefix.size() > 0 && namePrefix.substr(namePrefix.size() - 1) != utility::conversions::to_string_t(U(".")))
    {
        namePrefix += utility::conversions::to_string_t(U("."));
    }

    if(multipart->hasContent(utility::conversions::to_string_t(U("entry_time"))))
    {
        utility::datetime refVal_setEntryTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("entry_time"))), refVal_setEntryTime );
        setEntryTime(refVal_setEntryTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("recv_time"))))
    {
        utility::datetime refVal_setRecvTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("recv_time"))), refVal_setRecvTime );
        setRecvTime(refVal_setRecvTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("block_number"))))
    {
        int64_t refVal_setBlockNumber;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("block_number"))), refVal_setBlockNumber );
        setBlockNumber(refVal_setBlockNumber);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("id"))))
    {
        utility::string_t refVal_setId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("id"))), refVal_setId );
        setId(refVal_setId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("date"))))
    {
        int32_t refVal_setDate;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("date"))), refVal_setDate );
        setDate(refVal_setDate);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_eth"))))
    {
        utility::string_t refVal_setVolumeEth;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_eth"))), refVal_setVolumeEth );
        setVolumeEth(refVal_setVolumeEth);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_usd"))))
    {
        utility::string_t refVal_setVolumeUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_usd"))), refVal_setVolumeUsd );
        setVolumeUsd(refVal_setVolumeUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_usd_untracked"))))
    {
        utility::string_t refVal_setVolumeUsdUntracked;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_usd_untracked"))), refVal_setVolumeUsdUntracked );
        setVolumeUsdUntracked(refVal_setVolumeUsdUntracked);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fees_usd"))))
    {
        utility::string_t refVal_setFeesUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fees_usd"))), refVal_setFeesUsd );
        setFeesUsd(refVal_setFeesUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_count"))))
    {
        std::shared_ptr<BigInteger> refVal_setTxCount;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_count"))), refVal_setTxCount );
        setTxCount(refVal_setTxCount);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tvl_usd"))))
    {
        utility::string_t refVal_setTvlUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tvl_usd"))), refVal_setTvlUsd );
        setTvlUsd(refVal_setTvlUsd);
    }
    return ok;
}

utility::datetime UniswapDayDataV3DTO::getEntryTime() const
{
    return m_Entry_time;
}

void UniswapDayDataV3DTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UniswapDayDataV3DTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UniswapDayDataV3DTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UniswapDayDataV3DTO::getRecvTime() const
{
    return m_Recv_time;
}

void UniswapDayDataV3DTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UniswapDayDataV3DTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UniswapDayDataV3DTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UniswapDayDataV3DTO::getBlockNumber() const
{
    return m_Block_number;
}

void UniswapDayDataV3DTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UniswapDayDataV3DTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UniswapDayDataV3DTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
int64_t UniswapDayDataV3DTO::getVid() const
{
    return m_Vid;
}

void UniswapDayDataV3DTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UniswapDayDataV3DTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UniswapDayDataV3DTO::unsetVid()
{
    m_VidIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getId() const
{
    return m_Id;
}

void UniswapDayDataV3DTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UniswapDayDataV3DTO::idIsSet() const
{
    return m_IdIsSet;
}

void UniswapDayDataV3DTO::unsetId()
{
    m_IdIsSet = false;
}
int32_t UniswapDayDataV3DTO::getDate() const
{
    return m_date;
}

void UniswapDayDataV3DTO::setDate(int32_t value)
{
    m_date = value;
    m_dateIsSet = true;
}

bool UniswapDayDataV3DTO::dateIsSet() const
{
    return m_dateIsSet;
}

void UniswapDayDataV3DTO::unsetdate()
{
    m_dateIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getVolumeEth() const
{
    return m_Volume_eth;
}

void UniswapDayDataV3DTO::setVolumeEth(const utility::string_t& value)
{
    m_Volume_eth = value;
    m_Volume_ethIsSet = true;
}

bool UniswapDayDataV3DTO::volumeEthIsSet() const
{
    return m_Volume_ethIsSet;
}

void UniswapDayDataV3DTO::unsetVolume_eth()
{
    m_Volume_ethIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void UniswapDayDataV3DTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool UniswapDayDataV3DTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void UniswapDayDataV3DTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getVolumeUsdUntracked() const
{
    return m_Volume_usd_untracked;
}

void UniswapDayDataV3DTO::setVolumeUsdUntracked(const utility::string_t& value)
{
    m_Volume_usd_untracked = value;
    m_Volume_usd_untrackedIsSet = true;
}

bool UniswapDayDataV3DTO::volumeUsdUntrackedIsSet() const
{
    return m_Volume_usd_untrackedIsSet;
}

void UniswapDayDataV3DTO::unsetVolume_usd_untracked()
{
    m_Volume_usd_untrackedIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getFeesUsd() const
{
    return m_Fees_usd;
}

void UniswapDayDataV3DTO::setFeesUsd(const utility::string_t& value)
{
    m_Fees_usd = value;
    m_Fees_usdIsSet = true;
}

bool UniswapDayDataV3DTO::feesUsdIsSet() const
{
    return m_Fees_usdIsSet;
}

void UniswapDayDataV3DTO::unsetFees_usd()
{
    m_Fees_usdIsSet = false;
}
std::shared_ptr<BigInteger> UniswapDayDataV3DTO::getTxCount() const
{
    return m_Tx_count;
}

void UniswapDayDataV3DTO::setTxCount(const std::shared_ptr<BigInteger>& value)
{
    m_Tx_count = value;
    m_Tx_countIsSet = true;
}

bool UniswapDayDataV3DTO::txCountIsSet() const
{
    return m_Tx_countIsSet;
}

void UniswapDayDataV3DTO::unsetTx_count()
{
    m_Tx_countIsSet = false;
}
utility::string_t UniswapDayDataV3DTO::getTvlUsd() const
{
    return m_Tvl_usd;
}

void UniswapDayDataV3DTO::setTvlUsd(const utility::string_t& value)
{
    m_Tvl_usd = value;
    m_Tvl_usdIsSet = true;
}

bool UniswapDayDataV3DTO::tvlUsdIsSet() const
{
    return m_Tvl_usdIsSet;
}

void UniswapDayDataV3DTO::unsetTvl_usd()
{
    m_Tvl_usdIsSet = false;
}
}
}
}
}


