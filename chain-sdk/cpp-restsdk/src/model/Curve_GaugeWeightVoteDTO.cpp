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



#include "CppRestOpenAPIClient/model/Curve_GaugeWeightVoteDTO.h"

namespace org {
namespace openapitools {
namespace client {
namespace model {



Curve_GaugeWeightVoteDTO::Curve_GaugeWeightVoteDTO()
{
    m_Entry_time = utility::datetime();
    m_Entry_timeIsSet = false;
    m_Recv_time = utility::datetime();
    m_Recv_timeIsSet = false;
    m_Block_number = 0L;
    m_Block_numberIsSet = false;
    m_Id = utility::conversions::to_string_t("");
    m_IdIsSet = false;
    m_Gauge = utility::conversions::to_string_t("");
    m_GaugeIsSet = false;
    m_User = utility::conversions::to_string_t("");
    m_UserIsSet = false;
    m_Time = utility::conversions::to_string_t("");
    m_TimeIsSet = false;
    m_Weight = utility::conversions::to_string_t("");
    m_WeightIsSet = false;
    m_Vid = 0L;
    m_VidIsSet = false;
}

Curve_GaugeWeightVoteDTO::~Curve_GaugeWeightVoteDTO()
{
}

void Curve_GaugeWeightVoteDTO::validate()
{
    // TODO: implement validation
}

web::json::value Curve_GaugeWeightVoteDTO::toJson() const
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
    if(m_GaugeIsSet)
    {
        val[utility::conversions::to_string_t(U("gauge"))] = ModelBase::toJson(m_Gauge);
    }
    if(m_UserIsSet)
    {
        val[utility::conversions::to_string_t(U("user"))] = ModelBase::toJson(m_User);
    }
    if(m_TimeIsSet)
    {
        val[utility::conversions::to_string_t(U("time"))] = ModelBase::toJson(m_Time);
    }
    if(m_WeightIsSet)
    {
        val[utility::conversions::to_string_t(U("weight"))] = ModelBase::toJson(m_Weight);
    }
    if(m_VidIsSet)
    {
        val[utility::conversions::to_string_t(U("vid"))] = ModelBase::toJson(m_Vid);
    }

    return val;
}

bool Curve_GaugeWeightVoteDTO::fromJson(const web::json::value& val)
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
    if(val.has_field(utility::conversions::to_string_t(U("gauge"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("gauge")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setGauge;
            ok &= ModelBase::fromJson(fieldValue, refVal_setGauge);
            setGauge(refVal_setGauge);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("user"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("user")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setUser;
            ok &= ModelBase::fromJson(fieldValue, refVal_setUser);
            setUser(refVal_setUser);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("time"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("time")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setTime;
            ok &= ModelBase::fromJson(fieldValue, refVal_setTime);
            setTime(refVal_setTime);
        }
    }
    if(val.has_field(utility::conversions::to_string_t(U("weight"))))
    {
        const web::json::value& fieldValue = val.at(utility::conversions::to_string_t(U("weight")));
        if(!fieldValue.is_null())
        {
            utility::string_t refVal_setWeight;
            ok &= ModelBase::fromJson(fieldValue, refVal_setWeight);
            setWeight(refVal_setWeight);
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

void Curve_GaugeWeightVoteDTO::toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix) const
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
    if(m_GaugeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("gauge")), m_Gauge));
    }
    if(m_UserIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("user")), m_User));
    }
    if(m_TimeIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("time")), m_Time));
    }
    if(m_WeightIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("weight")), m_Weight));
    }
    if(m_VidIsSet)
    {
        multipart->add(ModelBase::toHttpContent(namePrefix + utility::conversions::to_string_t(U("vid")), m_Vid));
    }
}

