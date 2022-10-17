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



#include "CppRestOpenAPIClient/model/TokenDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



TokenDTO::TokenDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Factory = utility::conversions::to_string_t("");
    m_FactoryIsSet = false;
    m_Symbol = utility::conversions::to_string_t("");
    m_SymbolIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Decimals = utility::conversions::to_string_t("");
    m_DecimalsIsSet = false;
    m_Total_supply = utility::conversions::to_string_t("");
    m_Total_supplyIsSet = false;
    m_Volume = utility::conversions::to_string_t("");
    m_VolumeIsSet = false;
    m_Volume_usd = utility::conversions::to_string_t("");
    m_Volume_usdIsSet = false;
    m_Untracked_volume_usd = utility::conversions::to_string_t("");
    m_Untracked_volume_usdIsSet = false;
    m_Tx_count = utility::conversions::to_string_t("");
    m_Tx_countIsSet = false;
    m_Liquidity = utility::conversions::to_string_t("");
    m_LiquidityIsSet = false;
    m_Derived_eth = utility::conversions::to_string_t("");
    m_Derived_ethIsSet = false;
    m_Whitelist_pairsIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
    m_Token_symbol = utility::conversions::to_string_t("");
    m_Token_symbolIsSet = false;
}

TokenDTO::~TokenDTO()
{
}

void TokenDTO::validate()
{
    // TODO: implement validation
}

web::json::value TokenDTO::toJson() const
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
    if(m_FactoryIsSet)
    {
        val[utility::conversions::to_string_t(U("factory"))] = ModelBase::toJson(m_Factory);
    }
    if(m_SymbolIsSet)
    {
        val[utility::conversions::to_string_t(U("symbol"))] = ModelBase::toJson(m_Symbol);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_DecimalsIsSet)
    {
        val[utility::conversions::to_string_t(U("decimals"))] = ModelBase::toJson(m_Decimals);
    }
    if(m_Total_supplyIsSet)
    {
        val[utility::conversions::to_string_t(U("total_supply"))] = ModelBase::toJson(m_Total_supply);
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
    if(m_Tx_countIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_count"))] = ModelBase::toJson(m_Tx_count);
    }
    if(m_LiquidityIsSet)
    {
        val[utility::conversions::to_string_t(U("liquidity"))] = ModelBase::toJson(m_Liquidity);
    }
    if(m_Derived_ethIsSet)
    {
        val[utility::conversions::to_string_t(U("derived_eth"))] = ModelBase::toJson(m_Derived_eth);
    }
    if(m_Whitelist_pairsIsSet)
    {
        val[utility::conversions::to_string_t(U("whitelist_pairs"))] = ModelBase::toJson(m_Whitelist_pairs);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }
    if(m_Token_symbolIsSet)
    {
        val[utility::conversions::to_string_t(U("token_symbol"))] = ModelBase::toJson(m_Token_symbol);
    }

    return val;
}

bool TokenDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("symbol"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("symbol")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSymbol;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSymbol);
            setSymbol(refVal_setSymbol);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("name"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("name")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setName;
            ok &= ModelBase::fromJson(fieldValue, refVal_setName);
            setName(refVal_setName);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("decimals"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("decimals")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setDecimals;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDecimals);
            setDecimals(refVal_setDecimals);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("total_supply"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("total_supply")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTotalSupply;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTotalSupply);
            setTotalSupply(refVal_setTotalSupply);
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
    if(val.has_field(utility::conversions::to_string_t(U("derived_eth"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("derived_eth")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setDerivedEth;
            ok &= ModelBase::fromJson(fieldValue, refVal_setDerivedEth);
            setDerivedEth(refVal_setDerivedEth);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("whitelist_pairs"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("whitelist_pairs")));
        if(!fieldValue.is_null())
        {
            std::vector<utility::string_t> refVal_setWhitelistPairs;
            ok &= ModelBase::fromJson(fieldValue, refVal_setWhitelistPairs);
            setWhitelistPairs(refVal_setWhitelistPairs);
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
    if(val.has_field(utility::conversions::to_string_t(U("token_symbol"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("token_symbol")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTokenSymbol;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTokenSymbol);
            setTokenSymbol(refVal_setTokenSymbol);
        }
    }
    return ok;
}

void TokenDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_FactoryIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("factory")), m_Factory));
    }
    if(m_SymbolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("symbol")), m_Symbol));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_DecimalsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("decimals")), m_Decimals));
    }
    if(m_Total_supplyIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("total_supply")), m_Total_supply));
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
    if(m_Tx_countIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_count")), m_Tx_count));
    }
    if(m_LiquidityIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("liquidity")), m_Liquidity));
    }
    if(m_Derived_ethIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("derived_eth")), m_Derived_eth));
    }
    if(m_Whitelist_pairsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("whitelist_pairs")), m_Whitelist_pairs));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
    if(m_Token_symbolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("token_symbol")), m_Token_symbol));
    }
}

