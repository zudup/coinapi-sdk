/**
 * On Chain Dapps - REST API
 *  This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 6.2.1.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */



#include "CppRestOpenAPIClient/model/UniswapV3_TokenHourDataDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UniswapV3_TokenHourDataDTO::UniswapV3_TokenHourDataDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Period_start_unix = 0;
    m_Period_start_unixIsSet = false;
    m_Token = utility::conversions::to_string_t("");
    m_TokenIsSet = false;
    m_Volume = utility::conversions::to_string_t("");
    m_VolumeIsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Untracked_volume_usd = utility::conversions::to_string_t("");
    m_Untracked_volume_usdIsSet = false;
    m_Total_value_locked = utility::conversions::to_string_t("");
    m_Total_value_lockedIsSet = false;
    m_Total_value_locked_usd = utility::conversions::to_string_t("");
    m_Total_value_locked_usdIsSet = false;
    m_Price_usd = utility::conversions::to_string_t("");
    m_Price_usdIsSet = false;
    m_Fees_usd = utility::conversions::to_string_t("");
    m_Fees_usdIsSet = false;
    m_Open = utility::conversions::to_string_t("");
    m_OpenIsSet = false;
    m_High = utility::conversions::to_string_t("");
    m_HighIsSet = false;
    m_Low = utility::conversions::to_string_t("");
    m_LowIsSet = false;
    m_Close = utility::conversions::to_string_t("");
    m_CloseIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

UniswapV3_TokenHourDataDTO::~UniswapV3_TokenHourDataDTO()
{
}

void UniswapV3_TokenHourDataDTO::validate()
{
    // TODO: implement validation
}