bool Curve_GaugeWeightVoteDTO::fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& prefix)
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
    if(multipart->hasContent(utility::conversions::to_string_t(U("gauge"))))
    {
        utility::string_t refVal_setGauge;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("gauge"))), refVal_setGauge );
        setGauge(refVal_setGauge);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("user"))))
    {
        utility::string_t refVal_setUser;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("user"))), refVal_setUser );
        setUser(refVal_setUser);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("time"))))
    {
        utility::string_t refVal_setTime;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("time"))), refVal_setTime );
        setTime(refVal_setTime);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("weight"))))
    {
        utility::string_t refVal_setWeight;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("weight"))), refVal_setWeight );
        setWeight(refVal_setWeight);
    }
    if(multipart->hasContent(utility::conversions::to_string_t(U("vid"))))
    {
        int64_t refVal_setVid;
        ok &= ModelBase::fromHttpContent(multipart->getContent(utility::conversions::to_string_t(U("vid"))), refVal_setVid );
        setVid(refVal_setVid);
    }
    return ok;
}

utility::datetime Curve_GaugeWeightVoteDTO::getEntryTime() const
{
    return m_Entry_time;
}

void Curve_GaugeWeightVoteDTO::setEntryTime(const utility::datetime& value)
{
    m_Entry_time = value;
    m_Entry_timeIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::entryTimeIsSet() const
{
    return m_Entry_timeIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetEntry_time()
{
    m_Entry_timeIsSet = false;
}
utility::datetime Curve_GaugeWeightVoteDTO::getRecvTime() const
{
    return m_Recv_time;
}

void Curve_GaugeWeightVoteDTO::setRecvTime(const utility::datetime& value)
{
    m_Recv_time = value;
    m_Recv_timeIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::recvTimeIsSet() const
{
    return m_Recv_timeIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetRecv_time()
{
    m_Recv_timeIsSet = false;
}
int64_t Curve_GaugeWeightVoteDTO::getBlockNumber() const
{
    return m_Block_number;
}

void Curve_GaugeWeightVoteDTO::setBlockNumber(int64_t value)
{
    m_Block_number = value;
    m_Block_numberIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::blockNumberIsSet() const
{
    return m_Block_numberIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetBlock_number()
{
    m_Block_numberIsSet = false;
}
utility::string_t Curve_GaugeWeightVoteDTO::getId() const
{
    return m_Id;
}

void Curve_GaugeWeightVoteDTO::setId(const utility::string_t& value)
{
    m_Id = value;
    m_IdIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::idIsSet() const
{
    return m_IdIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetId()
{
    m_IdIsSet = false;
}
utility::string_t Curve_GaugeWeightVoteDTO::getGauge() const
{
    return m_Gauge;
}

void Curve_GaugeWeightVoteDTO::setGauge(const utility::string_t& value)
{
    m_Gauge = value;
    m_GaugeIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::gaugeIsSet() const
{
    return m_GaugeIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetGauge()
{
    m_GaugeIsSet = false;
}
utility::string_t Curve_GaugeWeightVoteDTO::getUser() const
{
    return m_User;
}

void Curve_GaugeWeightVoteDTO::setUser(const utility::string_t& value)
{
    m_User = value;
    m_UserIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::userIsSet() const
{
    return m_UserIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetUser()
{
    m_UserIsSet = false;
}
utility::string_t Curve_GaugeWeightVoteDTO::getTime() const
{
    return m_Time;
}

void Curve_GaugeWeightVoteDTO::setTime(const utility::string_t& value)
{
    m_Time = value;
    m_TimeIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::timeIsSet() const
{
    return m_TimeIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetTime()
{
    m_TimeIsSet = false;
}
utility::string_t Curve_GaugeWeightVoteDTO::getWeight() const
{
    return m_Weight;
}

void Curve_GaugeWeightVoteDTO::setWeight(const utility::string_t& value)
{
    m_Weight = value;
    m_WeightIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::weightIsSet() const
{
    return m_WeightIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetWeight()
{
    m_WeightIsSet = false;
}
int64_t Curve_GaugeWeightVoteDTO::getVid() const
{
    return m_Vid;
}

void Curve_GaugeWeightVoteDTO::setVid(int64_t value)
{
    m_Vid = value;
    m_VidIsSet = true;
}

bool Curve_GaugeWeightVoteDTO::vidIsSet() const
{
    return m_VidIsSet;
}

void Curve_GaugeWeightVoteDTO::unsetVid()
{
    m_VidIsSet = false;
}
}
}
}
}


