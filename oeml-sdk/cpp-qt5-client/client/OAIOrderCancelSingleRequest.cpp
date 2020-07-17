/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

#include "OAIOrderCancelSingleRequest.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIOrderCancelSingleRequest::OAIOrderCancelSingleRequest(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIOrderCancelSingleRequest::OAIOrderCancelSingleRequest() {
    this->initializeModel();
}

OAIOrderCancelSingleRequest::~OAIOrderCancelSingleRequest() {}

void OAIOrderCancelSingleRequest::initializeModel() {

    m_exchange_id_isSet = false;
    m_exchange_id_isValid = false;

    m_exchange_order_id_isSet = false;
    m_exchange_order_id_isValid = false;

    m_client_order_id_isSet = false;
    m_client_order_id_isValid = false;
}

void OAIOrderCancelSingleRequest::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIOrderCancelSingleRequest::fromJsonObject(QJsonObject json) {

    m_exchange_id_isValid = ::OpenAPI::fromJsonValue(exchange_id, json[QString("exchange_id")]);
    m_exchange_id_isSet = !json[QString("exchange_id")].isNull() && m_exchange_id_isValid;

    m_exchange_order_id_isValid = ::OpenAPI::fromJsonValue(exchange_order_id, json[QString("exchange_order_id")]);
    m_exchange_order_id_isSet = !json[QString("exchange_order_id")].isNull() && m_exchange_order_id_isValid;

    m_client_order_id_isValid = ::OpenAPI::fromJsonValue(client_order_id, json[QString("client_order_id")]);
    m_client_order_id_isSet = !json[QString("client_order_id")].isNull() && m_client_order_id_isValid;
}

QString OAIOrderCancelSingleRequest::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIOrderCancelSingleRequest::asJsonObject() const {
    QJsonObject obj;
    if (m_exchange_id_isSet) {
        obj.insert(QString("exchange_id"), ::OpenAPI::toJsonValue(exchange_id));
    }
    if (m_exchange_order_id_isSet) {
        obj.insert(QString("exchange_order_id"), ::OpenAPI::toJsonValue(exchange_order_id));
    }
    if (m_client_order_id_isSet) {
        obj.insert(QString("client_order_id"), ::OpenAPI::toJsonValue(client_order_id));
    }
    return obj;
}

QString OAIOrderCancelSingleRequest::getExchangeId() const {
    return exchange_id;
}
void OAIOrderCancelSingleRequest::setExchangeId(const QString &exchange_id) {
    this->exchange_id = exchange_id;
    this->m_exchange_id_isSet = true;
}

bool OAIOrderCancelSingleRequest::is_exchange_id_Set() const{
    return m_exchange_id_isSet;
}

bool OAIOrderCancelSingleRequest::is_exchange_id_Valid() const{
    return m_exchange_id_isValid;
}

QString OAIOrderCancelSingleRequest::getExchangeOrderId() const {
    return exchange_order_id;
}
void OAIOrderCancelSingleRequest::setExchangeOrderId(const QString &exchange_order_id) {
    this->exchange_order_id = exchange_order_id;
    this->m_exchange_order_id_isSet = true;
}

bool OAIOrderCancelSingleRequest::is_exchange_order_id_Set() const{
    return m_exchange_order_id_isSet;
}

bool OAIOrderCancelSingleRequest::is_exchange_order_id_Valid() const{
    return m_exchange_order_id_isValid;
}

QString OAIOrderCancelSingleRequest::getClientOrderId() const {
    return client_order_id;
}
void OAIOrderCancelSingleRequest::setClientOrderId(const QString &client_order_id) {
    this->client_order_id = client_order_id;
    this->m_client_order_id_isSet = true;
}

bool OAIOrderCancelSingleRequest::is_client_order_id_Set() const{
    return m_client_order_id_isSet;
}

bool OAIOrderCancelSingleRequest::is_client_order_id_Valid() const{
    return m_client_order_id_isValid;
}

bool OAIOrderCancelSingleRequest::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_exchange_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_exchange_order_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_client_order_id_isSet) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIOrderCancelSingleRequest::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_exchange_id_isValid && true;
}

} // namespace OpenAPI