web::json::value UniswapV3_TokenHourDataDTO::toJson() const
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
    if(m_Period_start_unixIsSet)
    {
        val[utility::conversions::to_string_t(U("period_start_unix"))] = ModelBase::toJson(m_Period_start_unix);
    }
    if(m_TokenIsSet)
    {
        val[utility::conversions::to_string_t(U("token"))] = ModelBase::toJson(m_Token);
    }
    if(m_VolumeIsSet)
    {
        val[utility::conversions::to_string_t(U("volume"))] = ModelBase::toJson(m_Volume);
    }
    if(m_Volume_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_usd"))] = ModelBase::toJson(m_Volume_usd);
    }
    if(m_Untracked_volume_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("untracked_volume_usd"))] = ModelBase::toJson(m_Untracked_volume_usd);
    }
    if(m_Total_value_lockedIsSet)
    {
        val[utility::conversions::to_string_t(U("total_value_locked"))] = ModelBase::toJson(m_Total_value_locked);
    }
    if(m_Total_value_locked_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("total_value_locked_usd"))] = ModelBase::toJson(m_Total_value_locked_usd);
    }
    if(m_Price_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("price_usd"))] = ModelBase::toJson(m_Price_usd);
    }
    if(m_Fees_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("fees_usd"))] = ModelBase::toJson(m_Fees_usd);
    }
    if(m_OpenIsSet)
    {
        val[utility::conversions::to_string_t(U("open"))] = ModelBase::toJson(m_Open);
    }
    if(m_HighIsSet)
    {
        val[utility::conversions::to_string_t(U("high"))] = ModelBase::toJson(m_High);
    }
    if(m_LowIsSet)
    {
        val[utility::conversions::to_string_t(U("low"))] = ModelBase::toJson(m_Low);
    }
    if(m_CloseIsSet)
    {
        val[utility::conversions::to_string_t(U("close"))] = ModelBase::toJson(m_Close);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool UniswapV3_TokenHourDataDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("period_start_unix"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("period_start_unix")));
        if(!fieldValue.is_null())
        {
            int32_t refVal_setPeriodStartUnix;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPeriodStartUnix);
            setPeriodStartUnix(refVal_setPeriodStartUnix);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("token"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setToken;
            ok &= ModelBase::fromJson(fieldValue, refVal_setToken);
            setToken(refVal_setToken);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolume;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolume);
            setVolume(refVal_setVolume);
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
    if(val.has_field(utility::conversions::to_string_t(U("untracked_volume_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("untracked_volume_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setUntrackedVolumeUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setUntrackedVolumeUsd);
            setUntrackedVolumeUsd(refVal_setUntrackedVolumeUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("total_value_locked"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("total_value_locked")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTotalValueLocked;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTotalValueLocked);
            setTotalValueLocked(refVal_setTotalValueLocked);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("total_value_locked_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("total_value_locked_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTotalValueLockedUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTotalValueLockedUsd);
            setTotalValueLockedUsd(refVal_setTotalValueLockedUsd);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("price_usd"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("price_usd")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPriceUsd;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPriceUsd);
            setPriceUsd(refVal_setPriceUsd);
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
    if(val.has_field(utility::conversions::to_string_t(U("open"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("open")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setOpen;
            ok &= ModelBase::fromJson(fieldValue, refVal_setOpen);
            setOpen(refVal_setOpen);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("high"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("high")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setHigh;
            ok &= ModelBase::fromJson(fieldValue, refVal_setHigh);
            setHigh(refVal_setHigh);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("low"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("low")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLow;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLow);
            setLow(refVal_setLow);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("close"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("close")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setClose;
            ok &= ModelBase::fromJson(fieldValue, refVal_setClose);
            setClose(refVal_setClose);
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

void UniswapV3_TokenHourDataDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_Period_start_unixIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("period_start_unix")), m_Period_start_unix));
    }
    if(m_TokenIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token")), m_Token));
    }
    if(m_VolumeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume")), m_Volume));
    }
    if(m_Volume_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_usd")), m_Volume_usd));
    }
    if(m_Untracked_volume_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("untracked_volume_usd")), m_Untracked_volume_usd));
    }
    if(m_Total_value_lockedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("total_value_locked")), m_Total_value_locked));
    }
    if(m_Total_value_locked_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("total_value_locked_usd")), m_Total_value_locked_usd));
    }
    if(m_Price_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("price_usd")), m_Price_usd));
    }
    if(m_Fees_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fees_usd")), m_Fees_usd));
    }
    if(m_OpenIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("open")), m_Open));
    }
    if(m_HighIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("high")), m_High));
    }
    if(m_LowIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("low")), m_Low));
    }
    if(m_CloseIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("close")), m_Close));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool UniswapV3_TokenHourDataDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("period_start_unix"))))
    {
        int32_t refVal_setPeriodStartUnix;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("period_start_unix"))), refVal_setPeriodStartUnix );
        setPeriodStartUnix(refVal_setPeriodStartUnix);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token"))))
    {
        utility::string_t refVal_setToken;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token"))), refVal_setToken );
        setToken(refVal_setToken);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume"))))
    {
        utility::string_t refVal_setVolume;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume"))), refVal_setVolume );
        setVolume(refVal_setVolume);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_usd"))))
    {
        utility::string_t refVal_setVolumeUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_usd"))), refVal_setVolumeUsd );
        setVolumeUsd(refVal_setVolumeUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("untracked_volume_usd"))))
    {
        utility::string_t refVal_setUntrackedVolumeUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("untracked_volume_usd"))), refVal_setUntrackedVolumeUsd );
        setUntrackedVolumeUsd(refVal_setUntrackedVolumeUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("total_value_locked"))))
    {
        utility::string_t refVal_setTotalValueLocked;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("total_value_locked"))), refVal_setTotalValueLocked );
        setTotalValueLocked(refVal_setTotalValueLocked);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("total_value_locked_usd"))))
    {
        utility::string_t refVal_setTotalValueLockedUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("total_value_locked_usd"))), refVal_setTotalValueLockedUsd );
        setTotalValueLockedUsd(refVal_setTotalValueLockedUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("price_usd"))))
    {
        utility::string_t refVal_setPriceUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("price_usd"))), refVal_setPriceUsd );
        setPriceUsd(refVal_setPriceUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fees_usd"))))
    {
        utility::string_t refVal_setFeesUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fees_usd"))), refVal_setFeesUsd );
        setFeesUsd(refVal_setFeesUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("open"))))
    {
        utility::string_t refVal_setOpen;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("open"))), refVal_setOpen );
        setOpen(refVal_setOpen);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("high"))))
    {
        utility::string_t refVal_setHigh;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("high"))), refVal_setHigh );
        setHigh(refVal_setHigh);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("low"))))
    {
        utility::string_t refVal_setLow;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("low"))), refVal_setLow );
        setLow(refVal_setLow);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("close"))))
    {
        utility::string_t refVal_setClose;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("close"))), refVal_setClose );
        setClose(refVal_setClose);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime UniswapV3_TokenHourDataDTO::getEntryTime() const
{
    return m_Entry_time;
}

void UniswapV3_TokenHourDataDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UniswapV3_TokenHourDataDTO::getRecvTime() const
{
    return m_Recv_time;
}

void UniswapV3_TokenHourDataDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UniswapV3_TokenHourDataDTO::getBlockNumber() const
{
    return m_Block_number;
}

void UniswapV3_TokenHourDataDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getId() const
{
    return m_Id;
}