bool TokenDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("factory"))))
    {
        utility::string_t refVal_setFactory;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("factory"))), refVal_setFactory );
        setFactory(refVal_setFactory);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("symbol"))))
    {
        utility::string_t refVal_setSymbol;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("symbol"))), refVal_setSymbol );
        setSymbol(refVal_setSymbol);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_setName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_setName );
        setName(refVal_setName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("decimals"))))
    {
        utility::string_t refVal_setDecimals;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("decimals"))), refVal_setDecimals );
        setDecimals(refVal_setDecimals);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("total_supply"))))
    {
        utility::string_t refVal_setTotalSupply;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("total_supply"))), refVal_setTotalSupply );
        setTotalSupply(refVal_setTotalSupply);
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_count"))))
    {
        utility::string_t refVal_setTxCount;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_count"))), refVal_setTxCount );
        setTxCount(refVal_setTxCount);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("liquidity"))))
    {
        utility::string_t refVal_setLiquidity;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("liquidity"))), refVal_setLiquidity );
        setLiquidity(refVal_setLiquidity);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("derived_eth"))))
    {
        utility::string_t refVal_setDerivedEth;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("derived_eth"))), refVal_setDerivedEth );
        setDerivedEth(refVal_setDerivedEth);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("whitelist_pairs"))))
    {
        std::vector<utility::string_t> refVal_setWhitelistPairs;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("whitelist_pairs"))), refVal_setWhitelistPairs );
        setWhitelistPairs(refVal_setWhitelistPairs);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("token_symbol"))))
    {
        utility::string_t refVal_setTokenSymbol;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("token_symbol"))), refVal_setTokenSymbol );
        setTokenSymbol(refVal_setTokenSymbol);
    }
    return ok;
}

utility::datetime TokenDTO::getEntryTime() const
{
    return m_Entry_time;
}

void TokenDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool TokenDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void TokenDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime TokenDTO::getRecvTime() const
{
    return m_Recv_time;
}

void TokenDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool TokenDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void TokenDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t TokenDTO::getBlockNumber() const
{
    return m_Block_number;
}

void TokenDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool TokenDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void TokenDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t TokenDTO::getId() const
{
    return m_Id;
}

void TokenDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool TokenDTO::idIsSet() const
{
    return m_IdIsSet;
}

void TokenDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t TokenDTO::getFactory() const
{
    return m_Factory;
}

void TokenDTO::setFactory(const utility::string_t& value)
{
    m_Factory = value;
    m_FactoryIsSet = true;
}

bool TokenDTO::factoryIsSet() const
{
    return m_FactoryIsSet;
}

void TokenDTO::unsetFactory()
{
    m_FactoryIsSet = false;
}
utility::string_t TokenDTO::getSymbol() const
{
    return m_Symbol;
}

void TokenDTO::setSymbol(const utility::string_t& value)
{
    m_Symbol = value;
    m_SymbolIsSet = true;
}

bool TokenDTO::symbolIsSet() const
{
    return m_SymbolIsSet;
}

void TokenDTO::unsetSymbol()
{
    m_SymbolIsSet = false;
}
utility::string_t TokenDTO::getName() const
{
    return m_Name;
}

void TokenDTO::setName(const utility::string_t& value)
{
    m_Name = value;
    m_NameIsSet = true;
}

bool TokenDTO::nameIsSet() const
{
    return m_NameIsSet;
}

void TokenDTO::unsetName()
{
    m_NameIsSet = false;
}
utility::string_t TokenDTO::getDecimals() const
{
    return m_Decimals;
}

void TokenDTO::setDecimals(const utility::string_t& value)
{
    m_Decimals = value;
    m_DecimalsIsSet = true;
}

bool TokenDTO::decimalsIsSet() const
{
    return m_DecimalsIsSet;
}

