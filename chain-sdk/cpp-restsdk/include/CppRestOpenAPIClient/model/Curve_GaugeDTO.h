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
 * Curve_GaugeDTO.h
 *
 * 
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_Curve_GaugeDTO_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_Curve_GaugeDTO_H_


#include "CppRestOpenAPIClient/ModelBase.h"

#include <cpprest/details/basic_types.h>

namespace org {
namespace openapitools {
namespace client {
namespace model {


/// <summary>
/// 
/// </summary>
class  Curve_GaugeDTO
    : public ModelBase
{
public:
    Curve_GaugeDTO();
    virtual ~Curve_GaugeDTO();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    /////////////////////////////////////////////
    /// Curve_GaugeDTO members

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
    /// 
    /// </summary>
    utility::string_t getId() const;
    bool idIsSet() const;
    void unsetId();

    void setId(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getAddress() const;
    bool addressIsSet() const;
    void unsetAddress();

    void setAddress(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getType() const;
    bool typeIsSet() const;
    void unsetType();

    void setType(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getPool() const;
    bool poolIsSet() const;
    void unsetPool();

    void setPool(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCreated() const;
    bool createdIsSet() const;
    void unsetCreated();

    void setCreated(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCreatedAtBlock() const;
    bool createdAtBlockIsSet() const;
    void unsetCreated_at_block();

    void setCreatedAtBlock(const utility::string_t& value);

    /// <summary>
    /// 
    /// </summary>
    utility::string_t getCreatedAtTransaction() const;
    bool createdAtTransactionIsSet() const;
    void unsetCreated_at_transaction();

    void setCreatedAtTransaction(const utility::string_t& value);

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
    utility::string_t m_Address;
    bool m_AddressIsSet;
    utility::string_t m_Type;
    bool m_TypeIsSet;
    utility::string_t m_Pool;
    bool m_PoolIsSet;
    utility::string_t m_Created;
    bool m_CreatedIsSet;
    utility::string_t m_Created_at_block;
    bool m_Created_at_blockIsSet;
    utility::string_t m_Created_at_transaction;
    bool m_Created_at_transactionIsSet;
    int64_t m_Vid;
    bool m_VidIsSet;
};


}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_Curve_GaugeDTO_H_ */
