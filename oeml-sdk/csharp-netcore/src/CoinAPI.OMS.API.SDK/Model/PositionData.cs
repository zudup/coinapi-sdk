/* 
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */


using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.OMS.API.SDK.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.API.SDK.Model
{
    /// <summary>
    /// The Position object.
    /// </summary>
    [DataContract]
    public partial class PositionData :  IEquatable<PositionData>, IValidatableObject
    {
        /// <summary>
        /// Gets or Sets Side
        /// </summary>
        [DataMember(Name="side", EmitDefaultValue=false)]
        public OrdSide? Side { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="PositionData" /> class.
        /// </summary>
        /// <param name="symbolIdExchange">Exchange symbol..</param>
        /// <param name="symbolIdCoinapi">CoinAPI symbol..</param>
        /// <param name="avgEntryPrice">Calculated average price of all fills on this position..</param>
        /// <param name="quantity">The current position quantity..</param>
        /// <param name="side">side.</param>
        /// <param name="unrealizedPnl">Unrealised profit or loss (PNL) of this position..</param>
        /// <param name="leverage">Leverage for this position reported by the exchange..</param>
        /// <param name="crossMargin">Is cross margin mode enable for this position?.</param>
        /// <param name="liquidationPrice">Liquidation price. If mark price will reach this value, the position will be liquidated..</param>
        /// <param name="rawData">rawData.</param>
        public PositionData(string symbolIdExchange = default(string), string symbolIdCoinapi = default(string), decimal avgEntryPrice = default(decimal), decimal quantity = default(decimal), OrdSide? side = default(OrdSide?), decimal unrealizedPnl = default(decimal), decimal leverage = default(decimal), bool crossMargin = default(bool), decimal liquidationPrice = default(decimal), Object rawData = default(Object))
        {
            this.SymbolIdExchange = symbolIdExchange;
            this.SymbolIdCoinapi = symbolIdCoinapi;
            this.AvgEntryPrice = avgEntryPrice;
            this.Quantity = quantity;
            this.Side = side;
            this.UnrealizedPnl = unrealizedPnl;
            this.Leverage = leverage;
            this.CrossMargin = crossMargin;
            this.LiquidationPrice = liquidationPrice;
            this.RawData = rawData;
        }
        
        /// <summary>
        /// Exchange symbol.
        /// </summary>
        /// <value>Exchange symbol.</value>
        [DataMember(Name="symbol_id_exchange", EmitDefaultValue=false)]
        public string SymbolIdExchange { get; set; }

        /// <summary>
        /// CoinAPI symbol.
        /// </summary>
        /// <value>CoinAPI symbol.</value>
        [DataMember(Name="symbol_id_coinapi", EmitDefaultValue=false)]
        public string SymbolIdCoinapi { get; set; }

        /// <summary>
        /// Calculated average price of all fills on this position.
        /// </summary>
        /// <value>Calculated average price of all fills on this position.</value>
        [DataMember(Name="avg_entry_price", EmitDefaultValue=false)]
        public decimal AvgEntryPrice { get; set; }

        /// <summary>
        /// The current position quantity.
        /// </summary>
        /// <value>The current position quantity.</value>
        [DataMember(Name="quantity", EmitDefaultValue=false)]
        public decimal Quantity { get; set; }

        /// <summary>
        /// Unrealised profit or loss (PNL) of this position.
        /// </summary>
        /// <value>Unrealised profit or loss (PNL) of this position.</value>
        [DataMember(Name="unrealized_pnl", EmitDefaultValue=false)]
        public decimal UnrealizedPnl { get; set; }

        /// <summary>
        /// Leverage for this position reported by the exchange.
        /// </summary>
        /// <value>Leverage for this position reported by the exchange.</value>
        [DataMember(Name="leverage", EmitDefaultValue=false)]
        public decimal Leverage { get; set; }

        /// <summary>
        /// Is cross margin mode enable for this position?
        /// </summary>
        /// <value>Is cross margin mode enable for this position?</value>
        [DataMember(Name="cross_margin", EmitDefaultValue=false)]
        public bool CrossMargin { get; set; }

        /// <summary>
        /// Liquidation price. If mark price will reach this value, the position will be liquidated.
        /// </summary>
        /// <value>Liquidation price. If mark price will reach this value, the position will be liquidated.</value>
        [DataMember(Name="liquidation_price", EmitDefaultValue=false)]
        public decimal LiquidationPrice { get; set; }

        /// <summary>
        /// Gets or Sets RawData
        /// </summary>
        [DataMember(Name="raw_data", EmitDefaultValue=false)]
        public Object RawData { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class PositionData {\n");
            sb.Append("  SymbolIdExchange: ").Append(SymbolIdExchange).Append("\n");
            sb.Append("  SymbolIdCoinapi: ").Append(SymbolIdCoinapi).Append("\n");
            sb.Append("  AvgEntryPrice: ").Append(AvgEntryPrice).Append("\n");
            sb.Append("  Quantity: ").Append(Quantity).Append("\n");
            sb.Append("  Side: ").Append(Side).Append("\n");
            sb.Append("  UnrealizedPnl: ").Append(UnrealizedPnl).Append("\n");
            sb.Append("  Leverage: ").Append(Leverage).Append("\n");
            sb.Append("  CrossMargin: ").Append(CrossMargin).Append("\n");
            sb.Append("  LiquidationPrice: ").Append(LiquidationPrice).Append("\n");
            sb.Append("  RawData: ").Append(RawData).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as PositionData);
        }

        /// <summary>
        /// Returns true if PositionData instances are equal
        /// </summary>
        /// <param name="input">Instance of PositionData to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(PositionData input)
        {
            if (input == null)
                return false;

            return 
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
                    this.AvgEntryPrice == input.AvgEntryPrice ||
                    this.AvgEntryPrice.Equals(input.AvgEntryPrice)
                ) && 
                (
                    this.Quantity == input.Quantity ||
                    this.Quantity.Equals(input.Quantity)
                ) && 
                (
                    this.Side == input.Side ||
                    this.Side.Equals(input.Side)
                ) && 
                (
                    this.UnrealizedPnl == input.UnrealizedPnl ||
                    this.UnrealizedPnl.Equals(input.UnrealizedPnl)
                ) && 
                (
                    this.Leverage == input.Leverage ||
                    this.Leverage.Equals(input.Leverage)
                ) && 
                (
                    this.CrossMargin == input.CrossMargin ||
                    this.CrossMargin.Equals(input.CrossMargin)
                ) && 
                (
                    this.LiquidationPrice == input.LiquidationPrice ||
                    this.LiquidationPrice.Equals(input.LiquidationPrice)
                ) && 
                (
                    this.RawData == input.RawData ||
                    (this.RawData != null &&
                    this.RawData.Equals(input.RawData))
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
                if (this.SymbolIdExchange != null)
                    hashCode = hashCode * 59 + this.SymbolIdExchange.GetHashCode();
                if (this.SymbolIdCoinapi != null)
                    hashCode = hashCode * 59 + this.SymbolIdCoinapi.GetHashCode();
                hashCode = hashCode * 59 + this.AvgEntryPrice.GetHashCode();
                hashCode = hashCode * 59 + this.Quantity.GetHashCode();
                hashCode = hashCode * 59 + this.Side.GetHashCode();
                hashCode = hashCode * 59 + this.UnrealizedPnl.GetHashCode();
                hashCode = hashCode * 59 + this.Leverage.GetHashCode();
                hashCode = hashCode * 59 + this.CrossMargin.GetHashCode();
                hashCode = hashCode * 59 + this.LiquidationPrice.GetHashCode();
                if (this.RawData != null)
                    hashCode = hashCode * 59 + this.RawData.GetHashCode();
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