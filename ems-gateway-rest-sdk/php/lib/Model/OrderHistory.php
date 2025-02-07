<?php
/**
 * OrderHistory
 *
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside>
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 6.2.1
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * OrderHistory Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class OrderHistory implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'OrderHistory';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'apikey' => 'string',
        'exchange_id' => 'string',
        'client_order_id' => 'string',
        'symbol_id_exchange' => 'string',
        'symbol_id_coinapi' => 'string',
        'amount_order' => 'float',
        'price' => 'float',
        'side' => 'float',
        'order_type' => 'string',
        'time_in_force' => 'string',
        'expire_time' => '\DateTime',
        'exec_inst' => 'string[]',
        'client_order_id_format_exchange' => 'string',
        'exchange_order_id' => 'string',
        'amount_open' => 'float',
        'amount_filled' => 'float',
        'avg_px' => 'float',
        'status' => 'string',
        'status_history_status' => 'string[]',
        'status_history_time' => '\DateTime[]',
        'error_message_result' => 'string',
        'error_message_reason' => 'string',
        'error_message_message' => 'string',
        'fills_time' => '\DateTime[]',
        'fills_price' => 'float[]',
        'fills_amount' => 'float[]',
        'created_time' => '\DateTime'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'apikey' => null,
        'exchange_id' => null,
        'client_order_id' => null,
        'symbol_id_exchange' => null,
        'symbol_id_coinapi' => null,
        'amount_order' => null,
        'price' => null,
        'side' => null,
        'order_type' => null,
        'time_in_force' => null,
        'expire_time' => null,
        'exec_inst' => null,
        'client_order_id_format_exchange' => null,
        'exchange_order_id' => null,
        'amount_open' => null,
        'amount_filled' => null,
        'avg_px' => null,
        'status' => null,
        'status_history_status' => null,
        'status_history_time' => null,
        'error_message_result' => null,
        'error_message_reason' => null,
        'error_message_message' => null,
        'fills_time' => null,
        'fills_price' => null,
        'fills_amount' => null,
        'created_time' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'apikey' => false,
		'exchange_id' => false,
		'client_order_id' => false,
		'symbol_id_exchange' => false,
		'symbol_id_coinapi' => false,
		'amount_order' => false,
		'price' => false,
		'side' => false,
		'order_type' => false,
		'time_in_force' => false,
		'expire_time' => false,
		'exec_inst' => false,
		'client_order_id_format_exchange' => false,
		'exchange_order_id' => false,
		'amount_open' => false,
		'amount_filled' => false,
		'avg_px' => false,
		'status' => false,
		'status_history_status' => false,
		'status_history_time' => false,
		'error_message_result' => false,
		'error_message_reason' => false,
		'error_message_message' => false,
		'fills_time' => false,
		'fills_price' => false,
		'fills_amount' => false,
		'created_time' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'apikey' => 'apikey',
        'exchange_id' => 'exchangeId',
        'client_order_id' => 'clientOrderId',
        'symbol_id_exchange' => 'symbolIdExchange',
        'symbol_id_coinapi' => 'symbolIdCoinapi',
        'amount_order' => 'amountOrder',
        'price' => 'price',
        'side' => 'side',
        'order_type' => 'orderType',
        'time_in_force' => 'timeInForce',
        'expire_time' => 'expireTime',
        'exec_inst' => 'execInst',
        'client_order_id_format_exchange' => 'clientOrderIdFormatExchange',
        'exchange_order_id' => 'exchangeOrderId',
        'amount_open' => 'amountOpen',
        'amount_filled' => 'amountFilled',
        'avg_px' => 'avgPx',
        'status' => 'status',
        'status_history_status' => 'statusHistoryStatus',
        'status_history_time' => 'statusHistoryTime',
        'error_message_result' => 'errorMessageResult',
        'error_message_reason' => 'errorMessageReason',
        'error_message_message' => 'errorMessageMessage',
        'fills_time' => 'fillsTime',
        'fills_price' => 'fillsPrice',
        'fills_amount' => 'fillsAmount',
        'created_time' => 'createdTime'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'apikey' => 'setApikey',
        'exchange_id' => 'setExchangeId',
        'client_order_id' => 'setClientOrderId',
        'symbol_id_exchange' => 'setSymbolIdExchange',
        'symbol_id_coinapi' => 'setSymbolIdCoinapi',
        'amount_order' => 'setAmountOrder',
        'price' => 'setPrice',
        'side' => 'setSide',
        'order_type' => 'setOrderType',
        'time_in_force' => 'setTimeInForce',
        'expire_time' => 'setExpireTime',
        'exec_inst' => 'setExecInst',
        'client_order_id_format_exchange' => 'setClientOrderIdFormatExchange',
        'exchange_order_id' => 'setExchangeOrderId',
        'amount_open' => 'setAmountOpen',
        'amount_filled' => 'setAmountFilled',
        'avg_px' => 'setAvgPx',
        'status' => 'setStatus',
        'status_history_status' => 'setStatusHistoryStatus',
        'status_history_time' => 'setStatusHistoryTime',
        'error_message_result' => 'setErrorMessageResult',
        'error_message_reason' => 'setErrorMessageReason',
        'error_message_message' => 'setErrorMessageMessage',
        'fills_time' => 'setFillsTime',
        'fills_price' => 'setFillsPrice',
        'fills_amount' => 'setFillsAmount',
        'created_time' => 'setCreatedTime'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'apikey' => 'getApikey',
        'exchange_id' => 'getExchangeId',
        'client_order_id' => 'getClientOrderId',
        'symbol_id_exchange' => 'getSymbolIdExchange',
        'symbol_id_coinapi' => 'getSymbolIdCoinapi',
        'amount_order' => 'getAmountOrder',
        'price' => 'getPrice',
        'side' => 'getSide',
        'order_type' => 'getOrderType',
        'time_in_force' => 'getTimeInForce',
        'expire_time' => 'getExpireTime',
        'exec_inst' => 'getExecInst',
        'client_order_id_format_exchange' => 'getClientOrderIdFormatExchange',
        'exchange_order_id' => 'getExchangeOrderId',
        'amount_open' => 'getAmountOpen',
        'amount_filled' => 'getAmountFilled',
        'avg_px' => 'getAvgPx',
        'status' => 'getStatus',
        'status_history_status' => 'getStatusHistoryStatus',
        'status_history_time' => 'getStatusHistoryTime',
        'error_message_result' => 'getErrorMessageResult',
        'error_message_reason' => 'getErrorMessageReason',
        'error_message_message' => 'getErrorMessageMessage',
        'fills_time' => 'getFillsTime',
        'fills_price' => 'getFillsPrice',
        'fills_amount' => 'getFillsAmount',
        'created_time' => 'getCreatedTime'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('apikey', $data ?? [], null);
        $this->setIfExists('exchange_id', $data ?? [], null);
        $this->setIfExists('client_order_id', $data ?? [], null);
        $this->setIfExists('symbol_id_exchange', $data ?? [], null);
        $this->setIfExists('symbol_id_coinapi', $data ?? [], null);
        $this->setIfExists('amount_order', $data ?? [], null);
        $this->setIfExists('price', $data ?? [], null);
        $this->setIfExists('side', $data ?? [], null);
        $this->setIfExists('order_type', $data ?? [], null);
        $this->setIfExists('time_in_force', $data ?? [], null);
        $this->setIfExists('expire_time', $data ?? [], null);
        $this->setIfExists('exec_inst', $data ?? [], null);
        $this->setIfExists('client_order_id_format_exchange', $data ?? [], null);
        $this->setIfExists('exchange_order_id', $data ?? [], null);
        $this->setIfExists('amount_open', $data ?? [], null);
        $this->setIfExists('amount_filled', $data ?? [], null);
        $this->setIfExists('avg_px', $data ?? [], null);
        $this->setIfExists('status', $data ?? [], null);
        $this->setIfExists('status_history_status', $data ?? [], null);
        $this->setIfExists('status_history_time', $data ?? [], null);
        $this->setIfExists('error_message_result', $data ?? [], null);
        $this->setIfExists('error_message_reason', $data ?? [], null);
        $this->setIfExists('error_message_message', $data ?? [], null);
        $this->setIfExists('fills_time', $data ?? [], null);
        $this->setIfExists('fills_price', $data ?? [], null);
        $this->setIfExists('fills_amount', $data ?? [], null);
        $this->setIfExists('created_time', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets apikey
     *
     * @return string|null
     */
    public function getApikey()
    {
        return $this->container['apikey'];
    }

    /**
     * Sets apikey
     *
     * @param string|null $apikey Apikey
     *
     * @return self
     */
    public function setApikey($apikey)
    {

        if (is_null($apikey)) {
            throw new \InvalidArgumentException('non-nullable apikey cannot be null');
        }

        $this->container['apikey'] = $apikey;

        return $this;
    }

    /**
     * Gets exchange_id
     *
     * @return string|null
     */
    public function getExchangeId()
    {
        return $this->container['exchange_id'];
    }

    /**
     * Sets exchange_id
     *
     * @param string|null $exchange_id Exchange id
     *
     * @return self
     */
    public function setExchangeId($exchange_id)
    {

        if (is_null($exchange_id)) {
            throw new \InvalidArgumentException('non-nullable exchange_id cannot be null');
        }

        $this->container['exchange_id'] = $exchange_id;

        return $this;
    }

    /**
     * Gets client_order_id
     *
     * @return string|null
     */
    public function getClientOrderId()
    {
        return $this->container['client_order_id'];
    }

    /**
     * Sets client_order_id
     *
     * @param string|null $client_order_id Client order id
     *
     * @return self
     */
    public function setClientOrderId($client_order_id)
    {

        if (is_null($client_order_id)) {
            throw new \InvalidArgumentException('non-nullable client_order_id cannot be null');
        }

        $this->container['client_order_id'] = $client_order_id;

        return $this;
    }

    /**
     * Gets symbol_id_exchange
     *
     * @return string|null
     */
    public function getSymbolIdExchange()
    {
        return $this->container['symbol_id_exchange'];
    }

    /**
     * Sets symbol_id_exchange
     *
     * @param string|null $symbol_id_exchange Symbol id exchange
     *
     * @return self
     */
    public function setSymbolIdExchange($symbol_id_exchange)
    {

        if (is_null($symbol_id_exchange)) {
            throw new \InvalidArgumentException('non-nullable symbol_id_exchange cannot be null');
        }

        $this->container['symbol_id_exchange'] = $symbol_id_exchange;

        return $this;
    }

    /**
     * Gets symbol_id_coinapi
     *
     * @return string|null
     */
    public function getSymbolIdCoinapi()
    {
        return $this->container['symbol_id_coinapi'];
    }

    /**
     * Sets symbol_id_coinapi
     *
     * @param string|null $symbol_id_coinapi Symbol id in coinapi
     *
     * @return self
     */
    public function setSymbolIdCoinapi($symbol_id_coinapi)
    {

        if (is_null($symbol_id_coinapi)) {
            throw new \InvalidArgumentException('non-nullable symbol_id_coinapi cannot be null');
        }

        $this->container['symbol_id_coinapi'] = $symbol_id_coinapi;

        return $this;
    }

    /**
     * Gets amount_order
     *
     * @return float|null
     */
    public function getAmountOrder()
    {
        return $this->container['amount_order'];
    }

    /**
     * Sets amount_order
     *
     * @param float|null $amount_order Amount
     *
     * @return self
     */
    public function setAmountOrder($amount_order)
    {

        if (is_null($amount_order)) {
            throw new \InvalidArgumentException('non-nullable amount_order cannot be null');
        }

        $this->container['amount_order'] = $amount_order;

        return $this;
    }

    /**
     * Gets price
     *
     * @return float|null
     */
    public function getPrice()
    {
        return $this->container['price'];
    }

    /**
     * Sets price
     *
     * @param float|null $price Price
     *
     * @return self
     */
    public function setPrice($price)
    {

        if (is_null($price)) {
            throw new \InvalidArgumentException('non-nullable price cannot be null');
        }

        $this->container['price'] = $price;

        return $this;
    }

    /**
     * Gets side
     *
     * @return float|null
     */
    public function getSide()
    {
        return $this->container['side'];
    }

    /**
     * Sets side
     *
     * @param float|null $side 1-buy, 2-sell
     *
     * @return self
     */
    public function setSide($side)
    {

        if (is_null($side)) {
            throw new \InvalidArgumentException('non-nullable side cannot be null');
        }

        $this->container['side'] = $side;

        return $this;
    }

    /**
     * Gets order_type
     *
     * @return string|null
     */
    public function getOrderType()
    {
        return $this->container['order_type'];
    }

    /**
     * Sets order_type
     *
     * @param string|null $order_type Order type
     *
     * @return self
     */
    public function setOrderType($order_type)
    {

        if (is_null($order_type)) {
            throw new \InvalidArgumentException('non-nullable order_type cannot be null');
        }

        $this->container['order_type'] = $order_type;

        return $this;
    }

    /**
     * Gets time_in_force
     *
     * @return string|null
     */
    public function getTimeInForce()
    {
        return $this->container['time_in_force'];
    }

    /**
     * Sets time_in_force
     *
     * @param string|null $time_in_force Time in force
     *
     * @return self
     */
    public function setTimeInForce($time_in_force)
    {

        if (is_null($time_in_force)) {
            throw new \InvalidArgumentException('non-nullable time_in_force cannot be null');
        }

        $this->container['time_in_force'] = $time_in_force;

        return $this;
    }

    /**
     * Gets expire_time
     *
     * @return \DateTime|null
     */
    public function getExpireTime()
    {
        return $this->container['expire_time'];
    }

    /**
     * Sets expire_time
     *
     * @param \DateTime|null $expire_time Expire time
     *
     * @return self
     */
    public function setExpireTime($expire_time)
    {

        if (is_null($expire_time)) {
            throw new \InvalidArgumentException('non-nullable expire_time cannot be null');
        }

        $this->container['expire_time'] = $expire_time;

        return $this;
    }

    /**
     * Gets exec_inst
     *
     * @return string[]|null
     */
    public function getExecInst()
    {
        return $this->container['exec_inst'];
    }

    /**
     * Sets exec_inst
     *
     * @param string[]|null $exec_inst Exec inst
     *
     * @return self
     */
    public function setExecInst($exec_inst)
    {

        if (is_null($exec_inst)) {
            throw new \InvalidArgumentException('non-nullable exec_inst cannot be null');
        }

        $this->container['exec_inst'] = $exec_inst;

        return $this;
    }

    /**
     * Gets client_order_id_format_exchange
     *
     * @return string|null
     */
    public function getClientOrderIdFormatExchange()
    {
        return $this->container['client_order_id_format_exchange'];
    }

    /**
     * Sets client_order_id_format_exchange
     *
     * @param string|null $client_order_id_format_exchange Client order id format
     *
     * @return self
     */
    public function setClientOrderIdFormatExchange($client_order_id_format_exchange)
    {

        if (is_null($client_order_id_format_exchange)) {
            throw new \InvalidArgumentException('non-nullable client_order_id_format_exchange cannot be null');
        }

        $this->container['client_order_id_format_exchange'] = $client_order_id_format_exchange;

        return $this;
    }

    /**
     * Gets exchange_order_id
     *
     * @return string|null
     */
    public function getExchangeOrderId()
    {
        return $this->container['exchange_order_id'];
    }

    /**
     * Sets exchange_order_id
     *
     * @param string|null $exchange_order_id Exchange order id
     *
     * @return self
     */
    public function setExchangeOrderId($exchange_order_id)
    {

        if (is_null($exchange_order_id)) {
            throw new \InvalidArgumentException('non-nullable exchange_order_id cannot be null');
        }

        $this->container['exchange_order_id'] = $exchange_order_id;

        return $this;
    }

    /**
     * Gets amount_open
     *
     * @return float|null
     */
    public function getAmountOpen()
    {
        return $this->container['amount_open'];
    }

    /**
     * Sets amount_open
     *
     * @param float|null $amount_open Amount open
     *
     * @return self
     */
    public function setAmountOpen($amount_open)
    {

        if (is_null($amount_open)) {
            throw new \InvalidArgumentException('non-nullable amount_open cannot be null');
        }

        $this->container['amount_open'] = $amount_open;

        return $this;
    }

    /**
     * Gets amount_filled
     *
     * @return float|null
     */
    public function getAmountFilled()
    {
        return $this->container['amount_filled'];
    }

    /**
     * Sets amount_filled
     *
     * @param float|null $amount_filled Amount filled
     *
     * @return self
     */
    public function setAmountFilled($amount_filled)
    {

        if (is_null($amount_filled)) {
            throw new \InvalidArgumentException('non-nullable amount_filled cannot be null');
        }

        $this->container['amount_filled'] = $amount_filled;

        return $this;
    }

    /**
     * Gets avg_px
     *
     * @return float|null
     */
    public function getAvgPx()
    {
        return $this->container['avg_px'];
    }

    /**
     * Sets avg_px
     *
     * @param float|null $avg_px Average price
     *
     * @return self
     */
    public function setAvgPx($avg_px)
    {

        if (is_null($avg_px)) {
            throw new \InvalidArgumentException('non-nullable avg_px cannot be null');
        }

        $this->container['avg_px'] = $avg_px;

        return $this;
    }

    /**
     * Gets status
     *
     * @return string|null
     */
    public function getStatus()
    {
        return $this->container['status'];
    }

    /**
     * Sets status
     *
     * @param string|null $status Status
     *
     * @return self
     */
    public function setStatus($status)
    {

        if (is_null($status)) {
            throw new \InvalidArgumentException('non-nullable status cannot be null');
        }

        $this->container['status'] = $status;

        return $this;
    }

    /**
     * Gets status_history_status
     *
     * @return string[]|null
     */
    public function getStatusHistoryStatus()
    {
        return $this->container['status_history_status'];
    }

    /**
     * Sets status_history_status
     *
     * @param string[]|null $status_history_status History status
     *
     * @return self
     */
    public function setStatusHistoryStatus($status_history_status)
    {

        if (is_null($status_history_status)) {
            throw new \InvalidArgumentException('non-nullable status_history_status cannot be null');
        }

        $this->container['status_history_status'] = $status_history_status;

        return $this;
    }

    /**
     * Gets status_history_time
     *
     * @return \DateTime[]|null
     */
    public function getStatusHistoryTime()
    {
        return $this->container['status_history_time'];
    }

    /**
     * Sets status_history_time
     *
     * @param \DateTime[]|null $status_history_time History status time
     *
     * @return self
     */
    public function setStatusHistoryTime($status_history_time)
    {

        if (is_null($status_history_time)) {
            throw new \InvalidArgumentException('non-nullable status_history_time cannot be null');
        }

        $this->container['status_history_time'] = $status_history_time;

        return $this;
    }

    /**
     * Gets error_message_result
     *
     * @return string|null
     */
    public function getErrorMessageResult()
    {
        return $this->container['error_message_result'];
    }

    /**
     * Sets error_message_result
     *
     * @param string|null $error_message_result Error message
     *
     * @return self
     */
    public function setErrorMessageResult($error_message_result)
    {

        if (is_null($error_message_result)) {
            throw new \InvalidArgumentException('non-nullable error_message_result cannot be null');
        }

        $this->container['error_message_result'] = $error_message_result;

        return $this;
    }

    /**
     * Gets error_message_reason
     *
     * @return string|null
     */
    public function getErrorMessageReason()
    {
        return $this->container['error_message_reason'];
    }

    /**
     * Sets error_message_reason
     *
     * @param string|null $error_message_reason Error message reason
     *
     * @return self
     */
    public function setErrorMessageReason($error_message_reason)
    {

        if (is_null($error_message_reason)) {
            throw new \InvalidArgumentException('non-nullable error_message_reason cannot be null');
        }

        $this->container['error_message_reason'] = $error_message_reason;

        return $this;
    }

    /**
     * Gets error_message_message
     *
     * @return string|null
     */
    public function getErrorMessageMessage()
    {
        return $this->container['error_message_message'];
    }

    /**
     * Sets error_message_message
     *
     * @param string|null $error_message_message Error message
     *
     * @return self
     */
    public function setErrorMessageMessage($error_message_message)
    {

        if (is_null($error_message_message)) {
            throw new \InvalidArgumentException('non-nullable error_message_message cannot be null');
        }

        $this->container['error_message_message'] = $error_message_message;

        return $this;
    }

    /**
     * Gets fills_time
     *
     * @return \DateTime[]|null
     */
    public function getFillsTime()
    {
        return $this->container['fills_time'];
    }

    /**
     * Sets fills_time
     *
     * @param \DateTime[]|null $fills_time Fills time
     *
     * @return self
     */
    public function setFillsTime($fills_time)
    {

        if (is_null($fills_time)) {
            throw new \InvalidArgumentException('non-nullable fills_time cannot be null');
        }

        $this->container['fills_time'] = $fills_time;

        return $this;
    }

    /**
     * Gets fills_price
     *
     * @return float[]|null
     */
    public function getFillsPrice()
    {
        return $this->container['fills_price'];
    }

    /**
     * Sets fills_price
     *
     * @param float[]|null $fills_price Fills price
     *
     * @return self
     */
    public function setFillsPrice($fills_price)
    {

        if (is_null($fills_price)) {
            throw new \InvalidArgumentException('non-nullable fills_price cannot be null');
        }

        $this->container['fills_price'] = $fills_price;

        return $this;
    }

    /**
     * Gets fills_amount
     *
     * @return float[]|null
     */
    public function getFillsAmount()
    {
        return $this->container['fills_amount'];
    }

    /**
     * Sets fills_amount
     *
     * @param float[]|null $fills_amount Fills amount
     *
     * @return self
     */
    public function setFillsAmount($fills_amount)
    {

        if (is_null($fills_amount)) {
            throw new \InvalidArgumentException('non-nullable fills_amount cannot be null');
        }

        $this->container['fills_amount'] = $fills_amount;

        return $this;
    }

    /**
     * Gets created_time
     *
     * @return \DateTime|null
     */
    public function getCreatedTime()
    {
        return $this->container['created_time'];
    }

    /**
     * Sets created_time
     *
     * @param \DateTime|null $created_time Created time
     *
     * @return self
     */
    public function setCreatedTime($created_time)
    {

        if (is_null($created_time)) {
            throw new \InvalidArgumentException('non-nullable created_time cannot be null');
        }

        $this->container['created_time'] = $created_time;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


