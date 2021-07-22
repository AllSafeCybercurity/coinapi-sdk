/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.2.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

/*
 * RejectReason.h
 *
 * Cause of rejection.
 */

#ifndef ORG_OPENAPITOOLS_CLIENT_MODEL_RejectReason_H_
#define ORG_OPENAPITOOLS_CLIENT_MODEL_RejectReason_H_


#include "../ModelBase.h"


namespace org {
namespace openapitools {
namespace client {
namespace model {

class  RejectReason
    : public ModelBase
{
public:
    RejectReason();
    virtual ~RejectReason();

    /////////////////////////////////////////////
    /// ModelBase overrides

    void validate() override;

    web::json::value toJson() const override;
    bool fromJson(const web::json::value& json) override;

    void toMultipart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) const override;
    bool fromMultiPart(std::shared_ptr<MultipartFormData> multipart, const utility::string_t& namePrefix) override;

    enum class eRejectReason
    {
        RejectReason_OTHER,
        RejectReason_EXCHANGE_UNREACHABLE,
        RejectReason_EXCHANGE_RESPONSE_TIMEOUT,
        RejectReason_ORDER_ID_NOT_FOUND,
        RejectReason_INVALID_TYPE,
        RejectReason_METHOD_NOT_SUPPORTED,
        RejectReason_JSON_ERROR,
    };

    eRejectReason getValue() const;
    void setValue(eRejectReason const value);

    protected:
        eRejectReason m_value;
};

}
}
}
}

#endif /* ORG_OPENAPITOOLS_CLIENT_MODEL_RejectReason_H_ */