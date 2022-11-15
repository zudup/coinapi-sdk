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



#include "CppRestOpenAPIClient/model/Dex_TokenDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Dex_TokenDTO::Dex_TokenDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Address = utility::conversions::to_string_t("");
    m_AddressIsSet = false;
    m_From_batch_id = utility::conversions::to_string_t("");
    m_From_batch_idIsSet = false;
    m_Symbol = utility::conversions::to_string_t("");
    m_SymbolIsSet = false;
    m_Decimals = utility::conversions::to_string_t("");
    m_DecimalsIsSet = false;
    m_Name = utility::conversions::to_string_t("");
    m_NameIsSet = false;
    m_Sell_volume = utility::conversions::to_string_t("");
    m_Sell_volumeIsSet = false;
    m_Create_epoch = utility::conversions::to_string_t("");
    m_Create_epochIsSet = false;
    m_Tx_hash = utility::conversions::to_string_t("");
    m_Tx_hashIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
    m_Token_symbol = utility::conversions::to_string_t("");
    m_Token_symbolIsSet = false;
}

Dex_TokenDTO::~Dex_TokenDTO()
{
}

void Dex_TokenDTO::validate()
{
    // TODO: implement validation
}

web::json::value Dex_TokenDTO::toJson() const
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
    if(m_AddressIsSet)
    {
        val[utility::conversions::to_string_t(U("address"))] = ModelBase::toJson(m_Address);
    }
    if(m_From_batch_idIsSet)
    {
        val[utility::conversions::to_string_t(U("from_batch_id"))] = ModelBase::toJson(m_From_batch_id);
    }
    if(m_SymbolIsSet)
    {
        val[utility::conversions::to_string_t(U("symbol"))] = ModelBase::toJson(m_Symbol);
    }
    if(m_DecimalsIsSet)
    {
        val[utility::conversions::to_string_t(U("decimals"))] = ModelBase::toJson(m_Decimals);
    }
    if(m_NameIsSet)
    {
        val[utility::conversions::to_string_t(U("name"))] = ModelBase::toJson(m_Name);
    }
    if(m_Sell_volumeIsSet)
    {
        val[utility::conversions::to_string_t(U("sell_volume"))] = ModelBase::toJson(m_Sell_volume);
    }
    if(m_Create_epochIsSet)
    {
        val[utility::conversions::to_string_t(U("create_epoch"))] = ModelBase::toJson(m_Create_epoch);
    }
    if(m_Tx_hashIsSet)
    {
        val[utility::conversions::to_string_t(U("tx_hash"))] = ModelBase::toJson(m_Tx_hash);
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

bool Dex_TokenDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("address"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("address")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setAddress;
            ok &= ModelBase::fromJson(fieldValue, refVal_setAddress);
            setAddress(refVal_setAddress);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("from_batch_id"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("from_batch_id")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setFromBatchId;
            ok &= ModelBase::fromJson(fieldValue, refVal_setFromBatchId);
            setFromBatchId(refVal_setFromBatchId);
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
    if(val.has_field(utility::conversions::to_string_t(U("sell_volume"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("sell_volume")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setSellVolume;
            ok &= ModelBase::fromJson(fieldValue, refVal_setSellVolume);
            setSellVolume(refVal_setSellVolume);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("create_epoch"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("create_epoch")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setCreateEpoch;
            ok &= ModelBase::fromJson(fieldValue, refVal_setCreateEpoch);
            setCreateEpoch(refVal_setCreateEpoch);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("tx_hash"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("tx_hash")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTxHash;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTxHash);
            setTxHash(refVal_setTxHash);
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

void Dex_TokenDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_AddressIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("address")), m_Address));
    }
    if(m_From_batch_idIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("from_batch_id")), m_From_batch_id));
    }
    if(m_SymbolIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("symbol")), m_Symbol));
    }
    if(m_DecimalsIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("decimals")), m_Decimals));
    }
    if(m_NameIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("name")), m_Name));
    }
    if(m_Sell_volumeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("sell_volume")), m_Sell_volume));
    }
    if(m_Create_epochIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("create_epoch")), m_Create_epoch));
    }
    if(m_Tx_hashIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("tx_hash")), m_Tx_hash));
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

bool Dex_TokenDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("address"))))
    {
        utility::string_t refVal_setAddress;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("address"))), refVal_setAddress );
        setAddress(refVal_setAddress);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("from_batch_id"))))
    {
        utility::string_t refVal_setFromBatchId;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("from_batch_id"))), refVal_setFromBatchId );
        setFromBatchId(refVal_setFromBatchId);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("symbol"))))
    {
        utility::string_t refVal_setSymbol;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("symbol"))), refVal_setSymbol );
        setSymbol(refVal_setSymbol);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("decimals"))))
    {
        utility::string_t refVal_setDecimals;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("decimals"))), refVal_setDecimals );
        setDecimals(refVal_setDecimals);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("name"))))
    {
        utility::string_t refVal_setName;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("name"))), refVal_setName );
        setName(refVal_setName);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("sell_volume"))))
    {
        utility::string_t refVal_setSellVolume;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("sell_volume"))), refVal_setSellVolume );
        setSellVolume(refVal_setSellVolume);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("create_epoch"))))
    {
        utility::string_t refVal_setCreateEpoch;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("create_epoch"))), refVal_setCreateEpoch );
        setCreateEpoch(refVal_setCreateEpoch);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("tx_hash"))))
    {
        utility::string_t refVal_setTxHash;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("tx_hash"))), refVal_setTxHash );
        setTxHash(refVal_setTxHash);
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

