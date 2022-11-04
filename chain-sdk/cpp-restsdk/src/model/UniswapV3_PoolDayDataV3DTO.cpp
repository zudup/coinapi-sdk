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



#include "CppRestOpenAPIClient/model/UniswapV3_PoolDayDataV3DTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



UniswapV3_PoolDayDataV3DTO::UniswapV3_PoolDayDataV3DTO()
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
    m_Liquidity = utility::conversions::to_string_t("");
    m_LiquidityIsSet = false;
    m_Sqrt_price = utility::conversions::to_string_t("");
    m_Sqrt_priceIsSet = false;
    m_Token_0_price = utility::conversions::to_string_t("");
    m_Token_0_priceIsSet = false;
    m_Token_1_price = utility::conversions::to_string_t("");
    m_Token_1_priceIsSet = false;
    m_Tick = utility::conversions::to_string_t("");
    m_TickIsSet = false;
    m_Fee_growth_global_0x128 = utility::conversions::to_string_t("");
    m_Fee_growth_global_0x128IsSet = false;
    m_Fee_growth_global_1x128 = utility::conversions::to_string_t("");
    m_Fee_growth_global_1x128IsSet = false;
    m_Tvl_usd = utility::conversions::to_string_t("");
    m_Tvl_usdIsSet = false;
    m_Volume_token_0 = utility::conversions::to_string_t("");
    m_Volume_token_0IsSet = false;
    m_Volume_token_1 = utility::conversions::to_string_t("");
    m_Volume_token_1IsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Fees_usd = utility::conversions::to_string_t("");
    m_Fees_usdIsSet = false;
    m_Tx_count = utility::conversions::to_string_t("");
    m_Tx_countIsSet = false;
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

UniswapV3_PoolDayDataV3DTO::~UniswapV3_PoolDayDataV3DTO()
{
}

void UniswapV3_PoolDayDataV3DTO::validate()
{
    // TODO: implement validation
}

