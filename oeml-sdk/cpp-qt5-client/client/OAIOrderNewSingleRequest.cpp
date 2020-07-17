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

#include "OAIOrderNewSingleRequest.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIOrderNewSingleRequest::OAIOrderNewSingleRequest(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIOrderNewSingleRequest::OAIOrderNewSingleRequest() {
    this->initializeModel();
}

OAIOrderNewSingleRequest::~OAIOrderNewSingleRequest() {}

void OAIOrderNewSingleRequest::initializeModel() {

    m_exchange_id_isSet = false;
    m_exchange_id_isValid = false;

    m_client_order_id_isSet = false;
    m_client_order_id_isValid = false;

    m_symbol_id_exchange_isSet = false;
    m_symbol_id_exchange_isValid = false;

    m_symbol_id_coinapi_isSet = false;
    m_symbol_id_coinapi_isValid = false;

    m_amount_order_isSet = false;
    m_amount_order_isValid = false;

    m_price_isSet = false;
    m_price_isValid = false;

    m_side_isSet = false;
    m_side_isValid = false;

    m_order_type_isSet = false;
    m_order_type_isValid = false;

    m_time_in_force_isSet = false;
    m_time_in_force_isValid = false;

    m_expire_time_isSet = false;
    m_expire_time_isValid = false;

    m_exec_inst_isSet = false;
    m_exec_inst_isValid = false;
}

void OAIOrderNewSingleRequest::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIOrderNewSingleRequest::fromJsonObject(QJsonObject json) {

    m_exchange_id_isValid = ::OpenAPI::fromJsonValue(exchange_id, json[QString("exchange_id")]);
    m_exchange_id_isSet = !json[QString("exchange_id")].isNull() && m_exchange_id_isValid;

    m_client_order_id_isValid = ::OpenAPI::fromJsonValue(client_order_id, json[QString("client_order_id")]);
    m_client_order_id_isSet = !json[QString("client_order_id")].isNull() && m_client_order_id_isValid;

    m_symbol_id_exchange_isValid = ::OpenAPI::fromJsonValue(symbol_id_exchange, json[QString("symbol_id_exchange")]);
    m_symbol_id_exchange_isSet = !json[QString("symbol_id_exchange")].isNull() && m_symbol_id_exchange_isValid;

    m_symbol_id_coinapi_isValid = ::OpenAPI::fromJsonValue(symbol_id_coinapi, json[QString("symbol_id_coinapi")]);
    m_symbol_id_coinapi_isSet = !json[QString("symbol_id_coinapi")].isNull() && m_symbol_id_coinapi_isValid;

    m_amount_order_isValid = ::OpenAPI::fromJsonValue(amount_order, json[QString("amount_order")]);
    m_amount_order_isSet = !json[QString("amount_order")].isNull() && m_amount_order_isValid;

    m_price_isValid = ::OpenAPI::fromJsonValue(price, json[QString("price")]);
    m_price_isSet = !json[QString("price")].isNull() && m_price_isValid;

    m_side_isValid = ::OpenAPI::fromJsonValue(side, json[QString("side")]);
    m_side_isSet = !json[QString("side")].isNull() && m_side_isValid;

    m_order_type_isValid = ::OpenAPI::fromJsonValue(order_type, json[QString("order_type")]);
    m_order_type_isSet = !json[QString("order_type")].isNull() && m_order_type_isValid;

    m_time_in_force_isValid = ::OpenAPI::fromJsonValue(time_in_force, json[QString("time_in_force")]);
    m_time_in_force_isSet = !json[QString("time_in_force")].isNull() && m_time_in_force_isValid;

    m_expire_time_isValid = ::OpenAPI::fromJsonValue(expire_time, json[QString("expire_time")]);
    m_expire_time_isSet = !json[QString("expire_time")].isNull() && m_expire_time_isValid;

    m_exec_inst_isValid = ::OpenAPI::fromJsonValue(exec_inst, json[QString("exec_inst")]);
    m_exec_inst_isSet = !json[QString("exec_inst")].isNull() && m_exec_inst_isValid;
}

