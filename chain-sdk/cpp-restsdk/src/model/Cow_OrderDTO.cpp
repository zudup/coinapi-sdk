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



#include "CppRestOpenAPIClient/model/Cow_OrderDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Cow_OrderDTO::Cow_OrderDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Owner = utility::conversions::to_string_t("");
    m_OwnerIsSet = false;
    m_Trades_timestamp = utility::conversions::to_string_t("");
    m_Trades_timestampIsSet = false;
    m_Invalidate_timestamp = utility::conversions::to_string_t("");
    m_Invalidate_timestampIsSet = false;
    m_Presign_timestamp = utility::conversions::to_string_t("");
    m_Presign_timestampIsSet = false;
    m_Is_signed = false;
    m_Is_signedIsSet = false;
    m_Is_valid = false;
    m_Is_validIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

Cow_OrderDTO::~Cow_OrderDTO()
{
}

void Cow_OrderDTO::validate()
{
    // TODO: implement validation
}

web::json::value Cow_OrderDTO::toJson() const
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
    if(m_OwnerIsSet)
    {
        val[utility::conversions::to_string_t(U("owner"))] = ModelBase::toJson(m_Owner);
    }
    if(m_Trades_timestampIsSet)
    {
        val[utility::conversions::to_string_t(U("trades_timestamp"))] = ModelBase::toJson(m_Trades_timestamp);
    }
    if(m_Invalidate_timestampIsSet)
    {
        val[utility::conversions::to_string_t(U("invalidate_timestamp"))] = ModelBase::toJson(m_Invalidate_timestamp);
    }
    if(m_Presign_timestampIsSet)
    {
        val[utility::conversions::to_string_t(U("presign_timestamp"))] = ModelBase::toJson(m_Presign_timestamp);
    }
    if(m_Is_signedIsSet)
    {
        val[utility::conversions::to_string_t(U("is_signed"))] = ModelBase::toJson(m_Is_signed);
    }
    if(m_Is_validIsSet)
    {
        val[utility::conversions::to_string_t(U("is_valid"))] = ModelBase::toJson(m_Is_valid);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool Cow_OrderDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("owner"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("owner")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setOwner;
            ok &= ModelBase::fromJson(fieldValue, refVal_setOwner);
            setOwner(refVal_setOwner);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("trades_timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("trades_timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTradesTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTradesTimestamp);
            setTradesTimestamp(refVal_setTradesTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("invalidate_timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("invalidate_timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setInvalidateTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setInvalidateTimestamp);
            setInvalidateTimestamp(refVal_setInvalidateTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("presign_timestamp"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("presign_timestamp")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setPresignTimestamp;
            ok &= ModelBase::fromJson(fieldValue, refVal_setPresignTimestamp);
            setPresignTimestamp(refVal_setPresignTimestamp);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("is_signed"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("is_signed")));
        if(!fieldValue.is_null())
        {
            bool refVal_setIsSigned;
            ok &= ModelBase::fromJson(fieldValue, refVal_setIsSigned);
            setIsSigned(refVal_setIsSigned);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("is_valid"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("is_valid")));
        if(!fieldValue.is_null())
        {
            bool refVal_setIsValid;
            ok &= ModelBase::fromJson(fieldValue, refVal_setIsValid);
            setIsValid(refVal_setIsValid);
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

void Cow_OrderDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_OwnerIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("owner")), m_Owner));
    }
    if(m_Trades_timestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("trades_timestamp")), m_Trades_timestamp));
    }
    if(m_Invalidate_timestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("invalidate_timestamp")), m_Invalidate_timestamp));
    }
    if(m_Presign_timestampIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("presign_timestamp")), m_Presign_timestamp));
    }
    if(m_Is_signedIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("is_signed")), m_Is_signed));
    }
    if(m_Is_validIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("is_valid")), m_Is_valid));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool Cow_OrderDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("owner"))))
    {
        utility::string_t refVal_setOwner;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("owner"))), refVal_setOwner );
        setOwner(refVal_setOwner);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("trades_timestamp"))))
    {
        utility::string_t refVal_setTradesTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("trades_timestamp"))), refVal_setTradesTimestamp );
        setTradesTimestamp(refVal_setTradesTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("invalidate_timestamp"))))
    {
        utility::string_t refVal_setInvalidateTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("invalidate_timestamp"))), refVal_setInvalidateTimestamp );
        setInvalidateTimestamp(refVal_setInvalidateTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("presign_timestamp"))))
    {
        utility::string_t refVal_setPresignTimestamp;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("presign_timestamp"))), refVal_setPresignTimestamp );
        setPresignTimestamp(refVal_setPresignTimestamp);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("is_signed"))))
    {
        bool refVal_setIsSigned;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("is_signed"))), refVal_setIsSigned );
        setIsSigned(refVal_setIsSigned);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("is_valid"))))
    {
        bool refVal_setIsValid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("is_valid"))), refVal_setIsValid );
        setIsValid(refVal_setIsValid);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime Cow_OrderDTO::getEntryTime() const
{
    return m_Entry_time;
}

