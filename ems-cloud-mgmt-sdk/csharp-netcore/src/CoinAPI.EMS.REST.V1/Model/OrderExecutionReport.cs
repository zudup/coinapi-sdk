/*
 * EMS - REST API
 *
 * This section will provide necessary information about the `CoinAPI EMS REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:    * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)   * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)   * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540)     ### Endpoints <table>   <thead>     <tr>       <th>Deployment method</th>       <th>Environment</th>       <th>Url</th>     </tr>   </thead>   <tbody>     <tr>       <td>Managed Cloud</td>       <td>Production</td>       <td>Use <a href=\"#ems-docs-sh\">Managed Cloud REST API /v1/locations</a> to get specific endpoints to each server site where your deployments span</td>     </tr>     <tr>       <td>Managed Cloud</td>       <td>Sandbox</td>       <td><code>https://ems-gateway-aws-eu-central-1-dev.coinapi.io/</code></td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Production</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>     <tr>       <td>Self Hosted</td>       <td>Sandbox</td>       <td>IP Address of the <code>ems-gateway</code> container/excecutable in the closest server site to the caller location</td>     </tr>   </tbody> </table>  ### Authentication If the software is deployed as `Self-Hosted` then API do not require authentication as inside your infrastructure, your company is responsible for the security and access controls.  <br/><br/> If the software is deployed in our `Managed Cloud`, there are 2 methods for authenticating with us, you only need to use one:   1. Custom authorization header named `X-CoinAPI-Key` with the API Key  2. Query string parameter named `apikey` with the API Key  3. <a href=\"#certificate\">TLS Client Certificate</a> from the `Managed Cloud REST API` (/v1/certificate/pem endpoint) while establishing a TLS session with us.  #### Custom authorization header You can authorize by providing additional custom header named `X-CoinAPI-Key` and API key as its value. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY`, then the authorization header you should send to us will look like: <br/><br/> `X-CoinAPI-Key: 73034021-THIS-IS-SAMPLE-KEY` <aside class=\"success\">This method is recommended by us and you should use it in production environments.</aside> #### Query string authorization parameter You can authorize by providing an additional parameter named `apikey` with a value equal to your API key in the query string of your HTTP request. Assuming that your API key is `73034021-THIS-IS-SAMPLE-KEY` and that you want to request all balances, then your query string should look like this:  <br/><br/> `GET /v1/balances?apikey=73034021-THIS-IS-SAMPLE-KEY` <aside class=\"notice\">Query string method may be more practical for development activities.</aside> 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.IO;
using System.Runtime.Serialization;
using System.Text;
using System.Text.RegularExpressions;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using Newtonsoft.Json.Linq;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.EMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.EMS.REST.V1.Model
{
    /// <summary>
    /// The order execution report object.
    /// </summary>
    [DataContract(Name = "OrderExecutionReport")]
    public partial class OrderExecutionReport : IEquatable<OrderExecutionReport>, IValidatableObject
    {

        /// <summary>
        /// Gets or Sets Side
        /// </summary>
        [DataMember(Name = "side", IsRequired = true, EmitDefaultValue = true)]
        public OrdSide Side { get; set; }

        /// <summary>
        /// Gets or Sets OrderType
        /// </summary>
        [DataMember(Name = "order_type", IsRequired = true, EmitDefaultValue = true)]
        public OrdType OrderType { get; set; }

        /// <summary>
        /// Gets or Sets TimeInForce
        /// </summary>
        [DataMember(Name = "time_in_force", IsRequired = true, EmitDefaultValue = true)]
        public TimeInForce TimeInForce { get; set; }
        /// <summary>
        /// Defines ExecInst
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum ExecInstEnum
        {
            /// <summary>
            /// Enum MAKERORCANCEL for value: MAKER_OR_CANCEL
            /// </summary>
            [EnumMember(Value = "MAKER_OR_CANCEL")]
            MAKERORCANCEL = 1,

            /// <summary>
            /// Enum AUCTIONONLY for value: AUCTION_ONLY
            /// </summary>
            [EnumMember(Value = "AUCTION_ONLY")]
            AUCTIONONLY = 2,

            /// <summary>
            /// Enum INDICATIONOFINTEREST for value: INDICATION_OF_INTEREST
            /// </summary>
            [EnumMember(Value = "INDICATION_OF_INTEREST")]
            INDICATIONOFINTEREST = 3

        }



        /// <summary>
        /// Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; 
        /// </summary>
        /// <value>Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; </value>
        [DataMember(Name = "exec_inst", EmitDefaultValue = false)]
        public List<ExecInstEnum> ExecInst { get; set; }

        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name = "status", IsRequired = true, EmitDefaultValue = true)]
        public OrdStatus Status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderExecutionReport" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrderExecutionReport() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderExecutionReport" /> class.
        /// </summary>
        /// <param name="exchangeId">Exchange identifier used to identify the routing destination. (required).</param>
        /// <param name="clientOrderId">The unique identifier of the order assigned by the client. (required).</param>
        /// <param name="symbolIdExchange">Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order..</param>
        /// <param name="symbolIdCoinapi">CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order..</param>
        /// <param name="amountOrder">Order quantity. (required).</param>
        /// <param name="price">Order price. (required).</param>
        /// <param name="side">side (required).</param>
        /// <param name="orderType">orderType (required).</param>
        /// <param name="timeInForce">timeInForce (required).</param>
        /// <param name="expireTime">Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;..</param>
        /// <param name="execInst">Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#ems-order-params-exec\&quot;&gt;EMS / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; .</param>
        /// <param name="clientOrderIdFormatExchange">The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it. (required).</param>
        /// <param name="exchangeOrderId">Unique identifier of the order assigned by the exchange or executing system..</param>
        /// <param name="amountOpen">Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60; (required).</param>
        /// <param name="amountFilled">Total quantity filled. (required).</param>
        /// <param name="avgPx">Calculated average price of all fills on this order..</param>
        /// <param name="status">status (required).</param>
        /// <param name="statusHistory">Timestamped history of order status changes..</param>
        /// <param name="errorMessage">Error message..</param>
        /// <param name="fills">Relay fill information on working orders..</param>
        public OrderExecutionReport(string exchangeId = default(string), string clientOrderId = default(string), string symbolIdExchange = default(string), string symbolIdCoinapi = default(string), decimal amountOrder = default(decimal), decimal price = default(decimal), OrdSide side = default(OrdSide), OrdType orderType = default(OrdType), TimeInForce timeInForce = default(TimeInForce), DateTime expireTime = default(DateTime), List<ExecInstEnum> execInst = default(List<ExecInstEnum>), string clientOrderIdFormatExchange = default(string), string exchangeOrderId = default(string), decimal amountOpen = default(decimal), decimal amountFilled = default(decimal), decimal avgPx = default(decimal), OrdStatus status = default(OrdStatus), List<List<string>> statusHistory = default(List<List<string>>), string errorMessage = default(string), List<Fills> fills = default(List<Fills>))
        {
            // to ensure "exchangeId" is required (not null)
            if (exchangeId == null)
            {
                throw new ArgumentNullException("exchangeId is a required property for OrderExecutionReport and cannot be null");
            }
            this.ExchangeId = exchangeId;
            // to ensure "clientOrderId" is required (not null)
            if (clientOrderId == null)
            {
                throw new ArgumentNullException("clientOrderId is a required property for OrderExecutionReport and cannot be null");
            }
            this.ClientOrderId = clientOrderId;
            this.AmountOrder = amountOrder;
            this.Price = price;
            this.Side = side;
            this.OrderType = orderType;
            this.TimeInForce = timeInForce;
            // to ensure "clientOrderIdFormatExchange" is required (not null)
            if (clientOrderIdFormatExchange == null)
            {
                throw new ArgumentNullException("clientOrderIdFormatExchange is a required property for OrderExecutionReport and cannot be null");
            }
            this.ClientOrderIdFormatExchange = clientOrderIdFormatExchange;
            this.AmountOpen = amountOpen;
            this.AmountFilled = amountFilled;
            this.Status = status;
            this.SymbolIdExchange = symbolIdExchange;
            this.SymbolIdCoinapi = symbolIdCoinapi;
            this.ExpireTime = expireTime;
            this.ExecInst = execInst;
            this.ExchangeOrderId = exchangeOrderId;
            this.AvgPx = avgPx;
            this.StatusHistory = statusHistory;
            this.ErrorMessage = errorMessage;
            this.Fills = fills;
        }

        /// <summary>
        /// Exchange identifier used to identify the routing destination.
        /// </summary>
        /// <value>Exchange identifier used to identify the routing destination.</value>
        [DataMember(Name = "exchange_id", IsRequired = true, EmitDefaultValue = true)]
        public string ExchangeId { get; set; }

        /// <summary>
        /// The unique identifier of the order assigned by the client.
        /// </summary>
        /// <value>The unique identifier of the order assigned by the client.</value>
        [DataMember(Name = "client_order_id", IsRequired = true, EmitDefaultValue = true)]
        public string ClientOrderId { get; set; }

        /// <summary>
        /// Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
        /// </summary>
        /// <value>Exchange symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.</value>
        [DataMember(Name = "symbol_id_exchange", EmitDefaultValue = false)]
        public string SymbolIdExchange { get; set; }

        /// <summary>
        /// CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.
        /// </summary>
        /// <value>CoinAPI symbol. One of the properties (&#x60;symbol_id_exchange&#x60;, &#x60;symbol_id_coinapi&#x60;) is required to identify the market for the new order.</value>
        [DataMember(Name = "symbol_id_coinapi", EmitDefaultValue = false)]
        public string SymbolIdCoinapi { get; set; }

        /// <summary>
        /// Order quantity.
        /// </summary>
        /// <value>Order quantity.</value>
        [DataMember(Name = "amount_order", IsRequired = true, EmitDefaultValue = true)]
        public decimal AmountOrder { get; set; }

        /// <summary>
        /// Order price.
        /// </summary>
        /// <value>Order price.</value>
        [DataMember(Name = "price", IsRequired = true, EmitDefaultValue = true)]
        public decimal Price { get; set; }

        /// <summary>
        /// Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.
        /// </summary>
        /// <value>Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.</value>
        [DataMember(Name = "expire_time", EmitDefaultValue = false)]
        public DateTime ExpireTime { get; set; }

        /// <summary>
        /// The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
        /// </summary>
        /// <value>The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.</value>
        [DataMember(Name = "client_order_id_format_exchange", IsRequired = true, EmitDefaultValue = true)]
        public string ClientOrderIdFormatExchange { get; set; }

        /// <summary>
        /// Unique identifier of the order assigned by the exchange or executing system.
        /// </summary>
        /// <value>Unique identifier of the order assigned by the exchange or executing system.</value>
        [DataMember(Name = "exchange_order_id", EmitDefaultValue = false)]
        public string ExchangeOrderId { get; set; }

        /// <summary>
        /// Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;
        /// </summary>
        /// <value>Quantity open for further execution. &#x60;amount_open&#x60; &#x3D; &#x60;amount_order&#x60; - &#x60;amount_filled&#x60;</value>
        [DataMember(Name = "amount_open", IsRequired = true, EmitDefaultValue = true)]
        public decimal AmountOpen { get; set; }

        /// <summary>
        /// Total quantity filled.
        /// </summary>
        /// <value>Total quantity filled.</value>
        [DataMember(Name = "amount_filled", IsRequired = true, EmitDefaultValue = true)]
        public decimal AmountFilled { get; set; }

        /// <summary>
        /// Calculated average price of all fills on this order.
        /// </summary>
        /// <value>Calculated average price of all fills on this order.</value>
        [DataMember(Name = "avg_px", EmitDefaultValue = false)]
        public decimal AvgPx { get; set; }

        /// <summary>
        /// Timestamped history of order status changes.
        /// </summary>
        /// <value>Timestamped history of order status changes.</value>
        [DataMember(Name = "status_history", EmitDefaultValue = false)]
        public List<List<string>> StatusHistory { get; set; }

        /// <summary>
        /// Error message.
        /// </summary>
        /// <value>Error message.</value>
        [DataMember(Name = "error_message", EmitDefaultValue = false)]
        public string ErrorMessage { get; set; }

        /// <summary>
        /// Relay fill information on working orders.
        /// </summary>
        /// <value>Relay fill information on working orders.</value>
        [DataMember(Name = "fills", EmitDefaultValue = false)]
        public List<Fills> Fills { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("class OrderExecutionReport {\n");
            sb.Append("  ExchangeId: ").Append(ExchangeId).Append("\n");
            sb.Append("  ClientOrderId: ").Append(ClientOrderId).Append("\n");
            sb.Append("  SymbolIdExchange: ").Append(SymbolIdExchange).Append("\n");
            sb.Append("  SymbolIdCoinapi: ").Append(SymbolIdCoinapi).Append("\n");
            sb.Append("  AmountOrder: ").Append(AmountOrder).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  Side: ").Append(Side).Append("\n");
            sb.Append("  OrderType: ").Append(OrderType).Append("\n");
            sb.Append("  TimeInForce: ").Append(TimeInForce).Append("\n");
            sb.Append("  ExpireTime: ").Append(ExpireTime).Append("\n");
            sb.Append("  ExecInst: ").Append(ExecInst).Append("\n");
            sb.Append("  ClientOrderIdFormatExchange: ").Append(ClientOrderIdFormatExchange).Append("\n");
            sb.Append("  ExchangeOrderId: ").Append(ExchangeOrderId).Append("\n");
            sb.Append("  AmountOpen: ").Append(AmountOpen).Append("\n");
            sb.Append("  AmountFilled: ").Append(AmountFilled).Append("\n");
            sb.Append("  AvgPx: ").Append(AvgPx).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("  StatusHistory: ").Append(StatusHistory).Append("\n");
            sb.Append("  ErrorMessage: ").Append(ErrorMessage).Append("\n");
            sb.Append("  Fills: ").Append(Fills).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }

        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return Newtonsoft.Json.JsonConvert.SerializeObject(this, Newtonsoft.Json.Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as OrderExecutionReport);
        }

        /// <summary>
        /// Returns true if OrderExecutionReport instances are equal
        /// </summary>
        /// <param name="input">Instance of OrderExecutionReport to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrderExecutionReport input)
        {
            if (input == null)
            {
                return false;
            }
            return 
                (
                    this.ExchangeId == input.ExchangeId ||
                    (this.ExchangeId != null &&
                    this.ExchangeId.Equals(input.ExchangeId))
                ) && 
                (
                    this.ClientOrderId == input.ClientOrderId ||
                    (this.ClientOrderId != null &&
                    this.ClientOrderId.Equals(input.ClientOrderId))
                ) && 
                (
                    this.SymbolIdExchange == input.SymbolIdExchange ||
                    (this.SymbolIdExchange != null &&
                    this.SymbolIdExchange.Equals(input.SymbolIdExchange))
                ) && 
                (
                    this.SymbolIdCoinapi == input.SymbolIdCoinapi ||
                    (this.SymbolIdCoinapi != null &&
                    this.SymbolIdCoinapi.Equals(input.SymbolIdCoinapi))
                ) && 
                (
                    this.AmountOrder == input.AmountOrder ||
                    this.AmountOrder.Equals(input.AmountOrder)
                ) && 
                (
                    this.Price == input.Price ||
                    this.Price.Equals(input.Price)
                ) && 
                (
                    this.Side == input.Side ||
                    this.Side.Equals(input.Side)
                ) && 
                (
                    this.OrderType == input.OrderType ||
                    this.OrderType.Equals(input.OrderType)
                ) && 
                (
                    this.TimeInForce == input.TimeInForce ||
                    this.TimeInForce.Equals(input.TimeInForce)
                ) && 
                (
                    this.ExpireTime == input.ExpireTime ||
                    (this.ExpireTime != null &&
                    this.ExpireTime.Equals(input.ExpireTime))
                ) && 
                (
                    this.ExecInst == input.ExecInst ||
                    this.ExecInst.SequenceEqual(input.ExecInst)
                ) && 
                (
                    this.ClientOrderIdFormatExchange == input.ClientOrderIdFormatExchange ||
                    (this.ClientOrderIdFormatExchange != null &&
                    this.ClientOrderIdFormatExchange.Equals(input.ClientOrderIdFormatExchange))
                ) && 
                (
                    this.ExchangeOrderId == input.ExchangeOrderId ||
                    (this.ExchangeOrderId != null &&
                    this.ExchangeOrderId.Equals(input.ExchangeOrderId))
                ) && 
                (
                    this.AmountOpen == input.AmountOpen ||
                    this.AmountOpen.Equals(input.AmountOpen)
                ) && 
                (
                    this.AmountFilled == input.AmountFilled ||
                    this.AmountFilled.Equals(input.AmountFilled)
                ) && 
                (
                    this.AvgPx == input.AvgPx ||
                    this.AvgPx.Equals(input.AvgPx)
                ) && 
                (
                    this.Status == input.Status ||
                    this.Status.Equals(input.Status)
                ) && 
                (
                    this.StatusHistory == input.StatusHistory ||
                    this.StatusHistory != null &&
                    input.StatusHistory != null &&
                    this.StatusHistory.SequenceEqual(input.StatusHistory)
                ) && 
                (
                    this.ErrorMessage == input.ErrorMessage ||
                    (this.ErrorMessage != null &&
                    this.ErrorMessage.Equals(input.ErrorMessage))
                ) && 
                (
                    this.Fills == input.Fills ||
                    this.Fills != null &&
                    input.Fills != null &&
                    this.Fills.SequenceEqual(input.Fills)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ExchangeId != null)
                {
                    hashCode = (hashCode * 59) + this.ExchangeId.GetHashCode();
                }
                if (this.ClientOrderId != null)
                {
                    hashCode = (hashCode * 59) + this.ClientOrderId.GetHashCode();
                }
                if (this.SymbolIdExchange != null)
                {
                    hashCode = (hashCode * 59) + this.SymbolIdExchange.GetHashCode();
                }
                if (this.SymbolIdCoinapi != null)
                {
                    hashCode = (hashCode * 59) + this.SymbolIdCoinapi.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.AmountOrder.GetHashCode();
                hashCode = (hashCode * 59) + this.Price.GetHashCode();
                hashCode = (hashCode * 59) + this.Side.GetHashCode();
                hashCode = (hashCode * 59) + this.OrderType.GetHashCode();
                hashCode = (hashCode * 59) + this.TimeInForce.GetHashCode();
                if (this.ExpireTime != null)
                {
                    hashCode = (hashCode * 59) + this.ExpireTime.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.ExecInst.GetHashCode();
                if (this.ClientOrderIdFormatExchange != null)
                {
                    hashCode = (hashCode * 59) + this.ClientOrderIdFormatExchange.GetHashCode();
                }
                if (this.ExchangeOrderId != null)
                {
                    hashCode = (hashCode * 59) + this.ExchangeOrderId.GetHashCode();
                }
                hashCode = (hashCode * 59) + this.AmountOpen.GetHashCode();
                hashCode = (hashCode * 59) + this.AmountFilled.GetHashCode();
                hashCode = (hashCode * 59) + this.AvgPx.GetHashCode();
                hashCode = (hashCode * 59) + this.Status.GetHashCode();
                if (this.StatusHistory != null)
                {
                    hashCode = (hashCode * 59) + this.StatusHistory.GetHashCode();
                }
                if (this.ErrorMessage != null)
                {
                    hashCode = (hashCode * 59) + this.ErrorMessage.GetHashCode();
                }
                if (this.Fills != null)
                {
                    hashCode = (hashCode * 59) + this.Fills.GetHashCode();
                }
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        public IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