void TokenDTO::unsetDecimals()
{
    m_DecimalsIsSet = false;
}
utility::string_t TokenDTO::getTotalSupply() const
{
    return m_Total_supply;
}

void TokenDTO::setTotalSupply(const utility::string_t& value)
{
    m_Total_supply = value;
    m_Total_supplyIsSet = true;
}

bool TokenDTO::totalSupplyIsSet() const
{
    return m_Total_supplyIsSet;
}

void TokenDTO::unsetTotal_supply()
{
    m_Total_supplyIsSet = false;
}
utility::string_t TokenDTO::getVolume() const
{
    return m_Volume;
}

void TokenDTO::setVolume(const utility::string_t& value)
{
    m_Volume = value;
    m_VolumeIsSet = true;
}

bool TokenDTO::volumeIsSet() const
{
    return m_VolumeIsSet;
}

void TokenDTO::unsetVolume()
{
    m_VolumeIsSet = false;
}
utility::string_t TokenDTO::getVolumeUsd() const
{
    return m_Volume_usd;
}

void TokenDTO::setVolumeUsd(const utility::string_t& value)
{
    m_Volume_usd = value;
    m_Volume_usdIsSet = true;
}

bool TokenDTO::volumeUsdIsSet() const
{
    return m_Volume_usdIsSet;
}

void TokenDTO::unsetVolume_usd()
{
    m_Volume_usdIsSet = false;
}
utility::string_t TokenDTO::getUntrackedVolumeUsd() const
{
    return m_Untracked_volume_usd;
}

void TokenDTO::setUntrackedVolumeUsd(const utility::string_t& value)
{
    m_Untracked_volume_usd = value;
    m_Untracked_volume_usdIsSet = true;
}

bool TokenDTO::untrackedVolumeUsdIsSet() const
{
    return m_Untracked_volume_usdIsSet;
}

void TokenDTO::unsetUntracked_volume_usd()
{
    m_Untracked_volume_usdIsSet = false;
}
utility::string_t TokenDTO::getTxCount() const
{
    return m_Tx_count;
}

void TokenDTO::setTxCount(const utility::string_t& value)
{
    m_Tx_count = value;
    m_Tx_countIsSet = true;
}

bool TokenDTO::txCountIsSet() const
{
    return m_Tx_countIsSet;
}

void TokenDTO::unsetTx_count()
{
    m_Tx_countIsSet = false;
}
utility::string_t TokenDTO::getLiquidity() const
{
    return m_Liquidity;
}

void TokenDTO::setLiquidity(const utility::string_t& value)
{
    m_Liquidity = value;
    m_LiquidityIsSet = true;
}

bool TokenDTO::liquidityIsSet() const
{
    return m_LiquidityIsSet;
}

void TokenDTO::unsetLiquidity()
{
    m_LiquidityIsSet = false;
}
utility::string_t TokenDTO::getDerivedEth() const
{
    return m_Derived_eth;
}

void TokenDTO::setDerivedEth(const utility::string_t& value)
{
    m_Derived_eth = value;
    m_Derived_ethIsSet = true;
}

bool TokenDTO::derivedEthIsSet() const
{
    return m_Derived_ethIsSet;
}

void TokenDTO::unsetDerived_eth()
{
    m_Derived_ethIsSet = false;
}
std::vector<utility::string_t>& TokenDTO::getWhitelistPairs()
{
    return m_Whitelist_pairs;
}

void TokenDTO::setWhitelistPairs(const std::vector<utility::string_t>& value)
{
    m_Whitelist_pairs = value;
    m_Whitelist_pairsIsSet = true;
}

bool TokenDTO::whitelistPairsIsSet() const
{
    return m_Whitelist_pairsIsSet;
}

void TokenDTO::unsetWhitelist_pairs()
{
    m_Whitelist_pairsIsSet = false;
}
int64_t TokenDTO::getVid() const
{
    return m_Vid;
}

void TokenDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool TokenDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void TokenDTO::unsetVid()
{
    m_VidIsSet = false;
}
utility::string_t TokenDTO::getTokenSymbol() const
{
    return m_Token_symbol;
}

void TokenDTO::setTokenSymbol(const utility::string_t& value)
{
    m_Token_symbol = value;
    m_Token_symbolIsSet = true;
}

bool TokenDTO::tokenSymbolIsSet() const
{
    return m_Token_symbolIsSet;
}

void TokenDTO::unsetToken_symbol()
{
    m_Token_symbolIsSet = false;
}
}
}
}
}


