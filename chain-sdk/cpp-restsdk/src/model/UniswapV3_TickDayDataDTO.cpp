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



#include "CppRestOpenAPIClient/model/UniswapV3_TickDayDataDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UniswapV3_TickDayDataDTO::UniswapV3_TickDayDataDTO()
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
    m_Pool = utility::conversions::to_string_t("");
    m_PoolIsSet = false;
    m_Tick = utility::conversions::to_string_t("");
    m_TickIsSet = false;
    m_Liquidity_gross = utility::conversions::to_string_t("");
    m_Liquidity_grossIsSet = false;
    m_Liquidity_net = utility::conversions::to_string_t("");
    m_Liquidity_netIsSet = false;
    m_Volume_token_0 = utility::conversions::to_string_t("");
    m_Volume_token_0IsSet = false;
    m_Volume_token_1 = utility::conversions::to_string_t("");
    m_Volume_token_1IsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Fees_usd = utility::conversions::to_string_t("");
    m_Fees_usdIsSet = false;
    m_Fee_growth_outside_0x128 = utility::conversions::to_string_t("");
    m_Fee_growth_outside_0x128IsSet = false;
    m_Fee_growth_outside_1x128 = utility::conversions::to_string_t("");
    m_Fee_growth_outside_1x128IsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

UniswapV3_TickDayDataDTO::~UniswapV3_TickDayDataDTO()
{
}

void UniswapV3_TickDayDataDTO::validate()
{
    // TODO: implement validation
}