void Cow_OrderDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool Cow_OrderDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void Cow_OrderDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime Cow_OrderDTO::getRecvTime() const
{
    return m_Recv_time;
}

void Cow_OrderDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool Cow_OrderDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void Cow_OrderDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t Cow_OrderDTO::getBlockNumber() const
{
    return m_Block_number;
}

void Cow_OrderDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool Cow_OrderDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void Cow_OrderDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t Cow_OrderDTO::getId() const
{
    return m_Id;
}

void Cow_OrderDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool Cow_OrderDTO::idIsSet() const
{
    return m_IdIsSet;
}

void Cow_OrderDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t Cow_OrderDTO::getOwner() const
{
    return m_Owner;
}

void Cow_OrderDTO::setOwner(const utility::string_t& value)
{
    m_Owner = value;
    m_OwnerIsSet = true;
}

bool Cow_OrderDTO::ownerIsSet() const
{
    return m_OwnerIsSet;
}

void Cow_OrderDTO::unsetOwner()
{
    m_OwnerIsSet = false;
}
utility::string_t Cow_OrderDTO::getTradesTimestamp() const
{
    return m_Trades_timestamp;
}

void Cow_OrderDTO::setTradesTimestamp(const utility::string_t& value)
{
    m_Trades_timestamp = value;
    m_Trades_timestampIsSet = true;
}

bool Cow_OrderDTO::tradesTimestampIsSet() const
{
    return m_Trades_timestampIsSet;
}

void Cow_OrderDTO::unsetTrades_timestamp()
{
    m_Trades_timestampIsSet = false;
}
utility::string_t Cow_OrderDTO::getInvalidateTimestamp() const
{
    return m_Invalidate_timestamp;
}

void Cow_OrderDTO::setInvalidateTimestamp(const utility::string_t& value)
{
    m_Invalidate_timestamp = value;
    m_Invalidate_timestampIsSet = true;
}

bool Cow_OrderDTO::invalidateTimestampIsSet() const
{
    return m_Invalidate_timestampIsSet;
}

void Cow_OrderDTO::unsetInvalidate_timestamp()
{
    m_Invalidate_timestampIsSet = false;
}
utility::string_t Cow_OrderDTO::getPresignTimestamp() const
{
    return m_Presign_timestamp;
}

void Cow_OrderDTO::setPresignTimestamp(const utility::string_t& value)
{
    m_Presign_timestamp = value;
    m_Presign_timestampIsSet = true;
}

bool Cow_OrderDTO::presignTimestampIsSet() const
{
    return m_Presign_timestampIsSet;
}

void Cow_OrderDTO::unsetPresign_timestamp()
{
    m_Presign_timestampIsSet = false;
}
bool Cow_OrderDTO::isIsSigned() const
{
    return m_Is_signed;
}

void Cow_OrderDTO::setIsSigned(bool value)
{
    m_Is_signed = value;
    m_Is_signedIsSet = true;
}

bool Cow_OrderDTO::isSignedIsSet() const
{
    return m_Is_signedIsSet;
}

void Cow_OrderDTO::unsetIs_signed()
{
    m_Is_signedIsSet = false;
}
bool Cow_OrderDTO::isIsValid() const
{
    return m_Is_valid;
}

void Cow_OrderDTO::setIsValid(bool value)
{
    m_Is_valid = value;
    m_Is_validIsSet = true;
}

bool Cow_OrderDTO::isValidIsSet() const
{
    return m_Is_validIsSet;
}

void Cow_OrderDTO::unsetIs_valid()
{
    m_Is_validIsSet = false;
}
int64_t Cow_OrderDTO::getVid() const
{
    return m_Vid;
}

void Cow_OrderDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool Cow_OrderDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void Cow_OrderDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