utility::datetime Dex_TokenDTO::getEntryTime() const
{
    return m_Entry_time;
}

void Dex_TokenDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool Dex_TokenDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void Dex_TokenDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime Dex_TokenDTO::getRecvTime() const
{
    return m_Recv_time;
}

void Dex_TokenDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool Dex_TokenDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void Dex_TokenDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t Dex_TokenDTO::getBlockNumber() const
{
    return m_Block_number;
}

void Dex_TokenDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool Dex_TokenDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void Dex_TokenDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t Dex_TokenDTO::getId() const
{
    return m_Id;
}

void Dex_TokenDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool Dex_TokenDTO::idIsSet() const
{
    return m_IdIsSet;
}

void Dex_TokenDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t Dex_TokenDTO::getAddress() const
{
    return m_Address;
}

void Dex_TokenDTO::setAddress(const utility::string_t& value)
{
    m_Address = value;
    m_AddressIsSet = true;
}

bool Dex_TokenDTO::addressIsSet() const
{
    return m_AddressIsSet;
}

void Dex_TokenDTO::unsetAddress()
{
    m_AddressIsSet = false;
}
utility::string_t Dex_TokenDTO::getFromBatchId() const
{
    return m_From_batch_id;
}

void Dex_TokenDTO::setFromBatchId(const utility::string_t& value)
{
    m_From_batch_id = value;
    m_From_batch_idIsSet = true;
}

bool Dex_TokenDTO::fromBatchIdIsSet() const
{
    return m_From_batch_idIsSet;
}

void Dex_TokenDTO::unsetFrom_batch_id()
{
    m_From_batch_idIsSet = false;
}
utility::string_t Dex_TokenDTO::getSymbol() const
{
    return m_Symbol;
}

void Dex_TokenDTO::setSymbol(const utility::string_t& value)
{
    m_Symbol = value;
    m_SymbolIsSet = true;
}

bool Dex_TokenDTO::symbolIsSet() const
{
    return m_SymbolIsSet;
}

void Dex_TokenDTO::unsetSymbol()
{
    m_SymbolIsSet = false;
}
utility::string_t Dex_TokenDTO::getDecimals() const
{
    return m_Decimals;
}

void Dex_TokenDTO::setDecimals(const utility::string_t& value)
{
    m_Decimals = value;
    m_DecimalsIsSet = true;
}

bool Dex_TokenDTO::decimalsIsSet() const
{
    return m_DecimalsIsSet;
}

void Dex_TokenDTO::unsetDecimals()
{
    m_DecimalsIsSet = false;
}
utility::string_t Dex_TokenDTO::getName() const
{
    return m_Name;
}

void Dex_TokenDTO::setName(const utility::string_t& value)
{
    m_Name = value;
    m_NameIsSet = true;
}

bool Dex_TokenDTO::nameIsSet() const
{
    return m_NameIsSet;
}

void Dex_TokenDTO::unsetName()
{
    m_NameIsSet = false;
}
utility::string_t Dex_TokenDTO::getSellVolume() const
{
    return m_Sell_volume;
}

void Dex_TokenDTO::setSellVolume(const utility::string_t& value)
{
    m_Sell_volume = value;
    m_Sell_volumeIsSet = true;
}

bool Dex_TokenDTO::sellVolumeIsSet() const
{
    return m_Sell_volumeIsSet;
}

void Dex_TokenDTO::unsetSell_volume()
{
    m_Sell_volumeIsSet = false;
}
utility::string_t Dex_TokenDTO::getCreateEpoch() const
{
    return m_Create_epoch;
}

void Dex_TokenDTO::setCreateEpoch(const utility::string_t& value)
{
    m_Create_epoch = value;
    m_Create_epochIsSet = true;
}

bool Dex_TokenDTO::createEpochIsSet() const
{
    return m_Create_epochIsSet;
}

void Dex_TokenDTO::unsetCreate_epoch()
{
    m_Create_epochIsSet = false;
}
utility::string_t Dex_TokenDTO::getTxHash() const
{
    return m_Tx_hash;
}

void Dex_TokenDTO::setTxHash(const utility::string_t& value)
{
    m_Tx_hash = value;
    m_Tx_hashIsSet = true;
}

bool Dex_TokenDTO::txHashIsSet() const
{
    return m_Tx_hashIsSet;
}

void Dex_TokenDTO::unsetTx_hash()
{
    m_Tx_hashIsSet = false;
}
int64_t Dex_TokenDTO::getVid() const
{
    return m_Vid;
}

void Dex_TokenDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool Dex_TokenDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void Dex_TokenDTO::unsetVid()
{
    m_VidIsSet = false;
}
utility::string_t Dex_TokenDTO::getTokenSymbol() const
{
    return m_Token_symbol;
}

void Dex_TokenDTO::setTokenSymbol(const utility::string_t& value)
{
    m_Token_symbol = value;
    m_Token_symbolIsSet = true;
}

bool Dex_TokenDTO::tokenSymbolIsSet() const
{
    return m_Token_symbolIsSet;
}

void Dex_TokenDTO::unsetToken_symbol()
{
    m_Token_symbolIsSet = false;
}
}
}
}
}