web::json::value UniswapV3_TickDayDataDTO::toJson() const
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
    if(m_PoolIsSet)
    {
        val[utility::conversions::to_string_t(U("pool"))] = ModelBase::toJson(m_Pool);
    }
    if(m_TickIsSet)
    {
        val[utility::conversions::to_string_t(U("tick"))] = ModelBase::toJson(m_Tick);
    }
    if(m_Liquidity_grossIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_gross"))] = ModelBase::toJson(m_Liquidity_gross);
    }
    if(m_Liquidity_netIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity_net"))] = ModelBase::toJson(m_Liquidity_net);
    }
    if(m_Volume_token_0IsSet)
    {
        val[utility::conversions::to_string_t(U("volume_token_0"))] = ModelBase::toJson(m_Volume_token_0);
    }
    if(m_Volume_token_1IsSet)
    {
        val[utility::conversions::to_string_t(U("volume_token_1"))] = ModelBase::toJson(m_Volume_token_1);
    }
    if(m_Volume_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("volume_usd"))] = ModelBase::toJson(m_Volume_usd);
    }
    if(m_Fees_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("fees_usd"))] = ModelBase::toJson(m_Fees_usd);
    }
    if(m_Fee_growth_outside_0x128IsSet)
    {
        val[utility::conversions::to_string_t(U("fee_growth_outside_0x128"))] = ModelBase::toJson(m_Fee_growth_outside_0x128);
    }
    if(m_Fee_growth_outside_1x128IsSet)
    {
        val[utility::conversions::to_string_t(U("fee_growth_outside_1x128"))] = ModelBase::toJson(m_Fee_growth_outside_1x128);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool UniswapV3_TickDayDataDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("pool"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("pool")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPool;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPool);
            setPool(refVal_setPool);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tick"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tick")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTick;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTick);
            setTick(refVal_setTick);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_gross"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_gross")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityGross;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityGross);
            setLiquidityGross(refVal_setLiquidityGross);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("liquidity_net"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity_net")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidityNet;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidityNet);
            setLiquidityNet(refVal_setLiquidityNet);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume_token_0"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume_token_0")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolumeToken0;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolumeToken0);
            setVolumeToken0(refVal_setVolumeToken0);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("volume_token_1"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("volume_token_1")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setVolumeToken1;
            ok &= ModelBase::fromJson(fieldValue, refVal_setVolumeToken1);
            setVolumeToken1(refVal_setVolumeToken1);
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
    if(val.has_field(utility::conversions::to_string_t(U("fee_growth_outside_0x128"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fee_growth_outside_0x128")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFeeGrowthOutside0x128;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFeeGrowthOutside0x128);
            setFeeGrowthOutside0x128(refVal_setFeeGrowthOutside0x128);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("fee_growth_outside_1x128"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fee_growth_outside_1x128")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFeeGrowthOutside1x128;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFeeGrowthOutside1x128);
            setFeeGrowthOutside1x128(refVal_setFeeGrowthOutside1x128);
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

void UniswapV3_TickDayDataDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_PoolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("pool")), m_Pool));
    }
    if(m_TickIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tick")), m_Tick));
    }
    if(m_Liquidity_grossIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_gross")), m_Liquidity_gross));
    }
    if(m_Liquidity_netIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity_net")), m_Liquidity_net));
    }
    if(m_Volume_token_0IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_token_0")), m_Volume_token_0));
    }
    if(m_Volume_token_1IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_token_1")), m_Volume_token_1));
    }
    if(m_Volume_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("volume_usd")), m_Volume_usd));
    }
    if(m_Fees_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fees_usd")), m_Fees_usd));
    }
    if(m_Fee_growth_outside_0x128IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fee_growth_outside_0x128")), m_Fee_growth_outside_0x128));
    }
    if(m_Fee_growth_outside_1x128IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fee_growth_outside_1x128")), m_Fee_growth_outside_1x128));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool UniswapV3_TickDayDataDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("pool"))))
    {
        utility::string_t refVal_setPool;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("pool"))), refVal_setPool );
        setPool(refVal_setPool);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tick"))))
    {
        utility::string_t refVal_setTick;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tick"))), refVal_setTick );
        setTick(refVal_setTick);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_gross"))))
    {
        utility::string_t refVal_setLiquidityGross;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_gross"))), refVal_setLiquidityGross );
        setLiquidityGross(refVal_setLiquidityGross);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity_net"))))
    {
        utility::string_t refVal_setLiquidityNet;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity_net"))), refVal_setLiquidityNet );
        setLiquidityNet(refVal_setLiquidityNet);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_token_0"))))
    {
        utility::string_t refVal_setVolumeToken0;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_token_0"))), refVal_setVolumeToken0 );
        setVolumeToken0(refVal_setVolumeToken0);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_token_1"))))
    {
        utility::string_t refVal_setVolumeToken1;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_token_1"))), refVal_setVolumeToken1 );
        setVolumeToken1(refVal_setVolumeToken1);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("volume_usd"))))
    {
        utility::string_t refVal_setVolumeUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("volume_usd"))), refVal_setVolumeUsd );
        setVolumeUsd(refVal_setVolumeUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fees_usd"))))
    {
        utility::string_t refVal_setFeesUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fees_usd"))), refVal_setFeesUsd );
        setFeesUsd(refVal_setFeesUsd);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fee_growth_outside_0x128"))))
    {
        utility::string_t refVal_setFeeGrowthOutside0x128;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fee_growth_outside_0x128"))), refVal_setFeeGrowthOutside0x128 );
        setFeeGrowthOutside0x128(refVal_setFeeGrowthOutside0x128);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fee_growth_outside_1x128"))))
    {
        utility::string_t refVal_setFeeGrowthOutside1x128;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fee_growth_outside_1x128"))), refVal_setFeeGrowthOutside1x128 );
        setFeeGrowthOutside1x128(refVal_setFeeGrowthOutside1x128);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime UniswapV3_TickDayDataDTO::getEntryTime() const
{
    return m_Entry_time;
}

void UniswapV3_TickDayDataDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UniswapV3_TickDayDataDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UniswapV3_TickDayDataDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UniswapV3_TickDayDataDTO::getRecvTime() const
{
    return m_Recv_time;
}

void UniswapV3_TickDayDataDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UniswapV3_TickDayDataDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UniswapV3_TickDayDataDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UniswapV3_TickDayDataDTO::getBlockNumber() const
{
    return m_Block_number;
}

void UniswapV3_TickDayDataDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UniswapV3_TickDayDataDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UniswapV3_TickDayDataDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getId() const
{
    return m_Id;
}

void UniswapV3_TickDayDataDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UniswapV3_TickDayDataDTO::idIsSet() const
{
    return m_IdIsSet;
}

void UniswapV3_TickDayDataDTO::unsetId()
{
    m_IdIsSet = false;
}
int32_t UniswapV3_TickDayDataDTO::getDate() const
{
    return m_date;
}

void UniswapV3_TickDayDataDTO::setDate(int32_t value)
{
    m_date = value;
    m_dateIsSet = true;
}

bool UniswapV3_TickDayDataDTO::dateIsSet() const
{
    return m_dateIsSet;
}

void UniswapV3_TickDayDataDTO::unsetdate()
{
    m_dateIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getPool() const
{
    return m_Pool;
}

void UniswapV3_TickDayDataDTO::setPool(const utility::string_t& value)
{
    m_Pool = value;
    m_PoolIsSet = true;
}

bool UniswapV3_TickDayDataDTO::poolIsSet() const
{
    return m_PoolIsSet;
}

void UniswapV3_TickDayDataDTO::unsetPool()
{
    m_PoolIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getTick() const
{
    return m_Tick;
}

void UniswapV3_TickDayDataDTO::setTick(const utility::string_t& value)
{
    m_Tick = value;
    m_TickIsSet = true;
}

bool UniswapV3_TickDayDataDTO::tickIsSet() const
{
    return m_TickIsSet;
}

void UniswapV3_TickDayDataDTO::unsetTick()
{
    m_TickIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getLiquidityGross() const
{
    return m_Liquidity_gross;
}

void UniswapV3_TickDayDataDTO::setLiquidityGross(const utility::string_t& value)
{
    m_Liquidity_gross = value;
    m_Liquidity_grossIsSet = true;
}

bool UniswapV3_TickDayDataDTO::liquidityGrossIsSet() const
{
    return m_Liquidity_grossIsSet;
}

void UniswapV3_TickDayDataDTO::unsetLiquidity_gross()
{
    m_Liquidity_grossIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getLiquidityNet() const
{
    return m_Liquidity_net;
}

void UniswapV3_TickDayDataDTO::setLiquidityNet(const utility::string_t& value)
{
    m_Liquidity_net = value;
    m_Liquidity_netIsSet = true;
}

bool UniswapV3_TickDayDataDTO::liquidityNetIsSet() const
{
    return m_Liquidity_netIsSet;
}

void UniswapV3_TickDayDataDTO::unsetLiquidity_net()
{
    m_Liquidity_netIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getVolumeToken0() const
{
    return m_Volume_token_0;
}

void UniswapV3_TickDayDataDTO::setVolumeToken0(const utility::string_t& value)
{
    m_Volume_token_0 = value;
    m_Volume_token_0IsSet = true;
}

bool UniswapV3_TickDayDataDTO::volumeToken0IsSet() const
{
    return m_Volume_token_0IsSet;
}

void UniswapV3_TickDayDataDTO::unsetVolume_token_0()
{
    m_Volume_token_0IsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getVolumeToken1() const
{
    return m_Volume_token_1;
}

void UniswapV3_TickDayDataDTO::setVolumeToken1(const utility::string_t& value)
{
    m_Volume_token_1 = value;
    m_Volume_token_1IsSet = true;
}

bool UniswapV3_TickDayDataDTO::volumeToken1IsSet() const
{
    return m_Volume_token_1IsSet;
}

void UniswapV3_TickDayDataDTO::unsetVolume_token_1()
{
    m_Volume_token_1IsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void UniswapV3_TickDayDataDTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool UniswapV3_TickDayDataDTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void UniswapV3_TickDayDataDTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getFeesUsd() const
{
    return m_Fees_usd;
}

void UniswapV3_TickDayDataDTO::setFeesUsd(const utility::string_t& value)
{
    m_Fees_usd = value;
    m_Fees_usdIsSet = true;
}

bool UniswapV3_TickDayDataDTO::feesUsdIsSet() const
{
    return m_Fees_usdIsSet;
}

void UniswapV3_TickDayDataDTO::unsetFees_usd()
{
    m_Fees_usdIsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getFeeGrowthOutside0x128() const
{
    return m_Fee_growth_outside_0x128;
}

void UniswapV3_TickDayDataDTO::setFeeGrowthOutside0x128(const utility::string_t& value)
{
    m_Fee_growth_outside_0x128 = value;
    m_Fee_growth_outside_0x128IsSet = true;
}

bool UniswapV3_TickDayDataDTO::feeGrowthOutside0x128IsSet() const
{
    return m_Fee_growth_outside_0x128IsSet;
}

void UniswapV3_TickDayDataDTO::unsetFee_growth_outside_0x128()
{
    m_Fee_growth_outside_0x128IsSet = false;
}
utility::string_t UniswapV3_TickDayDataDTO::getFeeGrowthOutside1x128() const
{
    return m_Fee_growth_outside_1x128;
}

void UniswapV3_TickDayDataDTO::setFeeGrowthOutside1x128(const utility::string_t& value)
{
    m_Fee_growth_outside_1x128 = value;
    m_Fee_growth_outside_1x128IsSet = true;
}

bool UniswapV3_TickDayDataDTO::feeGrowthOutside1x128IsSet() const
{
    return m_Fee_growth_outside_1x128IsSet;
}

void UniswapV3_TickDayDataDTO::unsetFee_growth_outside_1x128()
{
    m_Fee_growth_outside_1x128IsSet = false;
}
int64_t UniswapV3_TickDayDataDTO::getVid() const
{
    return m_Vid;
}

void UniswapV3_TickDayDataDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UniswapV3_TickDayDataDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UniswapV3_TickDayDataDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