QString OAIOrderNewSingleRequest::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIOrderNewSingleRequest::asJsonObject() const {
    QJsonObject obj;
    if (m_exchange_id_isSet) {
        obj.insert(QString("exchange_id"), ::OpenAPI::toJsonValue(exchange_id));
    }
    if (m_client_order_id_isSet) {
        obj.insert(QString("client_order_id"), ::OpenAPI::toJsonValue(client_order_id));
    }
    if (m_symbol_id_exchange_isSet) {
        obj.insert(QString("symbol_id_exchange"), ::OpenAPI::toJsonValue(symbol_id_exchange));
    }
    if (m_symbol_id_coinapi_isSet) {
        obj.insert(QString("symbol_id_coinapi"), ::OpenAPI::toJsonValue(symbol_id_coinapi));
    }
    if (m_amount_order_isSet) {
        obj.insert(QString("amount_order"), ::OpenAPI::toJsonValue(amount_order));
    }
    if (m_price_isSet) {
        obj.insert(QString("price"), ::OpenAPI::toJsonValue(price));
    }
    if (side.isSet()) {
        obj.insert(QString("side"), ::OpenAPI::toJsonValue(side));
    }
    if (order_type.isSet()) {
        obj.insert(QString("order_type"), ::OpenAPI::toJsonValue(order_type));
    }
    if (time_in_force.isSet()) {
        obj.insert(QString("time_in_force"), ::OpenAPI::toJsonValue(time_in_force));
    }
    if (m_expire_time_isSet) {
        obj.insert(QString("expire_time"), ::OpenAPI::toJsonValue(expire_time));
    }
    if (exec_inst.size() > 0) {
        obj.insert(QString("exec_inst"), ::OpenAPI::toJsonValue(exec_inst));
    }
    return obj;
}

QString OAIOrderNewSingleRequest::getExchangeId() const {
    return exchange_id;
}
void OAIOrderNewSingleRequest::setExchangeId(const QString &exchange_id) {
    this->exchange_id = exchange_id;
    this->m_exchange_id_isSet = true;
}

bool OAIOrderNewSingleRequest::is_exchange_id_Set() const{
    return m_exchange_id_isSet;
}

bool OAIOrderNewSingleRequest::is_exchange_id_Valid() const{
    return m_exchange_id_isValid;
}

QString OAIOrderNewSingleRequest::getClientOrderId() const {
    return client_order_id;
}
void OAIOrderNewSingleRequest::setClientOrderId(const QString &client_order_id) {
    this->client_order_id = client_order_id;
    this->m_client_order_id_isSet = true;
}

bool OAIOrderNewSingleRequest::is_client_order_id_Set() const{
    return m_client_order_id_isSet;
}

bool OAIOrderNewSingleRequest::is_client_order_id_Valid() const{
    return m_client_order_id_isValid;
}

QString OAIOrderNewSingleRequest::getSymbolIdExchange() const {
    return symbol_id_exchange;
}
void OAIOrderNewSingleRequest::setSymbolIdExchange(const QString &symbol_id_exchange) {
    this->symbol_id_exchange = symbol_id_exchange;
    this->m_symbol_id_exchange_isSet = true;
}

bool OAIOrderNewSingleRequest::is_symbol_id_exchange_Set() const{
    return m_symbol_id_exchange_isSet;
}

bool OAIOrderNewSingleRequest::is_symbol_id_exchange_Valid() const{
    return m_symbol_id_exchange_isValid;
}

QString OAIOrderNewSingleRequest::getSymbolIdCoinapi() const {
    return symbol_id_coinapi;
}
void OAIOrderNewSingleRequest::setSymbolIdCoinapi(const QString &symbol_id_coinapi) {
    this->symbol_id_coinapi = symbol_id_coinapi;
    this->m_symbol_id_coinapi_isSet = true;
}

bool OAIOrderNewSingleRequest::is_symbol_id_coinapi_Set() const{
    return m_symbol_id_coinapi_isSet;
}

