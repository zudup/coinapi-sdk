/**
 * EMS - REST API
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI-Generator 5.4.0.
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "ApiClient.h"
#include "MultipartFormData.h"
#include "ModelBase.h"

#include <sstream>
#include <limits>
#include <iomanip>

template <typename T>
utility::string_t toString(const T value)
{
  utility::ostringstream_t out;
  out << std::setprecision(std::numeric_limits<T>::digits10) << std::fixed << value;
  return out.str();
}

namespace org {
namespace openapitools {
namespace client {
namespace api {

using namespace org::openapitools::client::model;

ApiClient::ApiClient(std::shared_ptr<const ApiConfiguration> configuration )
    : m_Configuration(configuration)
{
}
ApiClient::~ApiClient()
{
}

const ApiClient::ResponseHandlerType& ApiClient::getResponseHandler() const {
    return m_ResponseHandler;
}

void ApiClient::setResponseHandler(const ResponseHandlerType& responseHandler) {
    m_ResponseHandler = responseHandler;
}

std::shared_ptr<const ApiConfiguration> ApiClient::getConfiguration() const
{
    return m_Configuration;
}
void ApiClient::setConfiguration(std::shared_ptr<const ApiConfiguration> configuration)
{
    m_Configuration = configuration;
}


utility::string_t ApiClient::parameterToString(utility::string_t value)
{
    return value;
}
utility::string_t ApiClient::parameterToString(int64_t value)
{
    std::stringstream valueAsStringStream;
    valueAsStringStream << value;
    return utility::conversions::to_string_t(valueAsStringStream.str());
}
utility::string_t ApiClient::parameterToString(int32_t value)
{
    std::stringstream valueAsStringStream;
    valueAsStringStream << value;
    return utility::conversions::to_string_t(valueAsStringStream.str());
}

utility::string_t ApiClient::parameterToString(float value)
{
    return utility::conversions::to_string_t(toString(value));
}

utility::string_t ApiClient::parameterToString(double value)
{
    return utility::conversions::to_string_t(toString(value));
}

utility::string_t ApiClient::parameterToString(const utility::datetime &value)
{
    return utility::conversions::to_string_t(value.to_string(utility::datetime::ISO_8601));
}

utility::string_t ApiClient::parameterToString(bool value)
{
    std::stringstream valueAsStringStream;
    valueAsStringStream << std::boolalpha << value;
    return utility::conversions::to_string_t(valueAsStringStream.str());
}

pplx::task<web::http::http_response> ApiClient::callApi(
    const utility::string_t& path,
    const utility::string_t& method,
    const std::map<utility::string_t, utility::string_t>& queryParams,
    const std::shared_ptr<IHttpBody> postBody,
    const std::map<utility::string_t, utility::string_t>& headerParams,
    const std::map<utility::string_t, utility::string_t>& formParams,
    const std::map<utility::string_t, std::shared_ptr<HttpContent>>& fileParams,
    const utility::string_t& contentType
) const
{
    if (postBody != nullptr && formParams.size() != 0)
    {
        throw ApiException(400, utility::conversions::to_string_t("Cannot have body and form params"));
    }

    if (postBody != nullptr && fileParams.size() != 0)
    {
        throw ApiException(400, utility::conversions::to_string_t("Cannot have body and file params"));
    }

    if (fileParams.size() > 0 && contentType != utility::conversions::to_string_t("multipart/form-data"))
    {
        throw ApiException(400, utility::conversions::to_string_t("Operations with file parameters must be called with multipart/form-data"));
    }

    web::http::client::http_client client(m_Configuration->getBaseUrl(), m_Configuration->getHttpConfig());

    web::http::http_request request;
    for (const auto& kvp : headerParams)
    {
        request.headers().add(kvp.first, kvp.second);
    }

    if (fileParams.size() > 0)
    {
        MultipartFormData uploadData;
        for (const auto& kvp : formParams)
        {
            uploadData.add(ModelBase::toHttpContent(kvp.first, kvp.second));
        }
        for (const auto& kvp : fileParams)
        {
            uploadData.add(ModelBase::toHttpContent(kvp.first, kvp.second));
        }
        std::stringstream data;
        uploadData.writeTo(data);
        auto bodyString = data.str();
        const auto length = bodyString.size();
        request.set_body(concurrency::streams::bytestream::open_istream(std::move(bodyString)), length, utility::conversions::to_string_t("multipart/form-data; boundary=") + uploadData.getBoundary());
    }
    else
    {
        if (postBody != nullptr)
        {
            std::stringstream data;
            postBody->writeTo(data);
            auto bodyString = data.str();
            const auto length = bodyString.size();
            request.set_body(concurrency::streams::bytestream::open_istream(std::move(bodyString)), length, contentType);
        }
        else
        {
            if (contentType == utility::conversions::to_string_t("application/json"))
            {
                web::json::value body_data = web::json::value::object();
                for (auto& kvp : formParams)
                {
                    body_data[kvp.first] = ModelBase::toJson(kvp.second);
                }
                if (!formParams.empty())
                {
                    request.set_body(body_data);
                }
            }
            else
            {
                web::http::uri_builder formData;
                for (const auto& kvp : formParams)
                {
                    formData.append_query(kvp.first, kvp.second);
                }
                if (!formParams.empty())
                {
                    request.set_body(formData.query(), utility::conversions::to_string_t("application/x-www-form-urlencoded"));
                }
            }
        }
    }

    web::http::uri_builder builder(path);
    for (const auto& kvp : queryParams)
    {
        builder.append_query(kvp.first, kvp.second);
    }
    request.set_request_uri(builder.to_uri());
    request.set_method(method);
    if ( !request.headers().has( web::http::header_names::user_agent ) )
    {
        request.headers().add( web::http::header_names::user_agent, m_Configuration->getUserAgent() );
    }

    return client.request(request);
}

}
}
}
}