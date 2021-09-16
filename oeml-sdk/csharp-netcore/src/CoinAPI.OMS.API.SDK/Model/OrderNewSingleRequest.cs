/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. <br/> This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       <br/><br/> Implemented Standards:   * [HTTP1.0](https://datatracker.ietf.org/doc/html/rfc1945)  * [HTTP1.1](https://datatracker.ietf.org/doc/html/rfc2616)  * [HTTP2.0](https://datatracker.ietf.org/doc/html/rfc7540) 
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
using OpenAPIDateConverter = CoinAPI.OMS.API.SDK.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.API.SDK.Model
{
    /// <summary>
    /// The new order message.
    /// </summary>
    [DataContract(Name = "OrderNewSingleRequest")]
    public partial class OrderNewSingleRequest : IEquatable<OrderNewSingleRequest>, IValidatableObject
    {

        /// <summary>
        /// Gets or Sets Side
        /// </summary>
        [DataMember(Name = "side", IsRequired = true, EmitDefaultValue = false)]
        public OrdSide Side { get; set; }

        /// <summary>
        /// Gets or Sets OrderType
        /// </summary>
        [DataMember(Name = "order_type", IsRequired = true, EmitDefaultValue = false)]
        public OrdType OrderType { get; set; }

        /// <summary>
        /// Gets or Sets TimeInForce
        /// </summary>
        [DataMember(Name = "time_in_force", IsRequired = true, EmitDefaultValue = false)]
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
        /// Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; 
        /// </summary>
        /// <value>Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; </value>
        [DataMember(Name = "exec_inst", EmitDefaultValue = false)]
        public List<ExecInstEnum> ExecInst { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderNewSingleRequest" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected OrderNewSingleRequest() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderNewSingleRequest" /> class.
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
        /// <param name="execInst">Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt; .</param>
        public OrderNewSingleRequest(string exchangeId = default(string), string clientOrderId = default(string), string symbolIdExchange = default(string), string symbolIdCoinapi = default(string), decimal amountOrder = default(decimal), decimal price = default(decimal), OrdSide side = default(OrdSide), OrdType orderType = default(OrdType), TimeInForce timeInForce = default(TimeInForce), DateTime expireTime = default(DateTime), List<ExecInstEnum> execInst = default(List<ExecInstEnum>))
        {
            // to ensure "exchangeId" is required (not null)
            this.ExchangeId = exchangeId ?? throw new ArgumentNullException("exchangeId is a required property for OrderNewSingleRequest and cannot be null");
            // to ensure "clientOrderId" is required (not null)
            this.ClientOrderId = clientOrderId ?? throw new ArgumentNullException("clientOrderId is a required property for OrderNewSingleRequest and cannot be null");
            this.AmountOrder = amountOrder;
            this.Price = price;
            this.Side = side;
            this.OrderType = orderType;
            this.TimeInForce = timeInForce;
            this.SymbolIdExchange = symbolIdExchange;
            this.SymbolIdCoinapi = symbolIdCoinapi;
            this.ExpireTime = expireTime;
            this.ExecInst = execInst;
        }

        /// <summary>
        /// Exchange identifier used to identify the routing destination.
        /// </summary>
        /// <value>Exchange identifier used to identify the routing destination.</value>
        [DataMember(Name = "exchange_id", IsRequired = true, EmitDefaultValue = false)]
        public string ExchangeId { get; set; }

        /// <summary>
        /// The unique identifier of the order assigned by the client.
        /// </summary>
        /// <value>The unique identifier of the order assigned by the client.</value>
        [DataMember(Name = "client_order_id", IsRequired = true, EmitDefaultValue = false)]
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
        [DataMember(Name = "amount_order", IsRequired = true, EmitDefaultValue = false)]
        public decimal AmountOrder { get; set; }

        /// <summary>
        /// Order price.
        /// </summary>
        /// <value>Order price.</value>
        [DataMember(Name = "price", IsRequired = true, EmitDefaultValue = false)]
        public decimal Price { get; set; }

        /// <summary>
        /// Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.
        /// </summary>
        /// <value>Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.</value>
        [DataMember(Name = "expire_time", EmitDefaultValue = false)]
        public DateTime ExpireTime { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class OrderNewSingleRequest {\n");
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
            return this.Equals(input as OrderNewSingleRequest);
        }

        /// <summary>
        /// Returns true if OrderNewSingleRequest instances are equal
        /// </summary>
        /// <param name="input">Instance of OrderNewSingleRequest to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(OrderNewSingleRequest input)
        {
            if (input == null)
                return false;

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
                    hashCode = hashCode * 59 + this.ExchangeId.GetHashCode();
                if (this.ClientOrderId != null)
                    hashCode = hashCode * 59 + this.ClientOrderId.GetHashCode();
                if (this.SymbolIdExchange != null)
                    hashCode = hashCode * 59 + this.SymbolIdExchange.GetHashCode();
                if (this.SymbolIdCoinapi != null)
                    hashCode = hashCode * 59 + this.SymbolIdCoinapi.GetHashCode();
                hashCode = hashCode * 59 + this.AmountOrder.GetHashCode();
                hashCode = hashCode * 59 + this.Price.GetHashCode();
                hashCode = hashCode * 59 + this.Side.GetHashCode();
                hashCode = hashCode * 59 + this.OrderType.GetHashCode();
                hashCode = hashCode * 59 + this.TimeInForce.GetHashCode();
                if (this.ExpireTime != null)
                    hashCode = hashCode * 59 + this.ExpireTime.GetHashCode();
                hashCode = hashCode * 59 + this.ExecInst.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}