bool OAIOrderNewSingleRequest::is_symbol_id_coinapi_Valid() const{
    return m_symbol_id_coinapi_isValid;
}

double OAIOrderNewSingleRequest::getAmountOrder() const {
    return amount_order;
}
void OAIOrderNewSingleRequest::setAmountOrder(const double &amount_order) {
    this->amount_order = amount_order;
    this->m_amount_order_isSet = true;
}

bool OAIOrderNewSingleRequest::is_amount_order_Set() const{
    return m_amount_order_isSet;
}

bool OAIOrderNewSingleRequest::is_amount_order_Valid() const{
    return m_amount_order_isValid;
}

double OAIOrderNewSingleRequest::getPrice() const {
    return price;
}
void OAIOrderNewSingleRequest::setPrice(const double &price) {
    this->price = price;
    this->m_price_isSet = true;
}

bool OAIOrderNewSingleRequest::is_price_Set() const{
    return m_price_isSet;
}

bool OAIOrderNewSingleRequest::is_price_Valid() const{
    return m_price_isValid;
}

OAIOrdSide OAIOrderNewSingleRequest::getSide() const {
    return side;
}
void OAIOrderNewSingleRequest::setSide(const OAIOrdSide &side) {
    this->side = side;
    this->m_side_isSet = true;
}

bool OAIOrderNewSingleRequest::is_side_Set() const{
    return m_side_isSet;
}

bool OAIOrderNewSingleRequest::is_side_Valid() const{
    return m_side_isValid;
}

OAIOrdType OAIOrderNewSingleRequest::getOrderType() const {
    return order_type;
}
void OAIOrderNewSingleRequest::setOrderType(const OAIOrdType &order_type) {
    this->order_type = order_type;
    this->m_order_type_isSet = true;
}

bool OAIOrderNewSingleRequest::is_order_type_Set() const{
    return m_order_type_isSet;
}

bool OAIOrderNewSingleRequest::is_order_type_Valid() const{
    return m_order_type_isValid;
}

OAITimeInForce OAIOrderNewSingleRequest::getTimeInForce() const {
    return time_in_force;
}
void OAIOrderNewSingleRequest::setTimeInForce(const OAITimeInForce &time_in_force) {
    this->time_in_force = time_in_force;
    this->m_time_in_force_isSet = true;
}

bool OAIOrderNewSingleRequest::is_time_in_force_Set() const{
    return m_time_in_force_isSet;
}

bool OAIOrderNewSingleRequest::is_time_in_force_Valid() const{
    return m_time_in_force_isValid;
}

QDate OAIOrderNewSingleRequest::getExpireTime() const {
    return expire_time;
}
void OAIOrderNewSingleRequest::setExpireTime(const QDate &expire_time) {
    this->expire_time = expire_time;
    this->m_expire_time_isSet = true;
}

bool OAIOrderNewSingleRequest::is_expire_time_Set() const{
    return m_expire_time_isSet;
}

bool OAIOrderNewSingleRequest::is_expire_time_Valid() const{
    return m_expire_time_isValid;
}

QList<QString> OAIOrderNewSingleRequest::getExecInst() const {
    return exec_inst;
}
void OAIOrderNewSingleRequest::setExecInst(const QList<QString> &exec_inst) {
    this->exec_inst = exec_inst;
    this->m_exec_inst_isSet = true;
}

bool OAIOrderNewSingleRequest::is_exec_inst_Set() const{
    return m_exec_inst_isSet;
}

bool OAIOrderNewSingleRequest::is_exec_inst_Valid() const{
    return m_exec_inst_isValid;
}

bool OAIOrderNewSingleRequest::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_exchange_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_client_order_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_symbol_id_exchange_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_symbol_id_coinapi_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_order_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_price_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (side.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (order_type.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (time_in_force.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (m_expire_time_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (exec_inst.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIOrderNewSingleRequest::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_exchange_id_isValid && m_client_order_id_isValid && m_amount_order_isValid && m_price_isValid && m_side_isValid && m_order_type_isValid && m_time_in_force_isValid && true;
}

} // namespace OpenAPI