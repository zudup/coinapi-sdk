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



#include "CppRestOpenAPIClient/model/Sushiswap_DayDataDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Sushiswap_DayDataDTO::Sushiswap_DayDataDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_date = 0;
    m_dateIsSet = false;
    m_Factory = utility::conversions::to_string_t("");
    m_FactoryIsSet = false;
    m_Volume_eth = utility::conversions::to_string_t("");
    m_Volume_ethIsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Untracked_volume = utility::conversions::to_string_t("");
    m_Untracked_volumeIsSet = false;
    m_Liquidity_eth = utility::conversions::to_string_t("");
    m_Liquidity_ethIsSet = false;
    m_Liquidity_usd = utility::conversions::to_string_t("");
    m_Liquidity_usdIsSet = false;
    m_Tx_count = utility::conversions::to_string_t("");
    m_Tx_countIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

Sushiswap_DayDataDTO::~Sushiswap_DayDataDTO()
{
}

void Sushiswap_DayDataDTO::validate()
{
    // TODO: implement validation
}

web::json::value Sushiswap_DayDataDTO::toJson() const
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
    if(m_IdIsSet)
    {
        val[utility::conversions::to_string_t(U("id"))] = ModelBase::toJson(m_Id);
    }
    if(m_dateIsSet)
    {
        val[utility::conversions::to_string_t(U("date"))] = ModelBase::toJson(m_date);
    }
    if(m_FactoryIsSet)
    {
        val[utility::conversions::to_string_t(U("factory"))] = ModelBase::toJson(m_Factory);
    }
    if(m_Volume_ethIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_eth"))] = ModelBase::toJson(m_Volume_eth);
    }
    if(m_Volume_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_usd"))] = ModelBase::toJson(m_Volume_usd);
    }
    if(m_Untracked_volumeIsSet)
    {
        val[utility::conversions::to_string_t(U("untracked_volume"))] = ModelBase::toJson(m_Untracked_volume);
    }
    if(m_Liquidity_ethIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_eth"))] = ModelBase::toJson(m_Liquidity_eth);
    }
    if(m_Liquidity_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_usd"))] = ModelBase::toJson(m_Liquidity_usd);
    }
    if(m_Tx_countIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_count"))] = ModelBase::toJson(m_Tx_count);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool Sushiswap_DayDataDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("factory"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("factory")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFactory;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFactory);
            setFactory(refVal_setFactory);
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
    if(val.has_field(utility::conversions::to_string_t(U("untracked_volume"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("untracked_volume")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setUntrackedVolume;
            ok &= ModelBase::fromJson(fieldValue, refVal_setUntrackedVolume);
            setUntrackedVolume(refVal_setUntrackedVolume);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_eth"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_eth")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityEth;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityEth);
            setLiquidityEth(refVal_setLiquidityEth);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityUsd);
            setLiquidityUsd(refVal_setLiquidityUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tx_count"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tx_count")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTxCount;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTxCount);
            setTxCount(refVal_setTxCount);
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
    return ok;
}