web::json::value UniswapV3_PoolDayDataV3DTO::toJson() const
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
    if(m_LiquidityIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity"))] = ModelBase::toJson(m_Liquidity);
    }
    if(m_Sqrt_priceIsSet)
    {
        val[utility::conversions::to_string_t(U("sqrt_price"))] = ModelBase::toJson(m_Sqrt_price);
    }
    if(m_Token_0_priceIsSet)
    {
        val[utility::conversions::to_string_t(U("token_0_price"))] = ModelBase::toJson(m_Token_0_price);
    }
    if(m_Token_1_priceIsSet)
    {
        val[utility::conversions::to_string_t(U("token_1_price"))] = ModelBase::toJson(m_Token_1_price);
    }
    if(m_TickIsSet)
    {
        val[utility::conversions::to_string_t(U("tick"))] = ModelBase::toJson(m_Tick);
    }
    if(m_Fee_growth_global_0x128IsSet)
    {
        val[utility::conversions::to_string_t(U("fee_growth_global_0x128"))] = ModelBase::toJson(m_Fee_growth_global_0x128);
    }
    if(m_Fee_growth_global_1x128IsSet)
    {
        val[utility::conversions::to_string_t(U("fee_growth_global_1x128"))] = ModelBase::toJson(m_Fee_growth_global_1x128);
    }
    if(m_Tvl_usdIsSet)
    {
        val[utility::conversions::to_string_t(U("tvl_usd"))] = ModelBase::toJson(m_Tvl_usd);
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
    if(m_Tx_countIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_count"))] = ModelBase::toJson(m_Tx_count);
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

bool UniswapV3_PoolDayDataV3DTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("liquidity"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("liquidity")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setLiquidity;
            ok &= ModelBase::fromJson(fieldValue, refVal_setLiquidity);
            setLiquidity(refVal_setLiquidity);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("sqrt_price"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("sqrt_price")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSqrtPrice;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSqrtPrice);
            setSqrtPrice(refVal_setSqrtPrice);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("token_0_price"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token_0_price")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setToken0Price;
            ok &= ModelBase::fromJson(fieldValue, refVal_setToken0Price);
            setToken0Price(refVal_setToken0Price);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("token_1_price"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token_1_price")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setToken1Price;
            ok &= ModelBase::fromJson(fieldValue, refVal_setToken1Price);
            setToken1Price(refVal_setToken1Price);
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
    if(val.has_field(utility::conversions::to_string_t(U("fee_growth_global_0x128"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fee_growth_global_0x128")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFeeGrowthGlobal0x128;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFeeGrowthGlobal0x128);
            setFeeGrowthGlobal0x128(refVal_setFeeGrowthGlobal0x128);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("fee_growth_global_1x128"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("fee_growth_global_1x128")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFeeGrowthGlobal1x128;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFeeGrowthGlobal1x128);
            setFeeGrowthGlobal1x128(refVal_setFeeGrowthGlobal1x128);
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

void UniswapV3_PoolDayDataV3DTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_LiquidityIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity")), m_Liquidity));
    }
    if(m_Sqrt_priceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("sqrt_price")), m_Sqrt_price));
    }
    if(m_Token_0_priceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token_0_price")), m_Token_0_price));
    }
    if(m_Token_1_priceIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token_1_price")), m_Token_1_price));
    }
    if(m_TickIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tick")), m_Tick));
    }
    if(m_Fee_growth_global_0x128IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fee_growth_global_0x128")), m_Fee_growth_global_0x128));
    }
    if(m_Fee_growth_global_1x128IsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("fee_growth_global_1x128")), m_Fee_growth_global_1x128));
    }
    if(m_Tvl_usdIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tvl_usd")), m_Tvl_usd));
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
    if(m_Tx_countIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_count")), m_Tx_count));
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

bool UniswapV3_PoolDayDataV3DTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity"))))
    {
        utility::string_t refVal_setLiquidity;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity"))), refVal_setLiquidity );
        setLiquidity(refVal_setLiquidity);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("sqrt_price"))))
    {
        utility::string_t refVal_setSqrtPrice;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("sqrt_price"))), refVal_setSqrtPrice );
        setSqrtPrice(refVal_setSqrtPrice);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token_0_price"))))
    {
        utility::string_t refVal_setToken0Price;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token_0_price"))), refVal_setToken0Price );
        setToken0Price(refVal_setToken0Price);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token_1_price"))))
    {
        utility::string_t refVal_setToken1Price;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token_1_price"))), refVal_setToken1Price );
        setToken1Price(refVal_setToken1Price);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tick"))))
    {
        utility::string_t refVal_setTick;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tick"))), refVal_setTick );
        setTick(refVal_setTick);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fee_growth_global_0x128"))))
    {
        utility::string_t refVal_setFeeGrowthGlobal0x128;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fee_growth_global_0x128"))), refVal_setFeeGrowthGlobal0x128 );
        setFeeGrowthGlobal0x128(refVal_setFeeGrowthGlobal0x128);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("fee_growth_global_1x128"))))
    {
        utility::string_t refVal_setFeeGrowthGlobal1x128;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("fee_growth_global_1x128"))), refVal_setFeeGrowthGlobal1x128 );
        setFeeGrowthGlobal1x128(refVal_setFeeGrowthGlobal1x128);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tvl_usd"))))
    {
        utility::string_t refVal_setTvlUsd;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tvl_usd"))), refVal_setTvlUsd );
        setTvlUsd(refVal_setTvlUsd);
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_count"))))
    {
        utility::string_t refVal_setTxCount;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_count"))), refVal_setTxCount );
        setTxCount(refVal_setTxCount);
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

utility::datetime UniswapV3_PoolDayDataV3DTO::getEntryTime() const
{
    return m_Entry_time;
}

void UniswapV3_PoolDayDataV3DTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime UniswapV3_PoolDayDataV3DTO::getRecvTime() const
{
    return m_Recv_time;
}

void UniswapV3_PoolDayDataV3DTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t UniswapV3_PoolDayDataV3DTO::getBlockNumber() const
{
    return m_Block_number;
}

void UniswapV3_PoolDayDataV3DTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getId() const
{
    return m_Id;
}

void UniswapV3_PoolDayDataV3DTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::idIsSet() const
{
    return m_IdIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetId()
{
    m_IdIsSet = false;
}
int32_t UniswapV3_PoolDayDataV3DTO::getDate() const
{
    return m_date;
}

void UniswapV3_PoolDayDataV3DTO::setDate(int32_t value)
{
    m_date = value;
    m_dateIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::dateIsSet() const
{
    return m_dateIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetdate()
{
    m_dateIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getPool() const
{
    return m_Pool;
}

void UniswapV3_PoolDayDataV3DTO::setPool(const utility::string_t& value)
{
    m_Pool = value;
    m_PoolIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::poolIsSet() const
{
    return m_PoolIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetPool()
{
    m_PoolIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getLiquidity() const
{
    return m_Liquidity;
}

void UniswapV3_PoolDayDataV3DTO::setLiquidity(const utility::string_t& value)
{
    m_Liquidity = value;
    m_LiquidityIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::liquidityIsSet() const
{
    return m_LiquidityIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetLiquidity()
{
    m_LiquidityIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getSqrtPrice() const
{
    return m_Sqrt_price;
}

void UniswapV3_PoolDayDataV3DTO::setSqrtPrice(const utility::string_t& value)
{
    m_Sqrt_price = value;
    m_Sqrt_priceIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::sqrtPriceIsSet() const
{
    return m_Sqrt_priceIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetSqrt_price()
{
    m_Sqrt_priceIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getToken0Price() const
{
    return m_Token_0_price;
}

void UniswapV3_PoolDayDataV3DTO::setToken0Price(const utility::string_t& value)
{
    m_Token_0_price = value;
    m_Token_0_priceIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::token0PriceIsSet() const
{
    return m_Token_0_priceIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetToken_0_price()
{
    m_Token_0_priceIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getToken1Price() const
{
    return m_Token_1_price;
}

void UniswapV3_PoolDayDataV3DTO::setToken1Price(const utility::string_t& value)
{
    m_Token_1_price = value;
    m_Token_1_priceIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::token1PriceIsSet() const
{
    return m_Token_1_priceIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetToken_1_price()
{
    m_Token_1_priceIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getTick() const
{
    return m_Tick;
}

void UniswapV3_PoolDayDataV3DTO::setTick(const utility::string_t& value)
{
    m_Tick = value;
    m_TickIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::tickIsSet() const
{
    return m_TickIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetTick()
{
    m_TickIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getFeeGrowthGlobal0x128() const
{
    return m_Fee_growth_global_0x128;
}

void UniswapV3_PoolDayDataV3DTO::setFeeGrowthGlobal0x128(const utility::string_t& value)
{
    m_Fee_growth_global_0x128 = value;
    m_Fee_growth_global_0x128IsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::feeGrowthGlobal0x128IsSet() const
{
    return m_Fee_growth_global_0x128IsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetFee_growth_global_0x128()
{
    m_Fee_growth_global_0x128IsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getFeeGrowthGlobal1x128() const
{
    return m_Fee_growth_global_1x128;
}

void UniswapV3_PoolDayDataV3DTO::setFeeGrowthGlobal1x128(const utility::string_t& value)
{
    m_Fee_growth_global_1x128 = value;
    m_Fee_growth_global_1x128IsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::feeGrowthGlobal1x128IsSet() const
{
    return m_Fee_growth_global_1x128IsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetFee_growth_global_1x128()
{
    m_Fee_growth_global_1x128IsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getTvlUsd() const
{
    return m_Tvl_usd;
}

void UniswapV3_PoolDayDataV3DTO::setTvlUsd(const utility::string_t& value)
{
    m_Tvl_usd = value;
    m_Tvl_usdIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::tvlUsdIsSet() const
{
    return m_Tvl_usdIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetTvl_usd()
{
    m_Tvl_usdIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getVolumeToken0() const
{
    return m_Volume_token_0;
}

void UniswapV3_PoolDayDataV3DTO::setVolumeToken0(const utility::string_t& value)
{
    m_Volume_token_0 = value;
    m_Volume_token_0IsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::volumeToken0IsSet() const
{
    return m_Volume_token_0IsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetVolume_token_0()
{
    m_Volume_token_0IsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getVolumeToken1() const
{
    return m_Volume_token_1;
}

void UniswapV3_PoolDayDataV3DTO::setVolumeToken1(const utility::string_t& value)
{
    m_Volume_token_1 = value;
    m_Volume_token_1IsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::volumeToken1IsSet() const
{
    return m_Volume_token_1IsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetVolume_token_1()
{
    m_Volume_token_1IsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void UniswapV3_PoolDayDataV3DTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getFeesUsd() const
{
    return m_Fees_usd;
}

void UniswapV3_PoolDayDataV3DTO::setFeesUsd(const utility::string_t& value)
{
    m_Fees_usd = value;
    m_Fees_usdIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::feesUsdIsSet() const
{
    return m_Fees_usdIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetFees_usd()
{
    m_Fees_usdIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getTxCount() const
{
    return m_Tx_count;
}

void UniswapV3_PoolDayDataV3DTO::setTxCount(const utility::string_t& value)
{
    m_Tx_count = value;
    m_Tx_countIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::txCountIsSet() const
{
    return m_Tx_countIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetTx_count()
{
    m_Tx_countIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getOpen() const
{
    return m_Open;
}

void UniswapV3_PoolDayDataV3DTO::setOpen(const utility::string_t& value)
{
    m_Open = value;
    m_OpenIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::openIsSet() const
{
    return m_OpenIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetOpen()
{
    m_OpenIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getHigh() const
{
    return m_High;
}

void UniswapV3_PoolDayDataV3DTO::setHigh(const utility::string_t& value)
{
    m_High = value;
    m_HighIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::highIsSet() const
{
    return m_HighIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetHigh()
{
    m_HighIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getLow() const
{
    return m_Low;
}

void UniswapV3_PoolDayDataV3DTO::setLow(const utility::string_t& value)
{
    m_Low = value;
    m_LowIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::lowIsSet() const
{
    return m_LowIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetLow()
{
    m_LowIsSet = false;
}
utility::string_t UniswapV3_PoolDayDataV3DTO::getClose() const
{
    return m_Close;
}

void UniswapV3_PoolDayDataV3DTO::setClose(const utility::string_t& value)
{
    m_Close = value;
    m_CloseIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::closeIsSet() const
{
    return m_CloseIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetClose()
{
    m_CloseIsSet = false;
}
int64_t UniswapV3_PoolDayDataV3DTO::getVid() const
{
    return m_Vid;
}

void UniswapV3_PoolDayDataV3DTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool UniswapV3_PoolDayDataV3DTO::vidIsSet() const
{
    return m_VidIsSet;
}

void UniswapV3_PoolDayDataV3DTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}