void UniswapV3_TokenHourDataDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::idIsSet() const
{
    return m_IdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetId()
{
    m_IdIsSet = false;
}
int32_t UniswapV3_TokenHourDataDTO::getPeriodStartUnix() const
{
    return m_Period_start_unix;
}

void UniswapV3_TokenHourDataDTO::setPeriodStartUnix(int32_t value)
{
    m_Period_start_unix = value;
    m_Period_start_unixIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::periodStartUnixIsSet() const
{
    return m_Period_start_unixIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetPeriod_start_unix()
{
    m_Period_start_unixIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getToken() const
{
    return m_Token;
}

void UniswapV3_TokenHourDataDTO::setToken(const utility::string_t& value)
{
    m_Token = value;
    m_TokenIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::tokenIsSet() const
{
    return m_TokenIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetToken()
{
    m_TokenIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getVolume() const
{
    return m_Volume;
}

void UniswapV3_TokenHourDataDTO::setVolume(const utility::string_t& value)
{
    m_Volume = value;
    m_VolumeIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::volumeIsSet() const
{
    return m_VolumeIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetVolume()
{
    m_VolumeIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void UniswapV3_TokenHourDataDTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getUntrackedVolumeUsd() const
{
    return m_Untracked_volume_usd;
}

void UniswapV3_TokenHourDataDTO::setUntrackedVolumeUsd(const utility::string_t& value)
{
    m_Untracked_volume_usd = value;
    m_Untracked_volume_usdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::untrackedVolumeUsdIsSet() const
{
    return m_Untracked_volume_usdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetUntracked_volume_usd()
{
    m_Untracked_volume_usdIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getTotalValueLocked() const
{
    return m_Total_value_locked;
}

void UniswapV3_TokenHourDataDTO::setTotalValueLocked(const utility::string_t& value)
{
    m_Total_value_locked = value;
    m_Total_value_lockedIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::totalValueLockedIsSet() const
{
    return m_Total_value_lockedIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetTotal_value_locked()
{
    m_Total_value_lockedIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getTotalValueLockedUsd() const
{
    return m_Total_value_locked_usd;
}

void UniswapV3_TokenHourDataDTO::setTotalValueLockedUsd(const utility::string_t& value)
{
    m_Total_value_locked_usd = value;
    m_Total_value_locked_usdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::totalValueLockedUsdIsSet() const
{
    return m_Total_value_locked_usdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetTotal_value_locked_usd()
{
    m_Total_value_locked_usdIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getPriceUsd() const
{
    return m_Price_usd;
}

void UniswapV3_TokenHourDataDTO::setPriceUsd(const utility::string_t& value)
{
    m_Price_usd = value;
    m_Price_usdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::priceUsdIsSet() const
{
    return m_Price_usdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetPrice_usd()
{
    m_Price_usdIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getFeesUsd() const
{
    return m_Fees_usd;
}

void UniswapV3_TokenHourDataDTO::setFeesUsd(const utility::string_t& value)
{
    m_Fees_usd = value;
    m_Fees_usdIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::feesUsdIsSet() const
{
    return m_Fees_usdIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetFees_usd()
{
    m_Fees_usdIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getOpen() const
{
    return m_Open;
}

void UniswapV3_TokenHourDataDTO::setOpen(const utility::string_t& value)
{
    m_Open = value;
    m_OpenIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::openIsSet() const
{
    return m_OpenIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetOpen()
{
    m_OpenIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getHigh() const
{
    return m_High;
}

void UniswapV3_TokenHourDataDTO::setHigh(const utility::string_t& value)
{
    m_High = value;
    m_HighIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::highIsSet() const
{
    return m_HighIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetHigh()
{
    m_HighIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getLow() const
{
    return m_Low;
}

void UniswapV3_TokenHourDataDTO::setLow(const utility::string_t& value)
{
    m_Low = value;
    m_LowIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::lowIsSet() const
{
    return m_LowIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetLow()
{
    m_LowIsSet = false;
}
utility::string_t UniswapV3_TokenHourDataDTO::getClose() const
{
    return m_Close;
}

void UniswapV3_TokenHourDataDTO::setClose(const utility::string_t& value)
{
    m_Close = value;
    m_CloseIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::closeIsSet() const
{
    return m_CloseIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetClose()
{
    m_CloseIsSet = false;
}
int64_t UniswapV3_TokenHourDataDTO::getVid() const
{
    return m_Vid;
}

void UniswapV3_TokenHourDataDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UniswapV3_TokenHourDataDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UniswapV3_TokenHourDataDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}