void Sushiswap_DayDataDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_IdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("id")), m_Id));
    }
    if(m_dateIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("date")), m_date));
    }
    if(m_FactoryIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("factory")), m_Factory));
    }
    if(m_Volume_ethIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_eth")), m_Volume_eth));
    }
    if(m_Volume_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_usd")), m_Volume_usd));
    }
    if(m_Untracked_volumeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("untracked_volume")), m_Untracked_volume));
    }
    if(m_Liquidity_ethIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_eth")), m_Liquidity_eth));
    }
    if(m_Liquidity_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_usd")), m_Liquidity_usd));
    }
    if(m_Tx_countIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_count")), m_Tx_count));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool Sushiswap_DayDataDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("factory"))))
    {
        utility::string_t refVal_setFactory;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("factory"))), refVal_setFactory );
        setFactory(refVal_setFactory);
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("untracked_volume"))))
    {
        utility::string_t refVal_setUntrackedVolume;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("untracked_volume"))), refVal_setUntrackedVolume );
        setUntrackedVolume(refVal_setUntrackedVolume);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_eth"))))
    {
        utility::string_t refVal_setLiquidityEth;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_eth"))), refVal_setLiquidityEth );
        setLiquidityEth(refVal_setLiquidityEth);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_usd"))))
    {
        utility::string_t refVal_setLiquidityUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_usd"))), refVal_setLiquidityUsd );
        setLiquidityUsd(refVal_setLiquidityUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_count"))))
    {
        utility::string_t refVal_setTxCount;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_count"))), refVal_setTxCount );
        setTxCount(refVal_setTxCount);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime Sushiswap_DayDataDTO::getEntryTime() const
{
    return m_Entry_time;
}

void Sushiswap_DayDataDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool Sushiswap_DayDataDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void Sushiswap_DayDataDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime Sushiswap_DayDataDTO::getRecvTime() const
{
    return m_Recv_time;
}

void Sushiswap_DayDataDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool Sushiswap_DayDataDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void Sushiswap_DayDataDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t Sushiswap_DayDataDTO::getBlockNumber() const
{
    return m_Block_number;
}

void Sushiswap_DayDataDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool Sushiswap_DayDataDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void Sushiswap_DayDataDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getId() const
{
    return m_Id;
}

void Sushiswap_DayDataDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool Sushiswap_DayDataDTO::idIsSet() const
{
    return m_IdIsSet;
}

void Sushiswap_DayDataDTO::unsetId()
{
    m_IdIsSet = false;
}
int32_t Sushiswap_DayDataDTO::getDate() const
{
    return m_date;
}

void Sushiswap_DayDataDTO::setDate(int32_t value)
{
    m_date = value;
    m_dateIsSet = true;
}

bool Sushiswap_DayDataDTO::dateIsSet() const
{
    return m_dateIsSet;
}

void Sushiswap_DayDataDTO::unsetdate()
{
    m_dateIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getFactory() const
{
    return m_Factory;
}

void Sushiswap_DayDataDTO::setFactory(const utility::string_t& value)
{
    m_Factory = value;
    m_FactoryIsSet = true;
}

bool Sushiswap_DayDataDTO::factoryIsSet() const
{
    return m_FactoryIsSet;
}

void Sushiswap_DayDataDTO::unsetFactory()
{
    m_FactoryIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getVolumeEth() const
{
    return m_Volume_eth;
}

void Sushiswap_DayDataDTO::setVolumeEth(const utility::string_t& value)
{
    m_Volume_eth = value;
    m_Volume_ethIsSet = true;
}

bool Sushiswap_DayDataDTO::volumeEthIsSet() const
{
    return m_Volume_ethIsSet;
}

void Sushiswap_DayDataDTO::unsetVolume_eth()
{
    m_Volume_ethIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void Sushiswap_DayDataDTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool Sushiswap_DayDataDTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void Sushiswap_DayDataDTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getUntrackedVolume() const
{
    return m_Untracked_volume;
}

void Sushiswap_DayDataDTO::setUntrackedVolume(const utility::string_t& value)
{
    m_Untracked_volume = value;
    m_Untracked_volumeIsSet = true;
}

bool Sushiswap_DayDataDTO::untrackedVolumeIsSet() const
{
    return m_Untracked_volumeIsSet;
}

void Sushiswap_DayDataDTO::unsetUntracked_volume()
{
    m_Untracked_volumeIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getLiquidityEth() const
{
    return m_Liquidity_eth;
}

void Sushiswap_DayDataDTO::setLiquidityEth(const utility::string_t& value)
{
    m_Liquidity_eth = value;
    m_Liquidity_ethIsSet = true;
}

bool Sushiswap_DayDataDTO::liquidityEthIsSet() const
{
    return m_Liquidity_ethIsSet;
}

void Sushiswap_DayDataDTO::unsetLiquidity_eth()
{
    m_Liquidity_ethIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getLiquidityUsd() const
{
    return m_Liquidity_usd;
}

void Sushiswap_DayDataDTO::setLiquidityUsd(const utility::string_t& value)
{
    m_Liquidity_usd = value;
    m_Liquidity_usdIsSet = true;
}

bool Sushiswap_DayDataDTO::liquidityUsdIsSet() const
{
    return m_Liquidity_usdIsSet;
}

void Sushiswap_DayDataDTO::unsetLiquidity_usd()
{
    m_Liquidity_usdIsSet = false;
}
utility::string_t Sushiswap_DayDataDTO::getTxCount() const
{
    return m_Tx_count;
}

void Sushiswap_DayDataDTO::setTxCount(const utility::string_t& value)
{
    m_Tx_count = value;
    m_Tx_countIsSet = true;
}

bool Sushiswap_DayDataDTO::txCountIsSet() const
{
    return m_Tx_countIsSet;
}

void Sushiswap_DayDataDTO::unsetTx_count()
{
    m_Tx_countIsSet = false;
}
int64_t Sushiswap_DayDataDTO::getVid() const
{
    return m_Vid;
}

void Sushiswap_DayDataDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool Sushiswap_DayDataDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void Sushiswap_DayDataDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


